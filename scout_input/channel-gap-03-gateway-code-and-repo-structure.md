# ACP repo — gateway/auth code + apps/ directory structure, re-verified 2026-09-01

Read directly from `acp-core-main-3/` under the project root. All Read attempts and their exact results logged below — this is the re-verification the task asked for, not a repeat of the 2026-08-12 claim. [CS: VERIFIED — direct Read tool calls, this pass, 2026-09-01]

---

## Directory structure check

| Path attempted | Result |
|---|---|
| `acp-core-main-3/apps` | EISDIR (exists, is a directory) |
| `acp-core-main-3/apps/backend` | EISDIR (exists, is a directory) |
| `acp-core-main-3/apps/frontend` | "File does not exist" (absent) |
| `acp-core-main-3/apps/web` | "File does not exist" (absent) |
| `acp-core-main-3/apps/fake-mcps` | "File does not exist" (absent) |

**Finding:** `apps/` contains only `backend` as an on-disk directory in this static snapshot. No frontend directory exists anywhere under `apps/`. This independently re-confirms the 2026-08-12 finding rather than repeating it on trust.

**Discrepancy worth naming:** `acp-core-main-3/CLAUDE.md` states in prose: *"apps/fake-mcps is planned but empty."* An empty-but-existing directory would still trigger EISDIR on Read (same as `apps/backend` did); instead Read reported "File does not exist" for `apps/fake-mcps`, which normally means no directory node exists at all. Two readings: (a) this static download simply never materialized the empty placeholder directory that exists in the live repo, or (b) "planned but empty" is aspirational documentation, not a directory actually committed anywhere. Cannot resolve which from this local copy alone — this is exactly the kind of freshness gap CHORES.md's own open item ("find a reliable way to keep the local ACP repo copy fresh, or a way to just view the live one") already names. [CS: LOW — cannot verify against live repo from this environment]

---

## `app/mcp/gateway/sync.py` — daily tool-discovery sync (full file, 113 lines)

```python
"""Background MCP tool discovery — daily catalogue refresh.

Runs as an asyncio task spawned from app lifespan (next to the existing
periodic credential refresh). For each active MCP server, picks a viable
credential and calls `MCPGateway.refresh_server_tools` to repopulate
`MCPServer.discovered_tools`. Admin denylist (`admin_disabled_tools`) is
unaffected — discovery never overrides policy.

Failures are logged and swallowed per server so one broken server cannot
prevent others from syncing.
"""

import asyncio
import logging

from sqlalchemy import select
from sqlalchemy.ext.asyncio import AsyncSession

from app.database.session import async_session_maker
from app.mcp.gateway.sessions import get_gateway
from app.mcp.models import MCPCredential, MCPInstance, MCPServer

logger = logging.getLogger(__name__)


DEFAULT_INTERVAL_SECONDS = 24 * 60 * 60  # daily


async def _pick_instance_for_auth(
    db: AsyncSession, server: MCPServer
) -> MCPInstance | None:
    """Pick an MCPInstance whose stored credentials we can use for tool sync.

    Strategy: most recently updated credential row. If the server doesn't
    require auth or no credentials exist, returns None (caller will attempt
    an unauthenticated connection — which will succeed for `auth_type==none`
    and fail otherwise).
    """
    if getattr(server, "auth_type", "none") == "none":
        return None
    result = await db.execute(
        select(MCPCredential.instance_id)
        .where(MCPCredential.server_id == server.id)
        .order_by(MCPCredential.created_at.desc().nulls_last())
        .limit(1)
    )
    instance_id = result.scalar_one_or_none()
    if instance_id is None:
        return None
    return await db.get(MCPInstance, instance_id)


async def refresh_one_server(db: AsyncSession, server: MCPServer) -> bool:
    """Refresh discovered_tools for a single server. Commits on success.

    Returns True on success, False on any error (logged).
    """
    try:
        instance = await _pick_instance_for_auth(db, server)
        await get_gateway().refresh_server_tools(
            db, server, instance_for_auth=instance
        )
        await db.commit()
        return True
    except Exception:
        logger.warning(
            "MCP tool sync failed for server %s", server.name, exc_info=True
        )
        await db.rollback()
        return False


async def run_full_sync() -> tuple[int, int]:
    """Iterate every active MCP server and refresh its tool catalogue.

    Returns (successful_count, total_count).
    """
    async with async_session_maker() as db:
        result = await db.execute(
            select(MCPServer).where(MCPServer.is_active.is_(True))
        )
        servers = list(result.scalars().all())

    successful = 0
    for server in servers:
        async with async_session_maker() as db:
            # Re-attach a fresh session per server so a rollback on one
            # doesn't poison the rest.
            attached = await db.get(MCPServer, server.id)
            if attached is None:
                continue
            if await refresh_one_server(db, attached):
                successful += 1
    return successful, len(servers)


async def periodic_tool_sync(interval_seconds: float = DEFAULT_INTERVAL_SECONDS) -> None:
    """Long-running task: refresh every active server's tool catalogue daily.

    Sleeps `interval_seconds` between full passes. Errors in a single pass
    are logged but do not break the loop.
    """
    while True:
        await asyncio.sleep(interval_seconds)
        try:
            successful, total = await run_full_sync()
            logger.info(
                "MCP tool sync complete: %d/%d servers refreshed",
                successful,
                total,
            )
        except Exception:
            logger.warning("MCP tool sync pass crashed", exc_info=True)
```

