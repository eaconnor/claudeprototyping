# N-able — OFFICIAL MCP server EXISTS

Scouted 2026-08-24. Strongest source in this scout.

## Primary source
`https://developer.n-able.com/gql/docs/mcp` — N-able's own developer portal. [CS: VERIFIED — fetched directly]
`https://developer.n-able.com/gql/docs/n-able-mcp-first-30-minutes` — quickstart. [CS: VERIFIED — fetched directly]

## What it is
"N-able MCP lets you connect AI tools such as Claude, GitHub Copilot, and Gemini directly to your N-able environment." Built on the **N-able GraphQL API** — not on the per-product REST APIs. [CS: VERIFIED]

## Endpoints — three, verbatim from docs
| Endpoint | Access |
|---|---|
| `https://api.n-able.com/mcp` | "Full read and write access across all connected N-able products" |
| `https://api.n-able.com/mcp-read-only` | "Read-only. Queries and reporting only" |
| `https://api.n-able.com/mcp-preview` | Early access to unreleased capabilities, full read/write |

[CS: VERIFIED]

Docs recommend starting with read-only "unless write access is required." [CS: VERIFIED]

## Authentication
- Bearer token in HTTP header: `Authorization: Bearer <YOUR_API_TOKEN>` [CS: VERIFIED]
- Tokens generated at `https://n-able.app/api-token-management` [CS: VERIFIED]
- Tokens "inherit permissions from the N-able SSO user who created them" [CS: VERIFIED]
- Token is single-use-viewable — must be stored on creation. [CS: VERIFIED]

## Product coverage
- Docs reference "N-central device data, N-sight RMM data, and more." Scope expands "as the platform grows." [CS: VERIFIED]
- **Cove Data Protection is NOT explicitly named in the MCP docs read.** The `/mcp` endpoint says "all connected N-able products," which is ambiguous. [CS: UNKNOWN — needs a live token to resolve. Do not assume Cove is covered.]
- Separately, the N-able Developer Portal covers N-central, N-sight, Cove Data Protection, and Take Control via OpenAPI. That is the REST/OpenAPI surface, NOT the MCP surface. Do not conflate. [CS: HIGH]

## Capabilities
- Production and preview endpoints: "Can query data, execute scripts, and modify devices." [CS: VERIFIED]
- Quickstart says a working connection returns "a tool list containing at least four default MCP tools." Exact tool inventory lives at `developer.n-able.com/gql/docs/mcp-capabilities` — NOT fetched in this pass. [CS: UNKNOWN — gap]

## Status
- Announced 2026-04-13 "live from Empower" as public preview alongside N-zo AI assistant. [CS: HIGH — press release + status blog]
- Developer docs now describe `/mcp` and `/mcp-read-only` as production endpoints; `/mcp-preview` tools "may change without notice" and are "unsuitable for production." Reads as GA for the first two. [CS: MEDIUM — inferred from doc language, not an explicit GA statement]

## Named limitations
- "Security fields such as BitLocker return `null`" on non-Windows devices. [CS: VERIFIED]
- Token permissions restrict results to accessible customers. [CS: VERIFIED]
- No rate limits stated in the docs read. [CS: UNKNOWN]
- Pricing: press release says nothing about cost. [CS: UNKNOWN]

## Community alternatives (probably unnecessary given the above)
- `github.com/theonlytruebigmac/n-central-rest-api-mcp` — community N-central REST API MCP server. Not evaluated in depth. [WOBBLY — single-maintainer, no adoption data] [CS: MEDIUM]
- `github.com/wyre-technology/ncentral-mcp` — see file 18. Real code, 0 stars, 26 commits, Apache-2.0, 40+ tools across 8 domains, JWT User-API Token auth. [WOBBLY]
- `Servosity/msp-skills` publishes `io.github.Servosity/n-central-mcp` v0.1.0 to the official registry: "N-central REST API with an offline org-tree mirror, cross-tenant search, and a JWT-expiry guardian." [CS: VERIFIED — read from registry]

## Secondary
- Press release: `n-able.com/press/press-releases/n-able-makes-uem-ai-native-with-mcp-server-launch`, 2026-04-13 [CS: HIGH]
- Status blog: `status.n-able.com/2026/04/14/introducing-the-public-preview-of-n-zo-...` — returned HTTP 403 to the fetcher; title and date read from search index only. [CS: MEDIUM — not directly read]
- Landing page: `n-able.com/resources/n-central-mcp-server` — marketing, no technical detail. [WOBBLY]
