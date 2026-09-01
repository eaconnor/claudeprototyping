# Generic-bridge fallbacks — REST API but no MCP server

Scouted 2026-08-24

## Production-credible

### FastMCP (Python) — strongest for a custom server
- `github.com/PrefectHQ/fastmcp` · **FastMCP 3.0 released 2026-01-19**; v3.2.4 dated 2026-04-14. [CS: MEDIUM — dates from secondary write-ups, not release notes opened]
- Claim: "the Python library that powers around 70% of MCP servers in the wild." [CS: LOW — repeated in blog posts, no primary measurement found. **Do not quote this number in a deliverable.**] [WOBBLY]
- Feature set beyond core spec: deployment, auth, clients, server proxying and composition, **generating servers from REST APIs**, dynamic tool rewriting, built-in testing. [CS: MEDIUM]
- **Maintainers' own caveat, and the most useful line in this file:** auto-conversion from REST is recommended "mainly for bootstrapping and prototyping," because "REST endpoints are designed for programmers whereas tools are consumed by models." They recommend wrapping the API to get moving, then **curating — collapsing related endpoints into intent-shaped tools with clear names and descriptions, keeping parameters simple.** [CS: MEDIUM — reported from FastMCP docs via secondary source]

That caveat applies directly to a Cove-via-OpenAPI or usecure-from-scratch build: auto-generated tools from a REST spec are a starting point, not the deliverable.

### Hosted aggregator endpoints

**Zapier MCP** — `https://mcp.zapier.com/api/v1/connect`
- `github.com/zapier/zapier-mcp` — "Official plugin distribution for the hosted Zapier MCP server." [CS: HIGH]
- Hosted Streamable HTTP. 9,000+ apps / 40,000+ actions. GA on all Zapier plans. **SOC 2 Type II.** [CS: MEDIUM — vendor/secondary]
- Auth: `Authorization: Bearer <token>` [CS: MEDIUM]
- Coverage of RMM/PSA specifically is unverified. [CS: UNKNOWN]

**Pipedream MCP** — `mcp.pipedream.com` · `pipedream.com/docs/connect/mcp`
- 3,000+ APIs, 10,000+ tools, **managed OAuth**, free for personal use. SSE + streamable HTTP. [CS: MEDIUM] [WOBBLY on "most mature," a blog assertion]
- Managed OAuth is the differentiator vs Zapier for multi-tenant scenarios. [CS: MEDIUM]

### API-gateway route
**APISIX / API7 `openapi-to-mcp` plugin** — `docs.api7.ai/hub/openapi-to-mcp`. Gateway acts as bridge. Credible if a gateway is already in the path. [CS: MEDIUM]

---

## Prototyping-grade, not production

**`matthewhand/mcp-openapi-proxy`** (Python/PyPI) — dynamically exposes OpenAPI-defined REST APIs as MCP tools. Single-maintainer. [CS: MEDIUM] [WOBBLY]

**`gujord/OpenAPI-MCP`** — translates OpenAPI specs into MCP tools/resources/prompts. OAuth2 + username/password auth with token caching. Docker. Single-maintainer. [CS: MEDIUM] [WOBBLY]

**`openapi-mcp-proxy`** (PyPI) — same category; overlapping description, possibly a repackaging. [CS: LOW]

These self-describe as production-ready; none had adoption evidence that could be verified. Treat as prototyping tools. The FastMCP caveat above applies doubly.

---

## Where this lands for this project

| Vendor | Has REST/OpenAPI? | Bridge path |
|---|---|---|
| Cove Data Protection | **Yes — OpenAPI on N-able developer portal** [CS: HIGH] | OpenAPI→MCP, then curate. Or Servosity cove 0.1.4. |
| Take Control | Yes — OpenAPI on N-able portal [CS: HIGH] | Same |
| Inforcer | Yes — REST, API-key (`Inf-Api-Key`), region-scoped [CS: HIGH] | wyre `inforcer-mcp` for read; custom FastMCP for write |
| usecure | **Unverified** [CS: UNKNOWN] | Cannot scope until API existence is confirmed |
| Datto BCDR / RMM | Yes [CS: HIGH] | Servosity connectors, or custom |

**N-able developer portal note:** `https://developer.n-able.com/llms.txt` is "an index of all pages formatted in Markdown and endpoints in OpenAPI." [CS: VERIFIED — stated on the portal] That's the single fetch that would enumerate N-able's full OpenAPI surface, including Cove. Worth pulling before scoping any N-able bridge work.
