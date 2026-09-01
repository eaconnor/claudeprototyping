# MCP Registries & Directories — what's authoritative

Scouted 2026-08-24

## Authoritative

**Official MCP Registry** — `https://registry.modelcontextprotocol.io`
- Launched in preview 2025-09-08. [CS: HIGH]
- "the official centralized metadata repository for publicly accessible MCP servers, backed by major trusted contributors to the MCP ecosystem such as Anthropic, GitHub, PulseMCP, and Microsoft" [CS: HIGH]
- Namespace authentication: reverse-DNS names (`io.github.username/server`, `com.example/server`) tied to verified GitHub accounts or domains. Only the namespace owner can publish. [CS: HIGH]
- **This is the one to query programmatically.** Working API pattern, verified live:
  - `https://registry.modelcontextprotocol.io/v0/servers?search=<term>`
  - `https://registry.modelcontextprotocol.io/v0/servers?search=<term>&version=latest`
  - [CS: VERIFIED — queries run, structured JSON returned]
- Caveat: search is fuzzy. Query `n-central` also returned `maven-central`. Query `cove` returned dozens of unrelated "discovery"/"coverage" servers. Do not treat a hit as a match without reading the name field. [CS: VERIFIED — observed directly]
- Registry entries include: full reverse-DNS name, description, version, repository URL, package registry/identifier (npm, OCI/ghcr), and required environment variables. [CS: VERIFIED]

**Anthropic reference servers** — `github.com/modelcontextprotocol/servers`
- Reference implementations. No MSP/ITSM vendors. [CS: HIGH]

**Docker MCP Registry / Catalog** — `github.com/docker/mcp-registry`, `docs.docker.com/ai/mcp-catalog-and-toolkit/`
- "300+ verified servers packaged as container images with versioning, provenance, and security updates" [CS: MEDIUM — vendor's own description]
- Partners named: Stripe, Elastic, New Relic, Grafana. No MSP-vertical vendors named. [CS: MEDIUM]

**Microsoft official catalog** — `github.com/microsoft/mcp`
- "Catalog of official Microsoft MCP server implementations." Includes Sentinel, Azure, SQL. [CS: HIGH]

## Community-curated (not authoritative)

- **PulseMCP** — `pulsemcp.com`. Named as a backing contributor to the official registry, so somewhat closer to the center. [CS: MEDIUM]
- **Glama** — `glama.ai/mcp/servers`. Indexes GitHub broadly; inclusion implies nothing about quality. [CS: MEDIUM]
- **mcp.so**, **LobeHub**, **mcpmarket.com**, **crossaitools.com**, **claudemarketplaces.com**, **mcpservers.org** — aggregators. Several appear to auto-scrape GitHub and the official registry. Multiple surfaced the SAME underlying repo under different presentation. [CS: MEDIUM]
- **Smithery** — not verified in this pass. [CS: UNKNOWN]

## Method note for the prototype
If the prototype needs to claim "this connector exists," the check that actually settles it is a query against
`registry.modelcontextprotocol.io/v0/servers?search=<vendor>&version=latest`
plus opening the linked repo. Aggregator listings are not evidence — several list servers that resolve back to a single unadopted repo.
