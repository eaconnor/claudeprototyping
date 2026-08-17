# Scout dossier — Will Mincher's FigJam: "MCP Config - Design Kickoff"

**Source:** https://www.figma.com/board/aUDxnqagEjRc5DFM2vsclW/Exploring-ACP?node-id=168-636
**Pulled:** 2026-07-31 via Figma MCP (get_figjam, node 168:636 — full canvas)
**Authors on board:** William Mincher, Elizabeth Connor, Ben Casling, Jude Scally
**Confidence:** [CS: VERIFIED — direct extraction from the live board, verbatim below]

---

## 1. The Intent (section 168:637)

> "Add an MCP connection to ACP." (green sticky, unattributed)

This is the whole kickoff scope: MCP connections as the mechanism by which external tools/data reach ACP.

## 2. Questions section (168:699) — verbatim stickies

| Author | Sticky |
|---|---|
| Elizabeth Connor | "What's are the jobs to be done? (tech agnostic)" |
| Elizabeth Connor | "What tools do we need to connect - most common? Standards? Pay wall? Which partners have great, well-behaving MCPs that will do everything our customers want them to do?" |
| Elizabeth Connor | "What's our assumed customer literacy and tolerance for connecting MCPs? (Assumption - it is easy enough peeps will do it with no problem -- especially if buying control plane.)" |
| Elizabeth Connor | "Are all the MCPs we need to connect mature enough to 'behave' and do what we need them to do -- or are some going to need some extra work/help?" |
| Elizabeth Connor | "Is this going to be annoying, like connecting to my banks while filing my American taxes?" |
| Elizabeth Connor (yellow) | "We can know what the MCPs do easily --- can know what's available functionality wise." |
| William Mincher | "Once connected, how visible does that connection need to be across ACP? A: Not MCP visibility but endpoint down, auth not valid etc. Rotate Auth tokens automatically. We're connecting to instances of MCPs not a singular MCP. Becomes about MCP instance connections when using MCPs" |
| William Mincher | "What happens if an MCP is unavailable after connection?" |
| William Mincher | "Admin/Org level whitelist of MCPs? Feature: Set what's in/out of scope. Requires Permissions & SSO before we can implement." |
| Ben Casling | "Are MCPs added and authenticated on user or company level? If company level, can you set up RBAC for various MCP permissions that vary per user. A: Depends on MCP. Some are user auth, others can be connected multiple times. MVP user connection." |
| Jude Scally | "Are N-able MCPs there and authed by default?" |

## 3. Technical Requirements (section 168:678) — yellow stickies

- "Requires a URL endpoint"
- "MCP may need authentication"
- "Choose the transport type (we support SSE, HTTPS-Streamable)"
- "MCP status check (?)"
- "Tool visibility & selection"

## 4. Config Journeys (section 168:638) — four flows mapped

**Flow 1 — Configure an MCP for use in ACP:**
Landing Page → Navigate to Settings Area for MCPs → [Permissions to config Custom MCPs? Yes/No] → [Provided MCP or Custom?] → Provided: Find MCP in list, click Configure MCP → Show Auth type, transport type etc. → [Any additional options? e.g. Region] → MCP Configured. Available for use.
Custom path: Click Configure Custom MCP → Add endpoint, choose Auth type/transport → error branches: "URL isn't MCP endpoint" / "URL Blocked."
Pink sticky (Will): "Potentially whitelisted MCPs only. Communicate restriction to user."

**Flow 2 — Create instances of an MCP (inside Coworker Create/Edit flow):**
Coworker Create/Edit → Choose Add MCP instance → Do any MCP auth → Tool selection from MCP tools → Give instance name & desc → MCP Instance added → Finish Coworker creation. Loop: "Add multiple instances." Shortcut: "Select preconfigured MCP instance(s)."
Pink stickies (Will): "Assumes MCPs are never instanced outside of a Coworker." · "Every instance needs a unique name" · "To explore: What makes an instance unique. How can the user identify unique instances." · "Q: Are Coworkers unique per user?" · "How preconfigured is it? Would it possibly need a name & desc?" · "Q: Do instances created in this flow exist before the whole flow is completed?"

**Flow 3 — Manage instances of an MCP:**
MCP Config view → Find a configured MCP → See list of instances → Filter list to certain scope → [Disable, Remove, Edit Instance, Reauth?]
Also from Coworker view: Browse list of Coworker MCP instances → Select → same Disable/Remove/Edit/Reauth diamond.
Pink stickies: Jude: "What does this do to existing usages of MCP ^" · Will: "Potential big impact across a whole bunch of coworkers."

**Flow 4 — Check MCP (connection & instance) Availability:** header present; flow not yet drawn.

**Parking area:** "Using MCP Journeys — Using an MCP instance in a Coworker" (parked, not designed).

## 5. What this means for the QBR-prep simulation [scout reading, not synthesis]

- The board is **plumbing, not the meeting**: it defines HOW a data source gets connected (config → instance → tool selection → auth), not WHAT a persona connects for QBR prep.
- Will's error/visibility stickies (endpoint down, auth invalid, reauth, "URL Blocked") are the realistic failure states a QBR-prep simulation should show when a probable data source is stale or disconnected. [CS: VERIFIED — on board]
- Beth's own sticky ("What tools do we need to connect - most common?") is literally the question the QBR-prep simulation answers with the persona's probable source set. [CS: VERIFIED — on board]
- MVP auth = user-level connection (Ben's sticky answer). Org whitelist gated on Permissions & SSO. [CS: VERIFIED — on board]

## Honor check
- Steps completed: full-canvas extraction of node 168:636; verbatim transcription of all stickies, flows, sections
- Steps skipped: none. Screenshot not captured (text extraction sufficed; board has one raster screenshot node "Screenshot 2026-07-13" labeled "Some plausible tech stacks from Claude, for what it is worth" — contents not readable via text API)
- Cannot verify: whether the board is Will's latest thinking or superseded elsewhere in the file
- Stats I produced: 4 flows, 11 question stickies, 5 technical-requirement stickies, 4 named authors
