# Ecoverse Gap Analysis — per Laura's note on the Killer-App Hypothesis slide

**Trigger:** Laura reviewed Mackie's "Emerging Killer-App Hypothesis" slide — verdict "directionally it looks good" — then raised two definitional gaps and asked for a two-part gap analysis. This document answers that request in the order she asked it.
**Source:** `scout/ecoverse/ecoverse-gtm-deck-2026-09-09-UPDATE.md`, Section 04 capability tables (Platform Admin, Trial UX/Onboarding/BizApps, Core Features, Differentiators, Classic N-sight Features Not Offered). All counts below are direct counts against those tables, not estimates.
**Tier:** MEAL (structured cross-referencing of existing source tables, no new research).

---

## Part 1 — The two open definitions Laura flagged

Neither term is defined anywhere in the current deck corpus. Naming what's known and what isn't, rather than guessing at a definition to fill the gap.

### "Identity" — why does it matter?
[CS: UNKNOWN — not defined in the deck]. "Identity" does not appear as a named capability row anywhere in Section 04. The deck's *adjacent* security/access material is: SSO ("New login with SSO" — Done, Section 04 Platform Admin), RBAC and permissions (named in the "Trusted Action" pillar of the Killer-App slide and as "User permissions" — In Dev, Platform Admin), and audit trail (In Dev). Laura's framing — "it's coming from a security need" — points at something upstream of all of these: *whose identity is acting* (a technician, a Coworker, a customer's own Entra/Azure AD account) is the precondition for permissions, RBAC, and audit trail to mean anything. None of those three rows currently specify what identity system they authenticate against beyond "New login with SSO." **This needs a decision, not a lookup**: is identity scoped to (a) N-able's own login/SSO for technicians, (b) the customer's own IdP (Entra ID etc.) for their end users/devices, or (c) both — and how do Coworkers get an identity of their own for the audit trail to attribute actions correctly? The deck currently answers none of these.

### "RT system state" — what is it, why does it matter, what do we monitor?
[CS: UNKNOWN — named once, never defined]. The only occurrence anywhere in the corpus is in the Killer-App slide's "System of Action" capability list: *"Cross-OS patching • vuln management • secure scripting • asset inventory • software management • **RT system state** • onboarding • remote access • monitoring • reporting."* It sits between "software management" and "onboarding" with no further elaboration in this slide or any other. Laura's three candidate readings — AI agents, security/compliance, "something else" — are all plausible and the deck doesn't rule any out:
- If it means **real-time endpoint configuration/exposure state**, it overlaps heavily with pillar 1 ("Deep Endpoint Intelligence — real-time endpoint visibility into configuration, exposure and operational state") — in which case "RT system state" may just be that pillar's shorthand, and the capability list is restating pillar 1 rather than naming something new.
- If it means **live AI-agent/Coworker execution state** (what a Coworker is doing right now, mid-run), that's a different and currently unaddressed thing — closer to the "Trusted Action" pillar's audit trail, but for in-flight actions rather than completed ones. This is the reading most relevant to the SDT/governance concern already flagged in the idea-chess board (§1.4, §1.8) — if a technician can't see live Coworker state, the trust/visibility gap gets worse, not better.
- If it means **security/compliance posture state**, it overlaps with the "Cybersecurity assessment/reports" row (Differentiators table — status "TBC per Taha research").
**This needs the same kind of decision as identity**: pick one reading (or name it as a composite of more than one) before scoping what "monitoring" means for it — right now the term could mean three different builds with three different owners.

---

## Part 2 — Gap to completion, MVP for NCA

Filtered to items the source tables explicitly tag **Phase 1**, plus the Trial UX/Onboarding/BizApps table (the deck's own Appendix names this its own project strand, "zero friction, self serve," and calls Phase 1 "critical path" for the feature/capability strand generally — so this table is included in full even where individual rows don't carry an explicit phase tag).

**What "NCA" means:** [CS: UNKNOWN] — the deck uses "NCA" repeatedly (e.g. "No Classic N-sight dependency for new NCA customers") but never expands the acronym in this corpus. Carried here as the deck's own term, not expanded, rather than guessed at.

### Platform Administration — Phase 1-tagged items
| Capability | Status | N-sight benefit today | Gap |
|---|---|---|---|
| User management | 2027 TBC ("Ksenia: 2027 candidate") | No | **Full gap** — not expected until 2027, after every other Phase 1 item |
| User permissions | In Dev (expected 2026) | Minor | Partial — in progress, not shipped |
| Audit log | In Dev (arrives 2026) | Medium | Partial — in progress, not shipped |
| New login with SSO | **Done** | N/A | None |
| Ability to create Departments | 2027 TBC ("likely a requirement", TBC) | No | **Full gap**, and status itself is unconfirmed as a requirement |
| Ability to move devices between Departments | No status assigned | — | Undefined — depends on Departments landing first |

**Count:** of 6 Phase-1-relevant Platform Admin items, 1 is Done, 2 are In Dev (2026), 2 are not expected until 2027, 1 is unscoped. **Identity sits underneath the two "In Dev" rows (permissions, audit log) without being named as its own line** — this is the concrete case for Part 1's "identity" gap: permissions and audit can't be marked more than "In Dev" honestly until identity itself is decided.

### Trial UX, Onboarding & BizApps — full table (Laura's "zero friction, self-serve" strand)
| Capability | Status | Phase | Dependency named |
|---|---|---|---|
| Account creation in SF & conversion | Not started | — | BizApps |
| Account termination | Not started | — | — |
| Billing of endpoints | Not started | — | BizApps |
| 'UFA only' (install without classic agents) | Backlog | — | — |
| Trial sign-up page | Not started | — | Website |
| Trial UX with AI | Not started | — | "to be defined and built" |
| Purchase self-serve | Not started | — | BizApps |
| Agent install workflow | Not started | — | — |
| Network discovery with agent install | Not started | **Phase 1 or 2? — undecided** | — |
| Slick Intune support for deployment | Not started | — | — |

**Count, direct from the table: 9 of 10 items are "Not started"; the 10th ("UFA only") is one step further, at "Backlog."** Zero items in this table are Done or In Dev. This is the same finding the idea-chess board flagged as a same-document contradiction: the GTM strategy slide's Phase 1 "why we win" claims frictionless self-service onboarding as a going-in advantage, while this table — the deck's own delivery-tracking table — shows the entire onboarding path unstarted, and one item (network discovery) not even assigned to Phase 1 vs. Phase 2 yet.

**MVP-for-NCA bottom line:** the platform-admin foundation (permissions, audit, identity-adjacent) is genuinely in motion (2026 targets). The trial/onboarding motion that Phase 1's own "why we win" story depends on has **not started at all**, and one of its ten components isn't even phase-assigned. If NCA-readiness means "a new customer can trial and buy Ecoverse frictionlessly," that gap is currently total, not partial.

---

## Part 3 — Gap to completion, N-sight replacement

Two components: (a) capabilities existing N-sight customers rely on today that the new product must match to avoid regression, and (b) capabilities the deck already admits are **not offered** in the new product at all.

### (a) High/Medium-value N-sight capabilities not yet at parity
| Capability | N-sight benefit today | Ecoverse status | Gap |
|---|---|---|---|
| All three OS patching | High | High priority, expected Q1'27 | Timing gap to Q1'27 |
| All three OS vulnerability management | High | High priority, "within the timeframe" | Timing gap, tied to patching |
| Scripting incl. scheduled execution | High | High priority, "need to finish scheduling" | Partial — scheduling specifically incomplete |
| Software inventory | High | High priority, "to be scheduled," install/uninstall pending | Not yet started on install/uninstall |
| Agent install workflow | High | Not started | **Full gap** — also blocks Part 2's trial motion |
| Network discovery with agent install | High | Not started, phase undecided | **Full gap** |
| Slick Intune support for deployment | High | Not started | **Full gap** |
| Monitoring | High | "TBC per Taha research," "TBC if phase 1" | **Undefined** — not even confirmed as in scope for Phase 1 |
| Take Control | Medium | Medium priority, "need policies for TC within Ecoverse" | Partial — policy layer missing |
| Asset inventory | Medium | Medium priority, "minor updates to Assets View" | Near-parity — smallest gap on this list |
| User permissions | Minor | In Dev (2026) | Partial |
| Audit log | Medium | In Dev (2026) | Partial |

**Count: of these 12 items, 4 are "Not started" or fully undefined, 1 (Monitoring) isn't even confirmed as in-scope for Phase 1, and only 1 (Asset inventory) is described as near-parity today.**

### (b) Explicitly not offered in the new product — deck's own list, unresolved
Direct from the "Classic N-sight Features Not Offered in the New Product" table — every row has a **blank status**, meaning none of these has an agreed disposition (rebuild, deliberately drop, or find a workaround) yet:
- Web Protection
- Classic Monitoring
- Classic Automated Tasks
- PSA Integrations per Classic
- Like-for-like Classic Reports
- Custom URL
- IP Address verification (security setting)
- *(the deck's own list ends with "……." — an explicit ellipsis, meaning the author knows this list is incomplete and hasn't finished enumerating it)*

**This list is the sharpest, most concrete finding in this gap analysis:** it is the deck acknowledging, in its own working document, that there are known N-sight capabilities the new product currently drops — and admitting the list of what's dropped isn't even finished being written down. Before any "N-sight replacement" claim can be made to a customer, this table needs (i) every row filled with a real disposition, and (ii) the trailing ellipsis resolved into an actual complete list.

### Cybersecurity/compliance-adjacent gaps (ties back to Part 1)
- Compliance assessment/reports: "TBC per Taha research"
- Cybersecurity assessment/reports: "TBC per Taha research"
- GraphQL / MCP: no status assigned
- SentinelOne: "TBC per Taha research"

Three of four Differentiator-table items that would plausibly answer "what do we monitor in the new world" (Part 1's RT-system-state question) are marked "TBC per Taha research" — i.e., the research that would resolve Laura's definitional question hasn't landed yet. **Part 1 and Part 3 are the same open item, not two separate ones**: RT system state can't be scoped until Taha's research on compliance/cybersecurity assessment comes back, and this gap table can't be finished until RT system state is scoped.

---

## What this gap analysis does not do
- Does not propose a disposition for the seven "not offered" N-sight features — that's a product decision, not a data-pull.
- Does not resolve identity or RT system state — Part 1 names the decision needed; it doesn't make it.
- Does not estimate dates beyond what the source tables already state (Q1'27, 2026, 2027) — no new timeline is invented here.
