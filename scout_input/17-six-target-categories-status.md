# The six target categories — exists / doesn't exist

Scouted 2026-08-24

| Vendor | MCP server? | Who published it | Verdict |
|---|---|---|---|
| N-able N-central / N-sight | YES | **N-able, official** | Use it. See file 16. |
| HaloPSA | YES — several | Halo itself (endpoint), + 2 community families | Use, but pick carefully |
| usecure | **NO** | — | **CONFIRMED GAP — build from scratch** |
| Cove Data Protection | Community only | Servosity, + a commercial reseller | Partial |
| Veeam | YES | **Veeam, official** | Use it |
| Datto (BCDR / RMM / SaaS) | Community only | Servosity, wyre-technology | No vendor server found |
| Microsoft 365 / Graph | YES | **Microsoft, official** + strong community | Use it — read constraints |
| Inforcer | YES — community | wyre-technology | Exists, unvetted |

---

## 1. N-able N-central — OFFICIAL, EXISTS
See `scout_input/16-n-able-official-mcp-server.md`. [CS: VERIFIED]

---

## 2. HaloPSA — EXISTS, multiple, including something first-party
**Halo's own MCP endpoint.** A HaloPSA guides article titled "MCP Endpoint: Use the Chatbot to Query and Update Data in your Instance" exists on `halopsa.com/guides`. Description found: "The Model Context Protocol (MCP) HTTP endpoint allows AI assistants such as OpenAI to connect securely and dynamically invoke tools in the Halo API — such as knowledge search, Ticket logging and updating, or executing runbooks."
[CS: MEDIUM — article title and description found via search index; article body could NOT be opened. Treat as strong lead, not confirmed spec.]

Known issue surfaced in the same search: "the current MCP Server doesn't work with Claude due to OAuth errors, and adding OAuth 2.0 Auth Server compatibility may resolve this issue." [CS: LOW — unattributed forum-style text, source not identified] **Verify before relying on this.**

**Community, in the official registry:**
- `io.github.Servosity/halopsa-mcp` — v0.2.12, 13 published versions from 0.1.1 up. "HaloPSA ticket triage, SLA-breach pre-emption, and cross-client analytics for any MCP agent." Repo: `github.com/servosity/msp-skills` [CS: VERIFIED — read from registry]
- `io.github.wyre-technology/halopsa-mcp` — v1.7.4+, ~17 published versions. "MCP server for HaloPSA — clients, tickets, and PSA workflows via the HaloPSA REST API." Repo: `github.com/wyre-technology/halopsa-mcp`, 3 stars, last update 2026-08-24. [CS: VERIFIED — read from registry] [WOBBLY — see file 18]

**Other community, NOT in the official registry (lower confidence, unverified):**
`michelbragaguimaraes/HaloITSM_MCP`, `@adamhancock/halopsa-mcp` (npm), `Switchboard666/halopsa-mcp`, `ssmanji89/halopsa-workflows-mcp`, `tim-impendingtech/halopsa-mcp-server`. Not opened. [CS: LOW]

Also: Thread has an open feature request for HaloPSA MCP integration (`getthread.canny.io`) — i.e. not built there. [CS: MEDIUM]

---

## 3. usecure — **CONFIRMED GAP. DOES NOT EXIST.**
- Official MCP registry, `search=usecure`: **count 0, empty result set.** [CS: VERIFIED — queried directly, twice, including `version=latest`]
- No GitHub repo found. [CS: HIGH]
- Not in `Servosity/msp-skills` (65 connectors). [CS: VERIFIED]
- Not in the `wyre-technology` repos enumerated. [CS: MEDIUM — 50 of 135 seen]
- **No public API documentation found.** Search returned only `help.usecure.io` end-user help articles for uLearn, uPhish, uBreach, uPolicy. No developer portal, no Swagger, no REST reference. [CS: MEDIUM — absence of evidence in one search pass]

**Before scoping a build here, confirm usecure has a public API at all.** That is the open question, not "is there an MCP server." Resolve by contacting usecure or checking the MSP partner portal — do not infer from the marketing site. This is a `[?]` for the spec, not an `[A]`.

Category substitute if the vendor is negotiable: **KnowBe4** connector exists in `Servosity/msp-skills`. [CS: VERIFIED]

---

## 4. Backup / recovery

