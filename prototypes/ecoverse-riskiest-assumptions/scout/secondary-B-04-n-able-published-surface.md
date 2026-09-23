# Secondary B / 04 — N-able's own published surface

Task item 5. Public pages only. What is already claimed publicly.

**Fidelity warning:** two of the three key N-able sources came back as **model paraphrase, not verbatim**. Tagged `[CS: MEDIUM — paraphrase]`. **Re-read verbatim before any of this is quoted internally.** Beth will be reading claims about her own employer's product; the Chicago principle applies with force here.

---

## ★ NA1. AI-Accelerated Vulnerability and Patch Management — PUBLIC PREVIEW 2026-07-24

**The most consequential N-able source in this dossier, and the one most directly comparable to the competitor material in files 01 and 02.**

**Bucket: (b) PUBLIC PREVIEW, mixed sub-statuses**

- **Primary, fetched:** N-able Status, "AI-Accelerated Vulnerability and Patch Management – Public Preview", **2026-07-24**. https://status.n-able.com/2026/07/24/ai-accelerated-vulnerability-and-patch-management/
- **Companion resource page:** https://www.n-able.com/resources/n-central-ai-accelerated-vulnerability-patch-management *(not fetched)*

**Exact feature names as published:**
- "Third-Party Application Patching — Windows, macOS, and Linux"
- "Vulnerability Remediation — Closing the Loop"
- "N-zo Experts: Vulnerability and Patch Intelligence, Together"
- "Security Insights Dashboard"
- "Patch Policies — Automated, Policy-Driven Patch Management"

`[CS: HIGH — feature names as extracted]`

**Availability, as published — note this is NOT one status:**

| Component | Status |
|---|---|
| Entire release | **Public Preview** |
| Linux Patch Policies | **Generally Available** |
| macOS Patch Policies | **Early Access Preview** |
| Windows Patch Policies | **Coming Soon** |

`[CS: HIGH]` ← **Windows patch policies were "coming soon" as of 2026-07-24. Windows is the volume platform. Compare NinjaOne Vulnerability Management: GA on Windows + Linux since 2026-03-16 (file 01, N2). That is a ~4-month-plus published lead on the platform that matters most.** The comparison is stated as an ingredient; whether it constitutes a lead is Beth's call.

**Coverage claim:** "Over 550 managed third-party applications" at launch. `[CS: HIGH — claim]`
**Compare:** Patch My PC claims "over a thousand" (file 03, S1). Microsoft EAM is a curated catalogue (file 03, M1).

**What N-zo Experts claim to do — fetched:**
> provide "contextual guidance as they work, removing the guesswork over whether a CVE warrants urgent action or which patches to prioritize this cycle" and surface "expertise inline, helping IT teams make faster, better-informed decisions."

`[CS: HIGH — claim]`
**Note the verbs: guidance, surface, inform. Advisory framing, not action framing.** Contrast Qualys ("validate, mitigate, revalidate", C3) and NinjaOne ("automatically prioritize and deploy", N2).

**Action-taking language — the strongest published claim:**
> "Technicians can now move from a vulnerability finding directly to a patch deployment without leaving the workflow."

`[CS: HIGH — claim]` **This is workflow continuity — a human moving through one surface. It is not autonomous action, and it is not a governed-action claim.** `[WOBBLY]` on any reading of it as either.

**Explicit negative finding:** I asked the fetch specifically for approval-gate language. None was returned beyond the workflow sentence above. `[CS: MEDIUM]` — absence in one fetched page.

**Commercial gate — important:** "All N-central customers must meet the **Ecoverse prerequisites** to access these features." Full N-central **v26.2+** required for the Security Insights Dashboard and updated navigation; earlier versions retain limited functionality. `[CS: HIGH]` ← **the capability is gated behind a platform migration. That is an adoption cost competitors selling a standalone add-on do not impose.** Stated as an ingredient.

---

## NA2. N-zo — GA 2026-09-15

**Bucket: (a) GA for the assistant; (b) roadmap for the parts that would act**

- **Primary, fetched:** N-able Status, "N-zo is now generally available", **2026-09-15**. https://status.n-able.com/2026/09/15/n-zo-is-now-generally-available/
- **Index:** https://status.n-able.com/release-notes/page/2/

**Status:** GA for all eligible users. **From 2026-09-15, enabled by default** unless an admin has opted out or disabled it. `[CS: HIGH]`

**What it is:** embedded AI assistant in **N-central and N-sight** providing "contextual guidance and answers using natural language". Ships with a **starter prompt library organised by category** and an "Ask N-zo" interface. `[CS: HIGH]`

**★ Planned, NOT yet available — as published:**
- **Asset Selector** — search and confirm assets from the prompt window
- **Script Expert** — **create and run scripts on devices**

