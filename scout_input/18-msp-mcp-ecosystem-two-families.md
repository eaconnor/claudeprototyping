# The MSP MCP ecosystem — two families, not equivalent

Scouted 2026-08-24

There are two large collections of MSP-vertical MCP servers. Aggregator sites list them side by side. They are not comparable in maturity. Read this before citing either.

---

## Family A — `Servosity/msp-skills`
`https://github.com/Servosity/msp-skills` [CS: VERIFIED — fetched]

- License Apache-2.0 · **29 stars** · status: **Beta** [CS: VERIFIED]
- Self-description: "Free MCP servers + Claude Code Skills for MSP tools - PSA, RMM, backup, M365. Local-first: your data never leaves your network."
- **65 connectors.** Full list [CS: VERIFIED — read from repo]:
  abnormal, acronis, action1, afi, appdirect, atera, autotask, auvik, avanan, aws-billing, axcient, betterstack, blumira, cipp, connect-tool, connectwise-automate, connectwise-control, connectwise-manage, cork, cove, crowdstrike, datto-bcdr, datto-rmm, domotz, gradient, halopsa, hubspot, hudu, huntress, immybot, itglue, kaseya-bms, knowbe4, levelio, liongard, maxio, microsoft-graph, msp-skills-concierge, mspbots, n-central, nerdio, ninjaone, pagerduty, pandadoc, pax8, pipedrive, proofpoint, quickbooks, resourceguru, rewst, rocketcyber, rootly, runzero, salesbuildr, sentinelone, servosity, sherweb, skykick, superops, syncro, tactical-rmm, threatlocker, unifi-network, veeam, wordpress, xero, zammad
- **Present:** N-central, Cove, HaloPSA, microsoft-graph, Veeam, Datto BCDR, Datto RMM, Liongard, Gradient MSP, Rewst, Pax8
- **Absent:** usecure, Inforcer [CS: VERIFIED]

**Architecture — the distinctive bit:**
- Each connector mirrors the vendor API into **local SQLite**. Stated rationale: "answer cross-client questions the live API can't return in one shot - no rate-limit hits, no per-tech SaaS fee, no data leaves your network." [CS: HIGH]
- Each skill ships an `mcp-install.md` with per-client instructions (Claude Desktop, ChatGPT, Cursor, Windsurf, Cline, Continue.dev). [CS: VERIFIED]
- Terminology note from the repo, useful for the prototype's own vocabulary: "What this repo calls an MCP server is what ChatGPT calls an app or connector, Claude on the web calls a connector, Microsoft Copilot calls a connector, and Claude Code calls a Skill. Same standard underneath: the Model Context Protocol." [CS: VERIFIED]

**Maturity evidence:** published to the official MCP registry with genuine per-connector version histories — HaloPSA at 0.2.12 across 13 releases; Axcient 0.2.9; Hudu 0.1.6; ConnectWise Manage 0.1.4. Tagged releases visible. [CS: VERIFIED]

**Caveats:** Servosity is a backup vendor and ships its own `servosity` connector in the list — the project is vendor-adjacent, not neutral. Self-labelled Beta. Versions are almost all 0.1.x/0.2.x. [CS: VERIFIED / [ASSUMPTION] on what Beta implies]

---

## Family B — `wyre-technology` GitHub org
`https://github.com/orgs/wyre-technology/repositories` [CS: VERIFIED — fetched]

- **135 repositories.** [CS: VERIFIED]
- Split between `*-mcp` servers and `node-*` typed API client libraries. [CS: VERIFIED]

**MCP servers in the `msp-mcp` GitHub topic, with stars and last-update** [CS: VERIFIED — read from topic page]:

| Repo | Stars | Last updated |
|---|---|---|
| autotask-mcp | 48 | 2026-08-24 |
| ninjaone-mcp | 23 | 2026-08-24 |
| connectwise-manage-mcp | 19 | 2026-08-20 |
| itglue-mcp | 17 | 2026-08-24 |
| cipp-mcp | 10 | 2026-08-21 |
| syncro-mcp | 3 | 2026-08-20 |
| datto-rmm-mcp | 3 | 2026-08-24 |
| superops-mcp | 3 | 2026-08-20 |
| halopsa-mcp | 3 | 2026-08-24 |
| hudu-mcp | 3 | 2026-08-21 |
| proofpoint-mcp | 2 | 2026-08-21 |
| qbo-mcp | 2 | 2026-08-23 |
| connectwise-automate-mcp | 1 | 2026-08-23 |
| xero-mcp | 1 | 2026-08-23 |
| huntress-mcp | 1 | 2026-08-24 |
| avanan-mcp | 1 | 2026-08-24 |
| mimecast-mcp | 1 | 2026-08-21 |
| auvik-mcp | 1 | 2026-08-23 |
| spamtitan-mcp | 0 | 2026-08-24 |
| rootly-mcp | 0 | 2026-08-20 |

Others in the org: `ncentral-mcp`, `inforcer-mcp`, `action1-mcp`, `threatlocker-mcp`, `scalepad-mcp`, `spanning-mcp`, `unitrends-mcp`, `timezest-mcp`, `kaseya-vsa-mcp`, `meraki-mcp`, `salesforce-mcp`, `iqms-mcp`. [CS: VERIFIED]

**[WOBBLY] — provenance concerns, stated plainly:**
1. All 30 repos on the org page showed last-updated **2026-08-24** (the scout date). Bulk-touched. [CS: VERIFIED — observed]
2. Star counts near-zero. Most-starred is 48; median ~2. Little independent adoption evidence. [CS: VERIFIED]
3. Org has an `adoption-watcher` repo: "Daily Slack digest of WYRE MCP Gateway adoption metrics" — implying a commercial "WYRE MCP Gateway" product these repos feed. `timezest-mcp` is described as "TimeZest scheduling integration for **WYRE Gateway**"; `salesforce-mcp` as "scoped for **WYRE Gateway** use." **These are components of a commercial gateway, not neutral community servers.** [CS: VERIFIED — read from repo descriptions] [ASSUMPTION] on commercial intent.
4. Who WYRE Technology is, whether it is a funded company or one person, and its relationship to any of these vendors — **not established.** [CS: UNKNOWN]

**Counter-evidence — the code is real.** `wyre-technology/ncentral-mcp` opened directly [CS: VERIFIED — fetched]:
- Real TypeScript. **26 commits.** Apache-2.0. **0 stars.** Not on npm.
- **40+ tools across 8 domains**: system, orgs, devices, monitoring, tasks, custom-properties, maintenance, access-groups.
- Auth: permanent User-API Tokens (JWT) generated in the N-central UI, exchanged for short-lived access/refresh tokens. Supports env-var and gateway-injected credential modes.
- Docker containerisation, on-prem TLS cert handling, explicit security guidance: "Never disable TLS verification...it exposes your API token to interception."
- **No AI-generation disclaimer present.**

And `inforcer-mcp` shows a real 2-month release cadence (9 versions, June→August 2026), which is not the shape of a one-off dump.

**How to hold this:** the code exists and looks competently structured. What is missing is *third-party adoption evidence*. Do not cite these as "the community has built X." Cite them as "an unvetted implementation exists at <url>, N stars, last commit <date>." If the prototype depends on one, someone reads the source first.

---

## Third parties
- `theonlytruebigmac/n-central-rest-api-mcp` — independent N-central MCP. Not evaluated. [CS: LOW]
- `taddiemason/Connectwise-MCP-Server`, `ethangillani/connectwise-mcp-server`, `npab19/connectwise-manage` — listed on aggregators. [CS: LOW]
- "Tech Centre" (`mytechcentre.ca`) — sells N-central and Cove MCP servers commercially. [WOBBLY] [CS: LOW]

## Vendors with NO MCP server found (checked, nothing surfaced)
- Kaseya / Datto, as a vendor: no official server. [CS: MEDIUM]
- NinjaOne, ConnectWise, Atera, Syncro, Hudu, IT Glue, Rewst, Liongard, as vendors: community only. All present in the Servosity set. [CS: MEDIUM]

**No *vendor-published* MCP server found for any PSA/RMM/documentation platform other than N-able.** Veeam is the other vendor-published one, in backup. That is the shape of the market as of 2026-08-24. [CS: MEDIUM — absence-of-evidence from one search pass, not an exhaustive audit]
