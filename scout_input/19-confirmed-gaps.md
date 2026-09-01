# Confirmed gaps — what would have to be built

Scouted 2026-08-24. Deliberately unsoftened.

## HARD GAP — nothing exists, and the prerequisite is unverified

### usecure
- Official MCP registry: **count 0**, both `search=usecure` and `search=usecure&version=latest`. [CS: VERIFIED — queried directly]
- No GitHub repo found. [CS: HIGH]
- Not in `Servosity/msp-skills` (65 connectors). [CS: VERIFIED]
- Not in `wyre-technology` (of ~50 repos enumerated). [CS: MEDIUM]
- **No public API documentation found.** Only `help.usecure.io` end-user articles. No developer portal, no Swagger, no REST reference. [CS: MEDIUM]

**Build-from-scratch, AND the first unknown is not the MCP layer.** Open question for the spec: *does usecure expose a public API?* Until answered this is `[?]`, not `[A]`. Resolve by contacting usecure or checking the MSP partner portal.

Category substitute if the vendor is negotiable: **KnowBe4** connector exists in `Servosity/msp-skills`. [CS: VERIFIED]

*(Cross-reference: `scout_input/03-usecure-schema-CONFIRMED-GAP.md` independently found the API is GraphQL, beta, keys by request only. The two scouts agree.)*

---

## SOFT GAP — MCP exists but doesn't cover what's needed

### Cove Data Protection
- No N-able-official MCP coverage confirmed. N-able's MCP docs name N-central and N-sight; Cove is not named. [CS: VERIFIED — absence in the doc read]
- Community: `Servosity` cove v0.1.4 (read-oriented). [CS: VERIFIED]
- Commercial: Tech Centre. [WOBBLY]
- **Cove HAS an OpenAPI spec on N-able's developer portal.** [CS: HIGH] → OpenAPI-to-MCP bridge is the credible path. See file 20.

### Inforcer
- `io.github.wyre-technology/inforcer-mcp` exists and is maintained, **but read-only**. [CS: VERIFIED]
- If the prototype needs **drift remediation / policy write-back**, that is not in this server and would be built. [CS: VERIFIED]
- Underlying REST API is real (community PowerShell module, API-key auth via `Inf-Api-Key`, region-scoped). [CS: HIGH]

### Microsoft 365 — official server, two hard limits
1. **Delegated permissions only.** Verbatim: "App-only permissions or app-only workflows aren't supported." No service-principal/daemon pattern. [CS: VERIFIED]
2. **All published scopes are read-only** (`MCP.*.Read.*`), Entra/directory/security-shaped — no mail, files, or Teams content. [CS: VERIFIED]

If the prototype needs write, or app-only multi-tenant, or mailbox/SharePoint content: **Lokka** (write-capable, community, Microsoft-employee-authored but not official) or a custom Graph server. [CS: HIGH]

### Datto / Kaseya
- No vendor server. Community only. [CS: MEDIUM]
- Datto SaaS Protection: no MCP server found at all. [CS: MEDIUM]

---

## NOT A GAP — use what exists

| Need | Use | Status |
|---|---|---|
| N-central / N-sight | `https://api.n-able.com/mcp-read-only` | Vendor-official, GA [CS: VERIFIED] |
| Veeam | `github.com/veeam-ai/veeam-mcp-server` | Vendor-official [CS: HIGH] |
| M365 identity/security read | `https://mcp.svc.cloud.microsoft/enterprise` | Vendor-official [CS: VERIFIED] |
| M365 write / broad Graph | Lokka (`merill/lokka`) | Community, strong [CS: HIGH] |
| HaloPSA | Halo's own MCP endpoint (verify) or Servosity halopsa-mcp 0.2.12 | Mixed [CS: MEDIUM] |

---

## What was NOT verified — do not let these become claims
- Whether N-able's `/mcp` endpoint reaches Cove data. [CS: UNKNOWN]
- N-able's full MCP tool inventory — lives at `developer.n-able.com/gql/docs/mcp-capabilities`, not fetched. [CS: UNKNOWN]
- Whether ANY `wyre-technology` server runs correctly. README-level read only, one repo. [CS: UNKNOWN]
- Whether the Halo first-party MCP endpoint currently works with Claude — one unattributed source claims an OAuth failure. [CS: LOW]
- N-able MCP pricing / whether included in existing licensing. [CS: UNKNOWN]
- Veeam MCP server licensing requirements. [CS: UNKNOWN]
- Whether Smithery lists anything the other registries don't. [CS: UNKNOWN]