`[CS: HIGH]` ← **"Create and run scripts on devices" is the first published N-zo capability that would take action on an endpoint, and as of 2026-09-15 it was not available.** Compare Automox's Otto AI, which has shipped plain-English script generation across Windows/macOS/Linux for some time (file 02, C6). **If that comparison holds, N-zo's roadmap item is a competitor's shipped feature.** `[WOBBLY]` — the Otto AI date is unconfirmed (see C6); this comparison rests on it and must not be asserted until the date is verified.

**Control model:** "Administrators remain in control and can disable N-zo at any time." **No user-level opt-out** — admin enablement only. `[CS: HIGH]`
**No approval-gate mechanism published**, because no action-taking capability has shipped yet. `[CS: MEDIUM]`

**★ Forward-looking-statement disclaimer on the page:** N-able's feature commitments are **not binding** and priorities may change. `[CS: HIGH]` **Anything from the roadmap must be treated as (b), never (a) — including internally.**

**Related:** "Easier Access to Ecoverse in N-sight", 2026-09-02. https://status.n-able.com/2026/09/02/easier-access-to-ecoverse-in-n-sight/ *(not fetched)*

---

## NA3. N-central 2026.2 — release notes

**Bucket: (a) shipped, per release notes — BUT paraphrase-sourced**

- **Primary:** https://documentation.n-able.com/N-central/Release_Notes/GA/Content/N-central_2026.2_Release_Notes.htm — **returned as model paraphrase, not verbatim** `[CS: MEDIUM — paraphrase]`
- **HF1:** https://documentation.n-able.com/N-central/Release_Notes/RC/Content/N-central_2026.2_HF1_Release_Notes.htm *(not fetched)*

**Release date: 2026-07-31.** `[CS: MEDIUM — paraphrase]`

**AI / Ecoverse:**
- New **"AI Management"** section under Administration, for controlling N-zo access `[CS: MEDIUM — paraphrase]`
- **★ "MCP (Model Context Protocol) Servers" — enable external AI tools to query N-central data securely** `[CS: MEDIUM — paraphrase]` ← **direct architectural parallel to Tanium Atlas MCP Server (file 02, C2). Two vendors, same integration pattern, same year. Note the asymmetry in the published claim: Tanium markets per-action authorization over exposed data AND actions; the N-central paraphrase says "query data". If that difference is real it is read vs. read-write. Verify verbatim — this distinction is load-bearing and I am working from a paraphrase.** `[WOBBLY]`

**Patching & vulnerability:**
- Patch Monitor V2 enhancements — resolves duplicate patch identifier issues `[CS: MEDIUM — paraphrase]`
- Improved patch detection consistency and install status accuracy `[CS: MEDIUM — paraphrase]`
- "Enhanced vulnerability risk prioritization capabilities via N-zo" `[CS: LOW — paraphrase, wording likely the summarizer's not N-able's]` `[WOBBLY]` **Do not quote this phrasing. Verify verbatim.**

**Configuration & compliance:**
- "Enhanced Device Filtering with Nested AND Conditions" `[CS: MEDIUM — paraphrase]`
- Back-Channel Logout, aligned to OpenID Connect `[CS: MEDIUM — paraphrase]`
- Legacy EDR upgrade restrictions, to guide migration to enhanced EDR integration `[CS: MEDIUM — paraphrase]`

**Inventory / asset:**
- DDR5 memory monitoring `[CS: MEDIUM — paraphrase]`
- **Default monitoring for Adlumin on Windows devices** via new service template `[CS: MEDIUM — paraphrase]` ← inventory↔security-product cross-wiring
- Improved asset data updates for video controllers `[CS: MEDIUM — paraphrase]`

**Other:** new REST APIs for agent deployment and org limits; API service logging now captures username + external IP; logo customisation on Analytics exports. `[CS: MEDIUM — paraphrase]`

---

## NA4. Ecoverse — the public positioning

**Bucket: (c) MARKETING / VISION**

- **Primary:** https://www.n-able.com/resources/n-able-ecoverse-explained — **paraphrase-sourced; no publication date found on the page** `[CS: MEDIUM — paraphrase]` `[WOBBLY on date]`
- **Platform page:** https://www.n-able.com/platform — "N-able Ecoverse Platform" *(not fetched)*
- **Roadmap:** https://www.n-able.com/roadmap *(not fetched)* — **the published roadmap is worth a dedicated read; it is (b) by definition**
- **Status index:** https://status.n-able.com/?cat=-1
- **UX/asset-metrics note:** "N-able Ecoverse: New Asset Metrics and UX Improvements", **2025-08-14**. https://status.n-able.com/2025/08/14/n-able-ecoverse-new-asset-metrics-and-ux-improvements/ `[flagged: 2025 — check for supersession]`

**Attribution:** announced by N-able CTO **Mike Adler**; framed as "a merger of the MSP ecosystem and N-able's technology universe". `[CS: MEDIUM — paraphrase]`