---

## `app/mcp/encryption.py` — envelope encryption (full file, 91 lines)

```python
"""Envelope encryption service — KMS in production, local AES fallback for dev."""

import hashlib
import os
import secrets

from cryptography.hazmat.primitives.ciphers.aead import AESGCM

from app.aws.kms import KMSClient
from app.config import get_settings


class EncryptionService:
    """Encrypt/decrypt using AES-256-GCM envelope encryption.

    Production: AWS KMS generates and decrypts data keys.
    Dev/testing: derives a data key from ENCRYPTION_KEY setting.
    """

    def __init__(self) -> None:
        settings = get_settings()
        self._use_kms = bool(settings.KMS_KEY_ID) and settings.ENVIRONMENT not in (
            "local",
            "testing",
        )
        if self._use_kms:
            self._kms = KMSClient()
            self._kms_key_id = settings.KMS_KEY_ID
        else:
            # No fallback to JWT_SECRET_KEY: reusing the auth signing secret
            # as the data-encryption key would couple two unrelated trust
            # boundaries.
            if not settings.ENCRYPTION_KEY:
                raise RuntimeError("ENCRYPTION_KEY must be set when KMS_KEY_ID is not configured")
            self._local_key = hashlib.sha256(settings.ENCRYPTION_KEY.encode()).digest()

    async def encrypt(self, plaintext: bytes) -> tuple[bytes, bytes]:
        """Encrypt plaintext. Returns (ciphertext, encrypted_data_key)."""
        if self._use_kms:
            return await self._kms_encrypt(plaintext)
        return self._local_encrypt(plaintext)

    async def decrypt(self, ciphertext: bytes, encrypted_key: bytes) -> bytes:
        """Decrypt ciphertext using the encrypted data key."""
        if self._use_kms:
            return await self._kms_decrypt(ciphertext, encrypted_key)
        return self._local_decrypt(ciphertext, encrypted_key)

    async def _kms_encrypt(self, plaintext: bytes) -> tuple[bytes, bytes]:
        data_key, encrypted_data_key = await self._kms.generate_data_key(
            self._kms_key_id
        )

        nonce = os.urandom(12)
        aesgcm = AESGCM(data_key)
        ciphertext = nonce + aesgcm.encrypt(nonce, plaintext, None)

        data_key = b"\x00" * len(data_key)  # noqa: F841

        return ciphertext, encrypted_data_key

    async def _kms_decrypt(self, ciphertext: bytes, encrypted_key: bytes) -> bytes:
        data_key = await self._kms.decrypt_data_key(encrypted_key)

        nonce = ciphertext[:12]
        aesgcm = AESGCM(data_key)
        plaintext = aesgcm.decrypt(nonce, ciphertext[12:], None)

        data_key = b"\x00" * len(data_key)  # noqa: F841
        return plaintext

    def _local_encrypt(self, plaintext: bytes) -> tuple[bytes, bytes]:
        data_key = secrets.token_bytes(32)
        nonce_outer = os.urandom(12)
        aesgcm_outer = AESGCM(self._local_key)
        encrypted_data_key = nonce_outer + aesgcm_outer.encrypt(nonce_outer, data_key, None)

        nonce_inner = os.urandom(12)
        aesgcm_inner = AESGCM(data_key)
        ciphertext = nonce_inner + aesgcm_inner.encrypt(nonce_inner, plaintext, None)

        return ciphertext, encrypted_data_key

    def _local_decrypt(self, ciphertext: bytes, encrypted_key: bytes) -> bytes:
        nonce_outer = encrypted_key[:12]
        aesgcm_outer = AESGCM(self._local_key)
        data_key = aesgcm_outer.decrypt(nonce_outer, encrypted_key[12:], None)

        nonce_inner = ciphertext[:12]
        aesgcm_inner = AESGCM(data_key)
        return aesgcm_inner.decrypt(nonce_inner, ciphertext[12:], None)
```

