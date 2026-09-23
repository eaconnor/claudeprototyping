# Secondary B / 02 — Vendors claiming AI that correlates signals and takes governed action

Task item 4. For each: who claims it, what they actually ship, and whether the claim is substantiated in docs or only in marketing copy.

Ordered strongest primary source first.

---

## ★ C1. MICROSOFT — Security Copilot agents in Intune

**Strongest primary source in the whole dossier. Verbatim admin documentation, not marketing.**

### C1a. Vulnerability Remediation Agent — PUBLIC PREVIEW

**Bucket: (b) PUBLIC PREVIEW, but (a) fully DOCUMENTED**

- **Primary, fetched verbatim:** Microsoft Learn, "Vulnerability Remediation Agent Overview and Set Up". https://learn.microsoft.com/en-us/intune/copilot/agents/vulnerability-remediation-agent
  - `ms.date: 2026-05-28` · `updated_at: 2026-08-25` · `ai-usage: ai-assisted` (Microsoft's own metadata flags the doc as AI-assisted) `[CS: VERIFIED]`
- **Source repo (open):** https://github.com/MicrosoftDocs/memdocs/blob/main/intune/copilot/agents/vulnerability-remediation-agent.md `[CS: HIGH]`
- **Announcement blog:** https://techcommunity.microsoft.com/blog/intunecustomersuccess/triage-vulnerabilities-with-the-vulnerability-remediation-agent-now-in-public-pr/4528646 — **FETCH FAILED, no content retrieved.** `[CS: UNKNOWN]` Search snippet says public preview for all customers since June 2026, previously limited preview. `[CS: MEDIUM — snippet]`

**Doc-verified status:** "This feature is in public preview." `[CS: VERIFIED]`

**Doc-verified behaviour — how it works, per the four numbered steps in the doc:**
1. **Data collection** — collects vulnerability data from Microsoft Defender Vulnerability Management, analysing CVEs across managed devices `[CS: VERIFIED]`
2. **Analysis and prioritization** — prioritises "based on factors like CVSS scores, exposure impact, and device count" `[CS: VERIFIED]`
3. **Remediation guidance** — "step-by-step remediation instructions tailored to Intune capabilities, **including policy recommendations and configuration guidance**" `[CS: VERIFIED]` ← **vulnerability signal producing configuration output. Documented, not marketed.**
4. **Tracking and reporting** — retains record of applied remediations for tracking over time `[CS: VERIFIED]`

**Doc-verified governance model — this is the material that matters most for assumption #6:**
- Agent produces **suggestions surfaced in the Intune admin center**; admin drills in and decides. `[CS: VERIFIED]`
- Per the agents index page: agents "observe, reason, and act **with oversight and review from your administrators**". `[CS: VERIFIED]`
- **Runs under a dedicated non-human identity:** Microsoft Entra **agentic identity** + corresponding "agentic user", provisioned into the customer's tenant at setup. Agent runs under permissions delegated to that agentic user, **not under a human user account.** `[CS: VERIFIED]`
- **The delegated Intune permissions are READ-ONLY:** `Mobile apps / read`, `Device configurations / read`. To set up/view, also `Security Tasks / read`, `Organization / read`. Defender side: permissions "equivalent to the Unified RBAC Security Reader role". `[CS: VERIFIED]` ← **the agent is architecturally incapable of applying a change. The governance gate is an RBAC scope, not a UI confirmation dialog.**
- **"Run Readiness Check"** button — agent runs are *disabled* until all required permissions are delegated and the check passes. `[CS: VERIFIED]`
- Identity migration deadline: human-user-identity auth "expires 90 days after the release of agentic identity"; switch to agentic identity is **permanent and non-revertible**. `[CS: VERIFIED]`

**Doc-verified limitations — quote these, they are the seams:**
- "An admin must manually start the agent. **After the agent starts, there are no options to stop or pause it.**" `[CS: VERIFIED]` ← **directly contradicts the "pause button" trust feature Automox's own research names as a prerequisite for trust. See C6.**
- Can only be started from inside the Intune admin center. `[CS: VERIFIED]`
- **Windows client only** — Windows Server editions excluded from both CVE counts and the exposed-device list. `[CS: VERIFIED]`
- Exposed device list limited to devices found in Entra. `[CS: VERIFIED]`
- **"The agent doesn't support scope tags in public preview."** `[CS: VERIFIED]`
- **Multi-tenant / MSP-hostile disclosure, verbatim from the doc:** "Admins who access the Intune admin center can see data that the agent reports through agent suggestions. This data might be visible even when it's outside the admin's assigned Intune roles or scope." `[CS: VERIFIED]` ← **a documented data-boundary leak. For an MSP with segregated technician scopes this is a live problem.**
- **Public cloud only. No government clouds.** `[CS: VERIFIED]`

**Doc-verified licensing stack — the cost of Microsoft's version:**
- Microsoft Intune Plan 1 `[CS: VERIFIED]`
- **Microsoft Security Copilot with sufficient security compute units (SCUs)** `[CS: VERIFIED]` ← consumption-metered
- **Microsoft Defender Vulnerability Management** — via Defender for Endpoint P2 **or** Defender Vulnerability Management Standalone `[CS: VERIFIED]`
- Plugins required: Microsoft Intune + Microsoft Defender `[CS: VERIFIED]`

### C1b. Three more Intune agents — the config and approval surface

**Bucket: (a) DOCUMENTED on the agents index page**

- **Primary, fetched verbatim:** https://learn.microsoft.com/en-us/intune/copilot/agents/ · `ms.date: 2025-11-10` · `updated_at: 2026-07-01` `[CS: VERIFIED]`

| Agent | Doc-verified description |
|---|---|
| **Change Review Agent** | "evaluates the effect of **approval requests** in Intune and makes recommendations for the actions you can take" `[CS: VERIFIED]` ← **an AI agent whose entire job is reasoning about approval gates. Shipped inside Microsoft's stack.** |
| **Device Offboarding Agent** | identifies stale/misaligned devices across Intune **and Microsoft Entra ID**, "providing actionable insights and **requiring admin approval before offboarding** any devices" `[CS: VERIFIED]` ← cross-product signal correlation + explicit approval gate + an action |
| **Policy Configuration Agent** | import documents or plain-language instructions → agent finds matching settings in the **Intune settings catalog**, recommends values, "**You can then use the agent to create a policy** with those settings and their values" `[CS: VERIFIED]` ← **this one does take an action: it creates policy.** Configuration signal, generative. |
| **Vulnerability Remediation Agent** | "uses Defender data to monitor vulnerabilities and prioritize remediation with AI-driven risk assessments" `[CS: VERIFIED]` |

**Doc-verified ecosystem note:** parallel agent families exist in Microsoft Entra, Microsoft Defender, and Microsoft Purview, each linked from this page. `[CS: VERIFIED]`

**Feature overview page, not fetched:** https://learn.microsoft.com/en-us/intune/copilot/ `[CS: MEDIUM]`

**Third-party explainers, not fetched, listed as leads:** https://jannikreinhard.com/security-copilot-agents-intune/ · https://www.wintive.com/tutorials/microsoft-intune/security-copilot-microsoft-intune-admin-guide/ · https://www.trustedtechteam.com/blogs/security/microsoft-security-copilot-key-features-agents-e5-capabilities `[CS: LOW]` community blogs

**Assembly note for Beth, offered as an ingredient and not a conclusion:** across C1a and C1b, Microsoft has documented agents touching vulnerability (Defender), configuration (settings catalog), device/identity state (Entra), and approval workflow — four of Ecoverse's signal types — each as a separate agent with its own gate. I found **no Microsoft claim that these four agents correlate with each other.** They are siloed per-scenario. `[CS: HIGH]` on the per-agent facts; `[CS: MEDIUM]` on the absence of cross-agent correlation, since absence in two fetched pages is not absence in the product.

---

## C2. TANIUM — "governed execution layer", explicit sign-off language

**Bucket: mixed — vendor says GA; claims are (c) until docs are checked**

- **Primary:** Tanium press release, Black Hat USA 2026, 2026-08-03. https://www.tanium.com/press-releases/tanium-delivers-autonomous-security-at-black-hat-usa-2026
- **Mirror:** BusinessWire 2026-08-03. https://www.businesswire.com/news/home/20260803037958/en/Tanium-Delivers-Autonomous-Security-at-Black-Hat-USA-2026-Empowering-Operators-to-Outpace-AI-Accelerated-Threats
- **Independent:** Help Net Security, 2026-08-04. https://www.helpnetsecurity.com/2026/08/04/tanium-expands-autonomous-security-across-ai-exposure-management-and-secops/ *(not fetched)*
- **Earlier:** BusinessWire, Gartner SRM Summit, 2026-06-02. https://www.businesswire.com/news/home/20260602863514/en/Tanium-Unveils-AI-Driven-Product-Innovations-at-Gartner-Security-Risk-Management-Summit-2026 *(not fetched)*
- **Corporate positioning:** https://www.tanium.com/ — "Autonomous IT, endpoint intelligence and control"

**Named, with vendor-stated status:**
- **GA:** Tanium Atlas (described as an "autonomous operating system"), Agentic Performance Analysis, Background AI Agents, Tanium Automate (expanded to endpoint-level sequence execution), External Attack Surface Management (Censys), Attack Path Mapping, Agent-Guided Threat Hunting `[CS: HIGH — vendor-stated GA]`
- **Private preview:** Tanium + Google Threat Intelligence integration `[CS: HIGH]`

**Governance language — the closest published match to "governed action with approval gates" I found anywhere:**
- Harman Kaur, Tanium CTO: **"Every action is auditable, boundaries are enforced, and everything is grounded in what's actually happening on the endpoint."** `[CS: HIGH — quote]`
- "Limits defined by the operator, and can be reviewed after the fact" `[CS: HIGH — claim]`
- **"Governed execution layer"** `[CS: HIGH — claim]`
- Tanium homepage: "Your team and your AI agents act on the same real-time data, **with guardrails and sign-off on every action**." `[CS: MEDIUM — snippet from homepage, not fetched]` `[WOBBLY]` — "sign-off on every action" is the single most Ecoverse-adjacent sentence found. **It is homepage marketing copy retrieved via a search snippet. Do not quote it until someone opens the page.**

**Tanium Atlas MCP Server — the mechanism:**
- Exposes "approved Tanium data and actions as tools" inside Claude, Microsoft Security Copilot, Copilot Studio, and other MCP-compatible clients `[CS: MEDIUM — snippet]`
- "Secure broker between enterprise-approved AI applications and the Tanium platform"; "centralizing policies, guardrails, and auditing"; "extensible design allows organizations to tailor **which actions are exposed, to whom, and under what conditions**" `[CS: MEDIUM — snippet]` ← **this is a per-action authorization policy, described in public marketing.** `[WOBBLY]` — snippet-sourced.

**Configuration-signal claim:**
- **Tanium Enforce** — "turning configuration standards into autonomously enforced guardrails across the enterprise", policy setup based on **CIS** benchmarks, "continuous, autonomous, **closed-loop** enforcement at scale", "compressing time to remediation from weeks to minutes" `[CS: MEDIUM — snippet]` `[WOBBLY]` — "weeks to minutes" is unsubstantiated marketing.

**Correlation-across-signals claim (fetched):** Censys internet-exposure data + Tanium endpoint intelligence + Google Threat Intelligence, correlating **external exposure with internal network reachability** and live threat indicators. `[CS: HIGH — claim]` **Note the axis: this is external↔internal correlation, not patch↔vuln↔config correlation.** Different axis from Ecoverse.

**Also:** "Trace slow machine root causes in moments, replacing hours of manual log correlation" `[CS: HIGH — claim]` `[WOBBLY]` unquantified.
**Context piece:** https://www.tanium.com/resources/esg-ai-endpoint-management-and-security-convergence — ESG analyst content on AI in endpoint management/security convergence. *Not fetched.* `[CS: MEDIUM]` Vendor-commissioned analyst material; treat accordingly.
**Vendor's own agentic-security explainer:** https://www.tanium.com/blog/what-is-agentic-ai-security *(not fetched)*

---

## C3. QUALYS — Agent Val, Enterprise TruRisk Management, the "ROC"

**Bucket: (a) vendor-stated GA; correlation claims (c)**

- **Primary, fetched:** Qualys press release, "Qualys Debuts Industry's First AI Agent for Safe Exploit Validation and Autonomous Remediation", **2026-03-23**. https://www.qualys.com/company/newsroom/news-releases/usa/qualys-debuts-industrys-first-ai-agent-for-safe-exploit-validation
- **Vendor technical blog, same date:** https://blog.qualys.com/product-tech/2026/03/23/meet-agent-val-closing-the-validation-gap-in-exposure-management-at-machine-speed-with-agentic-ai *(not fetched)*
- **Independent:** Help Net Security, 2026-03-23. https://www.helpnetsecurity.com/2026/03/23/qualys-agent-val/ *(not fetched)*
- **Category framing:** "ROC vs CTEM", 2026-01-30. https://blog.qualys.com/qualys-insights/2026/01/30/roc-vs-ctem-how-a-risk-operations-center-evolves-beyond-continuous-threat-exposure-management-in-2026
- **Earlier agentic positioning:** 2025-08-04. https://blog.qualys.com/product-tech/2025/08/04/from-exposure-whack-a-mole-to-autonomous-cyber-risk-management-meet-agentic-ai-on-the-qualys-platform `[flagged: 2025 — check for supersession]`
- **Sibling agent:** Agent Grant, identity attack surface, 2026-01-06. https://blog.qualys.com/product-tech/2026/01/06/agent-grant-agentic-ai-identity-security
- **MSP-relevant:** "The Rise of Managed Risk Operations: the new Qualys mROC Portal helps Partners Scale the ROC", 2026-03-24. https://blog.qualys.com/product-tech/2026/03/24/the-rise-of-managed-risk-operations-how-the-new-qualys-mroc-portal-helps-partners-scale-the-risk-operations-center *(not fetched)* ← **this is a channel/MSP play. Directly relevant to N-able's buyer.**
- **Federal demand driver:** CISA BOD 26-04 activation guide, 2026-06-10. https://blog.qualys.com/qualys-insights/2026/06/10/how-federal-agencies-can-activate-a-risk-operations-center-roc-to-meet-cisa-bod-26-04 `[CS: MEDIUM]`

**Availability:** Generally Available. `[CS: HIGH — vendor-stated]`

**Correlation claim — the widest signal set claimed by anyone in this dossier:**
- ETM described as "the industry's first unified, Agentic AI-augmented risk operations center (ROC)" bringing together: **asset and identity inventory, risk signals from Qualys and third-party sources, business context, and automated remediation workflows** `[CS: MEDIUM — snippet]`
- Agent Val correlates: exposure signals across assets, attacker relevance, business context, asset criticality, **compensating controls** `[CS: HIGH — from fetched press release]` ← **"compensating controls" is a configuration-state signal. This is the closest published claim to patch+vuln+config correlation.** `[WOBBLY]` — I am reading "compensating controls" as a configuration signal; that is my inference from a feature phrase, not a vendor statement.
- Agentic AI as "digital workforce" across scoping, discovery, prioritization, validation, mobilization `[CS: MEDIUM — snippet]`

**What it claims to do:** continuously decides what to validate first → **TruConfirm** safely proves whether a risk is genuinely exploitable → drives next-best remediation action → **revalidates the exact exploit path** to confirm closure. `[CS: MEDIUM — snippet]`

**TruRisk Eliminate — four named safeguards. This is the substantive governance ingredient:**
1. **AI-powered patch reliability scores** ← same primitive as NinjaOne's "patch confidence scoring"
2. **Phased deployment waves**
3. **Robust rollback**
4. **Patchless mitigation support**

`[CS: MEDIUM — snippet]` `[WOBBLY]` — snippet-sourced feature list. **But note: safeguards 1–3 are convergent with Automox's independently-researched trust triad (C6) and with NinjaOne's Patch Intelligence AI. Three vendors, same primitives.**

**Quantified claims — DO NOT CITE without the source doc:** "90%+ reduction in remediation noise", "70% faster time-to-remediate on confirmed exploitable findings", "over 1,600 CVEs covered", "no new sensor footprint required". `[CS: MEDIUM — from fetched press release, but vendor-generated with no published methodology]` `[WOBBLY]` **These are exactly the kind of numbers that get quoted into a deck and cannot be defended. Trap flagged.**

**Explicit negative finding, checked directly:** "The press release contains **no explicit language requiring human approval or governance gates**. Agent Val appears designed for autonomous operation." `[CS: HIGH]` — Qualys is the most autonomous and least gated published position found.

**Quotes:**
- Sumedh Thakar, Qualys CEO: "Having a vulnerability does not equal risk. What matters is whether an attacker can successfully reach and execute an exploit path." `[CS: HIGH]`
- Florian Bielak, CISO, BitMEX: "The primary challenge is no longer discovery—it is the strategic allocation of remediation capital." `[CS: HIGH]`

---

## C4. IVANTI — Neurons, "built-in guardrails for policy, approvals and data context"

**Bucket: (b) CONTROLLED RELEASE — explicitly not auto-enabled**

- **Primary, fetched:** Ivanti press release, "Ivanti Enhances Autonomous Capabilities Across IT and Security Operations with AI-Driven Neurons Platform". Fetched content gives **2026-04-21, published 2026-07-16** — *date is internally inconsistent in the source; verify.* https://www.ivanti.com/company/press-releases/2026/ivanti-enhances-autonomous-capabilities-across-it-and-security-operations-with-ai-driven-neurons-platform `[CS: MEDIUM on date]`
- **Quarterly release page:** https://www.ivanti.com/releases/2026/q2 *(not fetched — this is where doc-level substantiation would live)*
- **Independent:** SiliconANGLE, 2026-01-27, "Ivanti expands Neurons platform with agentic AI and asset visibility upgrades". https://siliconangle.com/2026/01/27/ivanti-expands-neurons-platform-agentic-ai-asset-visibility-upgrades/ *(not fetched)*
- **Product pages:** https://www.ivanti.com/products/ivanti-neurons-for-patch-management · https://www.ivanti.com/products/autonomous-patch-management · datasheet https://www.ivanti.com/resources/datasheets/ivanti-neurons-for-patch-management · solution brief https://www.ivanti.com/resources/solution-briefs/autonomous-patch-management
- **Intune-specific SKU:** https://www.ivanti.com/products/ivanti-neurons-patch-for-intune ← **Ivanti sells a named Intune patch product. See file 03.**

**Named features:** Neurons for Patch Management – **Continuous Compliance**; Neurons AI self-service agent (agentic AI for ITSM); Neurons for MDM – Sovereign Edition (EU); ISA6500/ISA8500 appliances; Connect Secure 25.1.2.0. `[CS: HIGH]`

**Availability, fetched verbatim:** Agentic AI is under **"controlled release"** — "This feature will **not** be enabled automatically. Customers can request the addition of this exciting capability to their existing environment." `[CS: HIGH]`

**Governance language:** agentic AI has **"built-in guardrails for policy, approvals and data context"**, enabling "autonomous resolution" while maintaining governance. `[CS: HIGH — claim]` `[WOBBLY]` — three-word feature phrase. No mechanism published in this release. **This is precisely the kind of phrase to flag: "approvals" appears as a noun in a guardrail list, and I cannot tell from published material whether that means a gate, a routing step, or a ticket field.**

**Continuous Compliance claim:** automated framework that identifies out-of-compliance endpoints and **patches them outside scheduled windows** `[CS: MEDIUM — snippet]` ← **compliance signal triggering a patch action. Two of Ecoverse's five signals, and the loop is explicitly unattended.**

**Cross-product correlation claim:** "Neurons for Patch Management natively integrates with other Ivanti Neurons products to create full-circle workflows for identifying and remediating software vulnerabilities" `[CS: MEDIUM — snippet]` `[WOBBLY]` — "natively integrates" and "full-circle workflows" are marketing abstractions. No mechanism.

**Explicit negative finding, checked directly against the fetched release:** "The document does **not** explicitly describe correlating these three signal types [patch + vulnerability + configuration]. It discusses patching out-of-compliance endpoints and responding to vulnerability volume increases, but stops short of detailing an integrated signal correlation mechanism." `[CS: HIGH]`

**Marketing framing to note:** Ivanti uses the phrase **"patch apocalypse"** for accelerating vulnerability volume. `[CS: MEDIUM — snippet]`

**Quotes:**
- Dennis Kozak, CEO: "Organizations need systems that can not only detect issues, but also decide and act securely" `[CS: HIGH]`
- Robert Hanson, CIO: "our team was spending the bulk of our time handling repetitive requests" `[CS: HIGH]`

**Unrelated but surfaced — do not conflate:** two medium-severity CVEs patched in Neurons for ITSM, CVE-2026-4913 (CVSS 5.7, improper protection of alternate path) and CVE-2026-4914 (CVSS 5.4, stored XSS). SecurityWeek. https://www.securityweek.com/two-vulnerabilities-patched-in-ivanti-neurons-for-itsm/ `[CS: HIGH]` This is about Ivanti's own security posture, not its product capability.

---

## C5. MANAGEENGINE — Patch Troubleshooting Agent. The most explicit correlation mechanism found.

**Bucket: (a) SHIPPED — "Available on all plans", cloud only**

- **Primary, fetched:** https://www.manageengine.com/products/desktop-central/ai/patch-troubleshooting.html — **no date on the page** `[CS: MEDIUM on recency]` `[WOBBLY]`
- **AI hub:** https://www.manageengine.com/products/desktop-central/ai/ — "AI-Powered Endpoint Management & Security"
- **Vulnerability module:** https://www.manageengine.com/products/desktop-central/vulnerability-management.html
- **Patch module:** https://www.manageengine.com/products/desktop-central/patch-management.html
- **Admin help (closest thing to docs):** https://www.manageengine.com/products/desktop-central/help/patch_management/patch_management.html · https://www.manageengine.com/products/desktop-central/help/threats-and-patches.html

**Availability, fetched:** "Available on all plans", "Cloud only". `[CS: HIGH]`

**Signals it claims to correlate — fetched verbatim from the product page:**
> "Windows Update Agent logs, device telemetry, disk health, network status, and conflict indicators"

and the process description: "autonomously retrieves device telemetry, inspects Windows Update Agent logs, checks disk space and reachability, scans for conflict signatures, **correlates the signals**, and returns a root cause diagnosis with prioritized fix steps."
`[CS: HIGH — claim, verbatim from vendor page]`

**Action model — fetched, and unusually explicit:**
- **Diagnoses only. Does not remediate.** "surfaces a prioritized list of plain-language remediation steps for the technician to review and execute" `[CS: HIGH]`
- **"Full analyst control is preserved. The agent performs the investigation, while the technician decides on the fix."** `[CS: HIGH — quote]`
- **No approval gate** — because there is no action to gate. Technician executes at discretion. `[CS: HIGH]`

**Compliance module claim:** audits against **CIS, UK Cyber Essentials, NIST CSF**, and ManageEngine Security Benchmarks, to establish secure baseline configurations. `[CS: MEDIUM — snippet]` ← **UK Cyber Essentials is named. Relevant to Beth's jurisdiction.**

**Platform breadth claim:** "AI-powered threat detection, context-aware patching, JIT privilege management, and DEX monitoring, all from a single agent and unified console" `[CS: MEDIUM — snippet]` `[WOBBLY]` — "context-aware patching" is a feature name I cannot map to a mechanism.

**Note on the axis:** ManageEngine correlates signals to explain **why a patch failed** — an operational-diagnosis axis. Not to decide **what to patch** — a risk axis. Different problem from NinjaOne/Qualys. Carrying this as an ingredient, not a conclusion.

**Trap flagged:** search results for ManageEngine surfaced `docrack.me`, a software-piracy site. Ignored, not catalogued. Do not follow.

---

## C6. AUTOMOX — the trust-primitive research, and its own AI

**Bucket: (a) Otto AI shipped; the report is (a) published research**

- **2026 State of Endpoint Management Report:** https://www.automox.com/blog/the-2026-state-of-endpoint-management-report-is-here *(not fetched)*
- **AEM security argument:** https://www.automox.com/blog/autonomous-endpoint-management-isnt-just-efficiency-its-a-security-imperative
- **Otto AI launch coverage:** APMdigest. https://www.apmdigest.com/automox-launches-otto-ai-generative-ai-agent *(no date captured)* `[CS: MEDIUM on date]` — **the "first application of generative AI in IT operations" claim suggests 2023–24 vintage. Flag as potentially stale; verify before citing as current.** `[WOBBLY]`
- **Ask Otto product page:** https://www.automox.com/platform/it-automation/generative-ai/ask-otto
- **Corporate positioning:** https://automox.com/ — "Autonomous Endpoint Management at AI Speed"
- **Executive byline:** IT Pro, "Preparing for the Autonomous Era in ITOps". https://www.itpro.com/technology/preparing-for-the-autonomous-era-in-itops *(not fetched)*

**★ The single most useful ingredient in this file for a governed-action brief:**
Automox's 2026 report is said to identify **three features that build trust in autonomous systems**:
1. **Automatic rollbacks**
2. **Pause buttons**
3. **Audit logs**

— "which give IT teams the ability to maintain oversight while allowing systems to operate at machine speed."
`[CS: MEDIUM — snippet, report not fetched]` `[WOBBLY]`

**Why this is load-bearing and also a trap:** it is a vendor-published, buyer-derived requirements list for exactly the governance problem Ecoverse is trying to solve. It is *also* vendor marketing research with unpublished methodology. **Use it to generate hypotheses, not to claim validation.** And note the cross-reference: Microsoft's documented Vulnerability Remediation Agent explicitly **cannot be paused** ("no options to stop or pause it", C1a). That is a documented primary-source fact sitting against a snippet-sourced requirement. The tension is real; the asymmetry in source quality is also real.

**Report statistics — DO NOT CITE:** "94% of organizations still rely on manual processes", "over 50% take more than five days to patch critical vulnerabilities". `[CS: LOW]` `[WOBBLY]` Snippet-sourced, vendor-generated, methodology unpublished. **Exactly the shape of number that ends up in a deck undefended. Trap flagged.**

**Otto AI / Ask Otto — what it actually is:** plain-English commands to automate tasks across Windows/macOS/Linux fleets; drafts custom PowerShell and Bash scripts. `[CS: MEDIUM — snippet]` **This is script generation, not signal correlation.** Do not let "AI" in the name imply correlation. `[WOBBLY]` flagged on any reading beyond scripting.

**Also:** Automox launched an AEM app for **Zendesk** — remediate endpoint issues from support tickets. `[CS: MEDIUM — snippet]` Pattern-match to Action1's Jira connector (file 01, A4): both are pushing remediation into the ticketing system rather than pulling the technician into the endpoint console.

**Analyst/aggregator listings, not fetched:** https://www.apmdigest.com/apmbuyersguide/automox · https://yespress.io/automox `[CS: LOW]`

---

## C7. RAPID7 — Remediation Hub, and Active Patching **powered by Automox**

**Bucket: (a) release-noted in docs; correlation claims (c)**

- **Product:** https://www.rapid7.com/products/command/exposure-management/
- **Docs — Remediation Hub:** https://docs.rapid7.com/exposure-command/remediation-hub/ *(not fetched)*
- **Docs — "Prioritize and act on remediations":** https://documentation.rapid7.com/exposure-command/response-remediation/prioritize-act-on-remediations.htm *(not fetched — this is where an approval-gate mechanism would be documented if it exists)*
- **Release notes, 2026-05:** https://docs.rapid7.com/insight/release-notes-2026-may/ *(not fetched)*
- **Release notes, 2026-02:** https://docs.rapid7.com/insight/release-notes-2026-february/ *(not fetched)*
- **Press release:** "Rapid7 Accelerates Exposure Remediation with AI-Generated Risk Insights and Enhanced Vulnerability Intelligence". https://www.rapid7.com/about/press-releases/rapid7-accelerates-exposure-remediation-with-ai-generated-risk-insights-and-enhanced-vulnerability-intelligence/ *(not fetched, no date captured)*
- **Independent:** Help Net Security, 2026-03-20. https://www.helpnetsecurity.com/2026/03/20/rapid7-exposure-command-cloud-security-capabilities/
- **Blog:** https://www.rapid7.com/blog/post/em-path-from-prioritized-exposures-to-remediation-progress/
- **Original Exposure Command launch:** 2024-08-05. https://www.rapid7.com/blog/post/2024/08/05/rapid7-introduces-exposure-command-to-eliminate-the-security-visibility-gap/ `[flagged: pre-2025, stale for capability purposes — useful only for lineage]`

**★ C7a. The OEM finding — highest-value ingredient in this file for assumption #6:**
- **"Rapid7 announced Active Patching, a fully automated patching and remediation solution integrated into Exposure Command, powered by Automox."** `[CS: MEDIUM — snippet]`
- **Source:** APMdigest, "Rapid7 Launches Active Patching, Powered by Automox". https://www.apmdigest.com/rapid7-launches-active-patching-powered-automox *(not fetched, no date captured)* `[CS: MEDIUM]` `[WOBBLY]`

**Why this matters as raw material:** an exposure-management vendor did not build patch execution. It **rented** it. If patch execution is OEM-able, the question "can the advantage be copied" becomes partly "can it be *bought*". **Verify this before using it — it is snippet-sourced from an aggregator and the date is unknown.** If it holds, it is the strongest single data point in the dossier against a build-cost moat.

**C7b. Remediation Hub — May 2026 release-note content:**
- "expanded asset-level visibility for **patch management and endpoint protection coverage**" — see which solutions cover each asset, **identify the source of that data**, and **whether a reboot is still required after patching** `[CS: MEDIUM — snippet from release notes]` ← **tool-coverage correlation: which control covers which asset. A distinct correlation axis from anything else in this file.**
- Remediation Hub "automatically surfaces the top areas teams need to focus on and elevates the mitigation activities that would have the largest impact in reducing the overall risk score" `[CS: MEDIUM — snippet]`

**C7c. February 2026:**
- **Active Risk** consolidated as "the single risk strategy across Rapid7", replacing legacy risk strategies `[CS: MEDIUM — snippet]`
- **Vulnerability Intelligence** — Rapid7 Labs exploitation intelligence + customer environment data, integrated across Exposure Command and Threat Intelligence Hub `[CS: MEDIUM — snippet]`

**C7d. March 2026 — runtime correlation:**
- eBPF-based sensors + AI baselining of application behaviour to **"correlate runtime signals with posture findings and business context"** `[CS: MEDIUM — snippet]` ← **runtime↔posture correlation. Yet another axis.**
- Continuous monitoring of AI agents/AI-driven workloads in cloud `[CS: MEDIUM — snippet]`

**Not checked:** whether Rapid7 documents any approval gate on Active Patching. The doc URL is listed above. `[CS: UNKNOWN]`

---

## C8. Summary table — correlation axis and action model, as claimed

**This table is a sorting of the above, not a synthesis. Every cell traces to a claim above. Read the confidence tags on the source claims before using any row.**

| Vendor | Signals it claims to correlate | Does it act? | Gate, as published | Best source type |
|---|---|---|---|---|
| **Microsoft Intune agents** | Defender vuln → Intune config/policy; Entra device state (siloed per agent) | Policy Configuration Agent **creates policy**; Vuln Remediation Agent **suggests only** | **RBAC read-only scope + admin review.** Documented. **Cannot be paused once started.** | ★ **Verbatim admin docs** |
| **Tanium** | External exposure ↔ internal reachability ↔ threat intel; config via Enforce | Yes — autonomous enforcement, endpoint-level sequences | "Guardrails and sign-off on every action"; per-action MCP authorization | Press release + homepage snippet |
| **Qualys** | Exposure + attacker relevance + business context + asset criticality + **compensating controls** | Yes — validate, mitigate, revalidate | **None published.** Safeguards are reliability score / phased waves / rollback / patchless | Press release (fetched) |
| **Ivanti** | Claims "full-circle workflows"; mechanism unpublished | Yes — patches out-of-compliance endpoints outside windows | "Built-in guardrails for policy, **approvals** and data context" — phrase only | Press release (fetched) |
| **ManageEngine** | **Explicit and verbatim:** WUA logs + telemetry + disk + network + conflict indicators | **No — diagnoses only** | N/A. "Full analyst control is preserved." | ★ Vendor product page (fetched, verbatim) |
| **NinjaOne** | Inventory telemetry → CVE → patch | Yes — autonomous patching, Win/Linux | **None found in 2 sources.** Audit-readiness only | Press release + 3 independent publishers |
| **Action1** | CVSS + CISA KEV prioritisation | Yes — autonomous patching | **None found.** No AI claims in Jira release at all | PR wire (fetched) + snippets |
| **Rapid7** | Tool-coverage per asset; runtime ↔ posture ↔ business context | Yes — **via OEM'd Automox** | Unknown — doc not checked | Release notes (snippet) |
| **Automox** | Otto = script generation, **not correlation** | Yes — patch/config execution | Publishes the **rollback / pause / audit-log** trust triad | Vendor research (snippet) |