**Published scope — the four pillars as paraphrased:** managing digital assets · enhancing cyber security · protecting data · **providing intelligence and insights through generative AI**. `[CS: MEDIUM — paraphrase]`
**Architecture claim:** "an open ecosystem linked through APIs" for "seamless integration". `[CS: MEDIUM — paraphrase]`
**Goal claim:** allow MSPs to be "more efficient, resilient, and drive more opportunities through an open, unified ecosystem". `[CS: MEDIUM — paraphrase]`

**Products named on the page:** N-central UEM · N-sight UEM · Endpoint Detection and Response · **Adlumin SecOps** · **Cove Data Protection** · Passportal · Mail Assure · Take Control · DNS Filtering · MSP Manager. `[CS: MEDIUM — paraphrase]`

**★ Explicit negative finding, and the most important line in this file:**
> "No specific mentions of correlation between these elements. The page references individual capabilities (Patch Management, Vulnerability Management, CMMC Compliance) but **does not describe integration or correlation between them.**"

`[CS: MEDIUM — paraphrase]` `[WOBBLY]`

**Read this carefully and do not over-read it.** It says the *public Ecoverse explainer page* does not claim cross-signal correlation. It does **not** establish that N-able lacks the capability, nor that the capability isn't claimed elsewhere (NA1 is a stronger claim). And it is **paraphrase-sourced from a page with no date.** Its value is narrow and specific: **the correlation thesis does not appear to be part of N-able's public positioning yet.** That is a fact about published marketing. Nothing more.

**AI claims on the page:** "providing intelligence and insights through generative AI" · "AI-powered proactive protection" (Endpoint Security) · "AI-powered DNS security". `[CS: MEDIUM — paraphrase]` `[WOBBLY]` — all three are adjectival AI claims with no mechanism.

---

## NA5. Other N-able public items

- **Ecoverse + Microsoft cloud:** "N-able Ecoverse Platform Strengthens Cyber Resiliency for the Microsoft Cloud, Adding Adlumin Breach Prevention for Microsoft 365". https://www.n-able.com/press/press-releases/n-able-ecoverse-platform-strengthens-cyber-resiliency-for-the-microsoft-cloud-adding-adlumin-breach-prevention-for-microsoft-365 *(not fetched, no date captured)* `[CS: MEDIUM]` ← **an existing published Microsoft-stack play. Relevant to how an Intune-adjacent story would be positioned.**
- **Ecosystem integrations:** "N-able Builds on the Ecoverse Vision by adding Rewst and HaloPSA Integrations" — automate workflows across products/environments, streamline data and alert management. https://www.n-able.com/press/press-releases/n-able-builds-on-the-ecoverse-vision-by-adding-rewst-and-halopsa-integrations *(not fetched, no date captured)* `[CS: MEDIUM]` ← pattern-match to Action1↔Jira and Automox↔Zendesk (files 01/02): remediation pushed into the workflow tool.
- **Security update, 2026-08-10:** https://www.n-able.com/blog/n-central-security-update-august-10-2026 `[CS: MEDIUM]` *(not fetched)* — N-able's own posture, not product capability. Do not conflate.
- **Press room index:** https://www.n-able.com/press/press-releases

---

## NA6. Published-surface comparison — N-able vs. the two vendors Beth named

**A sorting of claims already recorded in files 01 and 04. Not a synthesis. Every cell traces to a tagged claim above or in file 01.**

| | N-able | NinjaOne | Action1 |
|---|---|---|---|
| Vuln + patch loop, published | **Public Preview**, 2026-07-24 | **GA**, 2026-03-16 | Autonomous patching, shipped |
| Windows patch policies | **"Coming Soon"** as of 2026-07-24 | GA | Shipped |
| macOS | Early Access Preview | **Not named** in vuln mgmt release | Shipped |
| Linux | GA | GA | Shipped Dec 2025 |
| 3rd-party app catalogue | "Over 550" | Not stated | Not stated |
| Intune integration, published | **None found** | Announced 2025-11-18, early access | Announced Ignite Nov 2025 |
| AI assistant | N-zo GA 2026-09-15, **advisory only** | Patch Intelligence AI, **acts** | **No AI claims found** |
| AI that runs scripts on devices | **Roadmap ("Script Expert")** | — | — |
| MCP server | Yes, 2026.2 — "query data" (paraphrase) | Not found | Not found |
| Free tier | Not found | Not found | **Free to 200 endpoints** (`[CS: MEDIUM]`) |
| Access gate | **Ecoverse prerequisites + v26.2+** | — | — |

**Confidence on this table is the confidence of its weakest cell.** The N-able "coming soon"/"public preview" cells are `[CS: HIGH]` (fetched). The Action1 cells are largely `[CS: MEDIUM — snippet]`. The "Intune integration: none found" cell is `[CS: MEDIUM]` — **it means this scout did not find one, not that none exists.** Beth is inside the company and holds knowledge this scout cannot reach; her `[CS: UNKNOWN]` overrides my `[CS: MEDIUM]` on anything N-able-internal.