### Veeam — OFFICIAL, EXISTS
- **Veeam Intelligence MCP Server**, launched 2026-03-31. [CS: HIGH]
- Repo: `github.com/veeam-ai/veeam-mcp-server` — vendor-owned GitHub org. [CS: HIGH]
- Vendor blog: `veeam.com/blog/veeam-intelligence-mcp-server.html` [CS: HIGH]
- Docker-deployable. Covers **Veeam Backup & Replication, Veeam ONE, and Veeam Service Provider Console (VSPC)**. [CS: HIGH]
- **"customer-controlled, read-only deployments"** — read-only is the stated posture. [CS: MEDIUM]
- Stated use cases: incident triage, pre-change validation, cross-system root-cause analysis. [CS: MEDIUM — vendor marketing] [WOBBLY on capability claims]
- Community alternatives: `jorgedlcruz/modelcontextprotocol_veeam` (Veeam employee's personal collection), `mritsurgeon/veeam-hybrid-mcp`. [CS: LOW]

### Cove Data Protection (N-able) — COMMUNITY ONLY, no confirmed vendor server
- `Servosity/msp-skills` has a `cove` connector: "Cove Data Protection — Fleet-wide Cove backup health, billing, and storage trends from terminal", v0.1.4, in the official registry. [CS: VERIFIED]
- A commercial one is sold by "Tech Centre" (`mytechcentre.ca`) — third-party reseller, pricing unknown. [WOBBLY] [CS: LOW]
- **N-able's own MCP does not name Cove.** Cove DOES have an OpenAPI spec on N-able's developer portal. [CS: HIGH] So the fallback is OpenAPI→MCP (file 20), not "no path."
- Also: `wyre-technology/spanning-mcp`, `wyre-technology/unitrends-mcp`, `Servosity` has `axcient` (x360Recover) and `acronis`. [CS: MEDIUM]

### Datto — COMMUNITY ONLY
- **No Kaseya/Datto vendor-published MCP server found.** [CS: MEDIUM]
- `Servosity/msp-skills`: `datto-bcdr` v0.1.2, `datto-rmm` v0.1.0. Both in the official registry. [CS: VERIFIED]
- `wyre-technology/datto-rmm-mcp` (3 stars), plus SDK libs. [CS: MEDIUM]
- Datto SaaS Protection: no MCP server found. [CS: MEDIUM]

---

## 5. Microsoft 365 / Graph — OFFICIAL, EXISTS, with a real constraint

### Microsoft MCP Server for Enterprise (official)
Primary source: `learn.microsoft.com/en-us/graph/mcp-server/get-started` [CS: VERIFIED — full page fetched]
- Endpoint: `https://mcp.svc.cloud.microsoft/enterprise` [CS: VERIFIED]
- App ID: `e8c77dc2-69b3-43f4-bc51-3213c9d915b4` [CS: VERIFIED]
- Microsoft-owned service. Cannot be deleted from a tenant, only disabled via `accountEnabled: false`. [CS: VERIFIED]
- Doc `ms.date` 2026-05-20, updated 2026-07-04. [CS: VERIFIED]

**Provisioning — per tenant, once:**
```powershell
Install-Module Microsoft.Entra.Beta -Force -AllowClobber
Connect-Entra -Scopes 'Application.ReadWrite.All','Directory.Read.All','DelegatedPermissionGrant.ReadWrite.All'
Grant-EntraBetaMCPServerPermission -ApplicationName VisualStudioCode
```
Requires **Application Administrator** or **Cloud Application Administrator**. [CS: VERIFIED]

**THE CONSTRAINT — verbatim:**
> "The MCP Server supports only delegated permissions for user-interactive scenarios. App-only permissions or app-only workflows aren't supported."

[CS: VERIFIED]

For an MSP multi-tenant automation scenario this is load-bearing. A human must be in the loop per tenant; no daemon/service-principal pattern. Note this rather than design around it silently.

**Scopes — all read-only.** Naming pattern `MCP.{graph-scope-name}`. Full published list (41):
`MCP.AccessReview.Read.All`, `MCP.AdministrativeUnit.Read.All`, `MCP.Application.Read.All`, `MCP.AuditLog.Read.All`, `MCP.AuthenticationContext.Read.All`, `MCP.DelegatedPermissionGrant.Read.All`, `MCP.Device.Read.All`, `MCP.DirectoryRecommendations.Read.All`, `MCP.Domain.Read.All`, `MCP.EntitlementManagement.Read.All`, `MCP.Group.Read.All`, `MCP.GroupMember.Read.All`, `MCP.GroupSettings.Read.All`, `MCP.HealthMonitoringAlert.Read.All`, `MCP.IdentityRiskEvent.Read.All`, `MCP.IdentityRiskyServicePrincipal.Read.All`, `MCP.IdentityRiskyUser.Read.All`, `MCP.LicenseAssignment.Read.All`, `MCP.LifecycleWorkflows.Read.All`, `MCP.LifecycleWorkflows-CustomExt.Read.All`, `MCP.LifecycleWorkflows-Reports.Read.All`, `MCP.LifecycleWorkflows-Workflow.Read.All`, `MCP.LifecycleWorkflows-Workflow.ReadBasic.All`, `MCP.NetworkAccess.Read.All`, `MCP.NetworkAccess-Reports.Read.All`, `MCP.Organization.Read.All`, `MCP.OrgContact.Read.All`, `MCP.Policy.Read.All`, `MCP.Policy.Read.ConditionalAccess`, `MCP.ProvisioningLog.Read.All`, `MCP.Reports.Read.All`, `MCP.RoleAssignmentSchedule.Read.Directory`, `MCP.RoleEligibilitySchedule.Read.Directory`, `MCP.RoleManagement.Read.Directory`, `MCP.SecurityAlert.Read.All`, `MCP.SecurityIncident.Read.All`, `MCP.ServiceHealth.Read.All`, `MCP.ServiceMessage.Read.All`, `MCP.Synchronization.Read.All`, `MCP.User.Read.All`, `MCP.UserAuthenticationMethod.Read.All`
[CS: VERIFIED — copied from the Learn page]

Note: scopes are Entra/directory-shaped — identity, policy, security, devices, audit. No mail/files/Teams-content scopes. If the prototype needs mailbox or SharePoint content, this server is not the path. [CS: VERIFIED — observable from the list]

**Explicit finding:** "there is not an official Microsoft Graph MCP server" in the general sense — the Enterprise server is a curated Entra-facing subset, not a Graph passthrough. [CS: MEDIUM — phrasing from a search summary, consistent with the verified scope list]

### Lokka (community, strongest general-Graph option)
- `github.com/merill/lokka` · docs at `lokka.dev` [CS: HIGH]
- Built by **Merill Fernando, a Microsoft employee** — but it is a community/personal project, not an official Microsoft product. Do not describe it as official. [CS: HIGH]
- "supports all Microsoft Graph APIs including update operations (limited by the permissions you grant to the app)" — **write-capable**, unlike the official Enterprise server. [CS: HIGH]
- Free.

### Other community Graph servers (found, not evaluated)
`softeria/ms-365-mcp-server`, `MartinM85/mcp-server-graph-api` (C#), `JackInSightsV2/Microsoft-Graph-MCP` (Python), `elyxlz/microsoft-mcp`. [CS: LOW]

### CIPP (MSP-relevant M365 multi-tenant)
- `wyre-technology/cipp-mcp` — 10 stars, highest-starred in that org. [CS: MEDIUM]
- `Servosity/msp-skills` also has `cipp` v0.1.2. [CS: VERIFIED]

---

## 6. Inforcer — EXISTS, community, in the official registry
- **`io.github.wyre-technology/inforcer-mcp`** [CS: VERIFIED — read from official registry]
- Description: "Read-only MCP server for Inforcer M365 baseline governance, plus assessment and report runs." [CS: VERIFIED]
- Repo: `github.com/wyre-technology/inforcer-mcp`
- Distribution: **OCI container** `ghcr.io/wyre-technology/inforcer-mcp:v1.1.0` [CS: VERIFIED]
- Version history: 1.0.0 (2026-06-18), 1.0.1 (06-22), 1.0.3 (07-06), 1.0.4 (08-07), 1.0.5 (08-07), 1.0.6 (08-10), 1.0.7 (08-13), 1.0.8 (08-19), 1.1.0 (08-19, current). [CS: VERIFIED]
- Required env vars: `INFORCER_REGION` (`anz`/`eu`/`uk`/`us`) and `INFORCER_API_KEY` (sent as `Inf-Api-Key` header). [CS: VERIFIED]
- **Read-only.** Drift remediation / policy write-back is NOT in this server. [CS: VERIFIED]

Underlying API is real: community PowerShell module `github.com/royklo/InforcerCommunity`, also on PowerShell Gallery v0.0.3. [CS: HIGH]

[WOBBLY] — the only Inforcer MCP server comes from an org whose provenance could not be established (file 18). But this one has a genuine 2-month release cadence (9 versions June→August), a different signal from bulk-dumped repos in the same org.