---

## `app/mcp/gateway/auth/providers.py` — auth provider classes (full file, 376 lines)

```python
"""MCP auth providers — one class per ``auth_type``, plus their shared base.

``MCPAuthProvider`` owns credential storage (envelope-encrypted via
``EncryptionService``); each subclass only decides what HTTP headers to attach
to the MCP transport. The ``auth_type`` → class mapping lives in this
package's ``__init__``.
"""

import base64
import json
import logging
import uuid as _uuid
from abc import ABC, abstractmethod
from datetime import UTC, datetime, timedelta

import httpx
from sqlalchemy import delete, select
from sqlalchemy.ext.asyncio import AsyncSession

from app.mcp.encryption import EncryptionService
from app.mcp.gateway.auth.url_safety import assert_safe_outbound_url
from app.mcp.models import MCPCredential, MCPInstance, MCPServer

logger = logging.getLogger(__name__)

REFRESH_BUFFER = timedelta(minutes=5)


def _to_uuid(value: str | _uuid.UUID) -> _uuid.UUID:
    """Coerce a string or UUID to a UUID object."""
    if isinstance(value, _uuid.UUID):
        return value
    return _uuid.UUID(value)


class MCPAuthProvider(ABC):
    """Base class that every MCP auth provider must implement."""

    @abstractmethod
    def get_field_template(self) -> list[dict]:
        """Return the credential fields the UI should render for this auth type.

        Each dict has at minimum: {"name": str, "label": str, "type": str, "required": bool}.
        """

    @abstractmethod
    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        """Build HTTP headers to attach to the MCP transport for authentication."""

    async def store_credentials(
        self,
        db: AsyncSession,
        instance_id: str,
        credentials: dict,
    ) -> MCPCredential:
        """Encrypt *credentials* and upsert an MCPCredential row."""
        enc = EncryptionService()
        plaintext = json.dumps(credentials).encode()
        encrypted_data, encrypted_key = await enc.encrypt(plaintext)

        iid = _to_uuid(instance_id)

        result = await db.execute(
            select(MCPCredential).where(
                MCPCredential.instance_id == iid,
            )
        )
        existing: MCPCredential | None = result.scalar_one_or_none()

        if existing:
            existing.encrypted_data = encrypted_data
            existing.encrypted_key = encrypted_key
            await db.flush()
            return existing

        # Resolve server_id from the instance so MCPCredential.server_id (NOT NULL) is set.
        inst_result = await db.execute(
            select(MCPInstance).where(MCPInstance.id == iid)
        )
        instance_row: MCPInstance | None = inst_result.scalar_one_or_none()
        server_id = instance_row.server_id if instance_row is not None else None

        cred = MCPCredential(
            instance_id=iid,
            server_id=server_id,
            encrypted_data=encrypted_data,
            encrypted_key=encrypted_key,
        )
        db.add(cred)
        await db.flush()
        return cred

    async def get_decrypted_credentials(
        self,
        db: AsyncSession,
        instance_id: str,
    ) -> dict | None:
        """Read and decrypt the instance's credentials."""
        iid = _to_uuid(instance_id)

        result = await db.execute(
            select(MCPCredential).where(
                MCPCredential.instance_id == iid,
            )
        )
        cred: MCPCredential | None = result.scalar_one_or_none()
        if cred is None:
            return None

        enc = EncryptionService()
        plaintext = await enc.decrypt(cred.encrypted_data, cred.encrypted_key)
        return json.loads(plaintext.decode())

    async def delete_credentials(
        self,
        db: AsyncSession,
        instance_id: str,
    ) -> None:
        """Remove the instance's credential row."""
        iid = _to_uuid(instance_id)

        await db.execute(
            delete(MCPCredential).where(
                MCPCredential.instance_id == iid,
            )
        )
        await db.flush()

    async def on_disconnect(
        self,
        db: AsyncSession,
        instance_id: str,
    ) -> None:
        """Hook called when an instance disconnects from a server."""
        await self.delete_credentials(db, instance_id)


class NoneProvider(MCPAuthProvider):
    """No authentication required."""

    def get_field_template(self) -> list[dict]:
        return []

    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        return {}


class ApiKeyProvider(MCPAuthProvider):
    """Authenticate via an API key sent in a configurable header."""

    def get_field_template(self) -> list[dict]:
        return [
            {
                "name": "api_key",
                "label": "API Key",
                "type": "password",
                "required": True,
            },
        ]

    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        creds = await self.get_decrypted_credentials(db, instance_id)
        if not creds:
            return {}

        auth_config = server.auth_config or {}
        header_name = auth_config.get("header_name", "X-API-Key")
        prefix = auth_config.get("prefix", "")
        api_key = creds.get("api_key", "")

        value = f"{prefix}{api_key}" if prefix else api_key
        return {header_name: value}


class BasicProvider(MCPAuthProvider):
    """Authenticate via HTTP Basic (username + password)."""

    def get_field_template(self) -> list[dict]:
        return [
            {
                "name": "username",
                "label": "Username",
                "type": "text",
                "required": True,
            },
            {
                "name": "password",
                "label": "Password",
                "type": "password",
                "required": True,
            },
        ]

    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        creds = await self.get_decrypted_credentials(db, instance_id)
        if not creds:
            return {}

        username = creds.get("username", "")
        password = creds.get("password", "")
        token = base64.b64encode(f"{username}:{password}".encode()).decode()
        return {"Authorization": f"Basic {token}"}


class HeaderProvider(MCPAuthProvider):
    """Merge admin-locked header values with instance-supplied credentials."""

    def get_field_template(self) -> list[dict]:
        return []

    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        auth_config = server.auth_config or {}
        headers: dict[str, str] = {}

        for field in auth_config.get("fields", []):
            if field.get("locked") and field.get("value"):
                headers[field["key"]] = field["value"]

        creds = await self.get_decrypted_credentials(db, instance_id)
        if creds:
            for field in auth_config.get("fields", []):
                if not field.get("locked") and field["key"] in creds:
                    headers[field["key"]] = creds[field["key"]]

        return headers


class OAuthProvider(MCPAuthProvider):
    """OAuth 2.0 provider with automatic token refresh."""

    def get_field_template(self) -> list[dict]:
        return []

    async def build_transport_headers(
        self,
        db: AsyncSession,
        instance_id: str,
        server: MCPServer,
    ) -> dict[str, str]:
        creds = await self.get_decrypted_credentials(db, instance_id)
        if not creds:
            return {}

        access_token = creds.get("access_token", "")
        if not access_token:
            return {}

        expires_at_str = creds.get("expires_at")
        if expires_at_str:
            try:
                expires_at = datetime.fromisoformat(expires_at_str)
                if expires_at < datetime.now(UTC) + REFRESH_BUFFER:
                    refreshed = await self._refresh_token(creds)
                    if refreshed:
                        await self.store_credentials(db, instance_id, refreshed)
                        access_token = refreshed["access_token"]
            except Exception:
                logger.warning(
                    "Token refresh failed for instance %s on %s, using existing token",
                    instance_id,
                    server.name,
                    exc_info=True,
                )

        return {"Authorization": f"Bearer {access_token}"}

    async def _refresh_token(self, creds: dict) -> dict | None:
        """Exchange refresh_token for new access_token."""
        refresh_token = creds.get("refresh_token")
        token_url = creds.get("token_url")
        client_id = creds.get("client_id")

        if not refresh_token or not token_url:
            logger.warning("Missing refresh_token or token_url, cannot refresh")
            return None

        try:
            assert_safe_outbound_url(token_url)
        except ValueError as exc:
            logger.warning("Refusing refresh POST to unsafe token_url %s: %s", token_url, exc)
            return None

        client_secret = creds.get("client_secret")

        data: dict[str, str] = {
            "grant_type": "refresh_token",
            "refresh_token": refresh_token,
        }
        if client_id:
            data["client_id"] = client_id
        if client_secret:
            data["client_secret"] = client_secret

        # Bounded so a hung token endpoint can't stall stream start (this runs
        # during acquire_session on the request path).
        async with httpx.AsyncClient(timeout=10.0) as client:
            resp = await client.post(token_url, data=data)

        if resp.status_code != 200:
            logger.warning("Token refresh returned %s: %s", resp.status_code, resp.text)
            return None

        token_data = resp.json()
        new_creds = {**creds}
        new_creds["access_token"] = token_data["access_token"]
        if "refresh_token" in token_data:
            new_creds["refresh_token"] = token_data["refresh_token"]
        if "expires_in" in token_data:
            new_creds["expires_at"] = (
                datetime.now(UTC) + timedelta(seconds=token_data["expires_in"])
            ).isoformat()

        return new_creds

    async def on_disconnect(
        self,
        db: AsyncSession,
        instance_id: str,
    ) -> None:
        """Attempt token revocation, then delete credentials."""
        creds = await self.get_decrypted_credentials(db, instance_id)
        if creds:
            await self._try_revoke(creds)
        await self.delete_credentials(db, instance_id)

    async def _try_revoke(self, creds: dict) -> None:
        """Best-effort token revocation."""
        revocation_url = creds.get("revocation_url")
        access_token = creds.get("access_token")
        if not revocation_url or not access_token:
            return

        try:
            assert_safe_outbound_url(revocation_url)
        except ValueError as exc:
            logger.warning(
                "Refusing revocation POST to unsafe revocation_url %s: %s",
                revocation_url,
                exc,
            )
            return

        try:
            async with httpx.AsyncClient() as client:
                await client.post(
                    revocation_url,
                    data={"token": access_token},
                    timeout=10.0,
                )
        except Exception:
            logger.warning("Token revocation failed", exc_info=True)
```

**Read summary — what this code confirms:** this is entirely inbound-direction plumbing (external tool servers → agents: auth, credential encryption, tool discovery). No outbound delivery mechanism (email send, portal render, SMS send, PSA-ticket-write) exists anywhere in these three files or the directory they live in. This matches and extends the blueprint's Product-System finding (§15) — the same directory is real Channel-adjacent infrastructure (it's how a future channel would authenticate to pull/push data) but is not itself a channel.
