# Bradley Rail — ACP Control Plane + QBR Native
**Portable markdown version · 2026-07-21**
*Readable without opening the HTML prototype.*

---

## Readiness Badge

**Tier 1 · Concept** — READY (24.5/30)

---

## What this prototype is testing

Whether QBR Native is the proof surface that makes the Autonomous Control Plane worth adopting — distinct from the original May 2026 question (would MSPs use the Control Plane as their only interface?).

Prototype surfaces: 5-stage journey map · named AI experts · 7 QBR report sections · governance/audit strip · fast mode council (7 tensions).

---

## Score Block

| Metric | Value |
|--------|-------|
| Critic Pass 1 | 24/30 |
| Critic Pass 2 | 24.5/30 |
| [A]+[?] world-claims | 16/35 = **46%** |
| 30% threshold | ⚠ ABOVE — Tier 1 adequate, Tier 2 not ready |
| Baseline (May 2026) | 80% [A]+[?] → 46% now |

All ratios grep-verified in `acp-cp-qbr-native-2026-07-21-math-recount.md`.

---

## What you nailed

1. **Governance thesis is legible.** "NOT A REPORT TOOL — THIS IS THE THESIS" on the governance section header. A governance-lens audience reads this before they start forming the wrong frame.

2. **Scope is persistent.** N-able-native scope stated in five distinct locations: data sources strip, journey map stage 02, scope panel, package nav (QBR Cross-Vendor marked NOT STARTED), sidebar footer. Confusion failure mode is structurally blocked.

3. **Failure modes are surfaced, not buried.** EU AI Act enforcement date (2026-08-02) visible in footer with compliance owner in critical red. Council cannot miss it.

4. **P0 assumption is named on the prototype surface.** `⚠ P0 assumption [A ~35%]` adjacent to the Edit QBR button. Council evaluates a real constraint, not a polished fiction.

5. **SEED badges on all fictional data.** 94% patch compliance, 127 incidents resolved, 99.1% backup success, 2.3h MTTR — all fictional, all labeled. Pete Hegseth test passes.

---

## What will hurt you

1. **Facilitation protocol doesn't exist.** The OKR requires "unprompted articulation." There is no script, no named facilitator, no timing, no method to distinguish unprompted from prompted. The metric is not measurable without this.

2. **Council roster is [A].** If the actual room is engineering-lens rather than governance/security-lens, the prototype calibration misfires. Name 5 people before the session.

3. **EU AI Act enforcement is 2026-08-02.** That is 12 days from session date. A governance-lens council member will ask in the first five minutes. "TBD" is the current answer. Name an owner before the session or the gap becomes the session.

4. **Council modal synthesis reads "[0% Claude — fill this in]."** Correct protocol. Reads as incomplete if opened during the walkthrough. Decide: fill it before or remove the button from the walkthrough flow.

5. **N-able-native job never independently tested.** Demand was measured for cross-vendor QBR. One operator session would move this from [A] to [R] and unlock a Tier 2 direction brief.

6. **Secondhand Reineke claim is load-bearing.** [CS: MEDIUM — one reported conversation via John Snyder.] A governance-lens council member will ask for the primary source. There is no artifact to show.

7. **Three design system FAILs from critic pass 2:** localStorage not persisting, topbar light-mode not dark, `--radius-lg: 10px` should be 8px. None affect concept validity. All affect Tier 2 readiness.

---

## Gap Inventory

| Gap | Tag | Action needed |
|-----|-----|--------------|
| N-able-native QBR job never independently tested | [A] [WOBBLY] | One operator session |
| 15-minute edit assumption | [A] ~35% confidence | Named on surface — still unvalidated |
| Adlumin data access (Gate C) | [?] | Technical + legal, unresolved |
| Legal/DPA read | [?] | Not done |
| Pricing model | [?] | Unmade |
| EU AI Act compliance owner | [?] | TBD, enforcement 2026-08-02 |
| Operator ethnography (~93% assumed) | [A] | No field study |
| Trust model L0–L4 | [?] | Not field-tested |
| Council roster | [A] | Name 5 people |
| Facilitation protocol | [?] | Write before session |

---

## Routing Cards

### Product

- [Product] does: Decide — Tier 2 build or hold after AI Council session.
- Why now: The prototype has done what a Tier 1 can do. The next question (is the N-able-native job real?) requires operator evidence, not another prototype. [R — Gate 3 verdict]
- If you ship without it: The brief goes to Tier 2 with a load-bearing [A] that a real operator session could resolve in one conversation.

**ROI**
- Business: Control Plane adoption argument narrows or strengthens based on whether the narrowed job is real — material to roadmap sequencing. [A]
- User: Operators get a QBR that reflects actual managed data rather than cross-vendor normalization they don't control. [A]
- Unknown: Whether N-able-native is "good enough" without cross-vendor. One session answers this.

---

### Design

- [Design] does: Write the facilitation protocol for the council session — exact prompt wording, named facilitator, timing, method for distinguishing unprompted articulation.
- Why now: The OKR is not measurable without it. The session is imminent. [A — session date unconfirmed but imminent]
- If you ship without it: Exit data is ambiguous. You cannot tell whether the 3-of-5 metric was met.

**ROI**
- Business: Measurable council output → defensible go/no-go decision → faster Tier 2 cycle or justified hold.
- User: Council participants get a session structured enough to give useful feedback, not a freeform show-and-tell.
- Unknown: Whether the OKR threshold (3 of 5) is the right bar — could be too high or too low for this room.

---

### Research

- [Research] does: Run one operator session on the narrowed N-able-native QBR job. Exact question: "Does an operator value a QBR built entirely from N-able data, without cross-vendor normalization?" Capture verbatim exit quotes. Collect counter-signal verbatim: did anyone say "this is just a reporting feature"?
- Why now: [A]+[?] is 46%. One operator session removes 3–4 [A]/[?] claims and unlocks Tier 2 eligibility (target: below 30%).
- If you ship without it: Tier 2 build on an untested job. Organizational bet on [A] evidence.

**ROI**
- Business: Below 30% [A]+[?] = brief is Tier 2 ready = faster confident build cycle.
- User: Operator feedback shapes what the edit path actually is — 15 minutes, 5 minutes, 30 minutes. The number is currently 35% confident.
- Unknown: Whether operators distinguish "N-able-native" from "real QBR." This is the session's most important finding.

---

### Eng

- [Eng] does: Fix three design system issues from critic pass 2: (1) localStorage persistence for `apx-mode-pref` — `setTheme()` sets `data-theme` but no `localStorage.setItem()` call; (2) topbar dark in both modes — light theme sets `--topbar-bg: #f6f8fa` (wrong); (3) `--radius-lg: 10px` → `8px`.
- Why now: Not blocking for Tier 1 walkthrough. Blocking for Tier 2 handoff to design.
- If you ship without it: Light-mode users see a light topbar (wrong). Theme preference resets on reload. Minor but visible in a stakeholder walkthrough.

**ROI**
- Business: Clean design system compliance → faster Tier 2 build without rework debt.
- User: Topbar stays dark and readable in light mode as intended.
- Unknown: Whether anyone toggles light mode during the council walkthrough. Probably low risk for this session.

---

## Council — Fast Mode (7 Tensions)

*Full council modal embedded in prototype. Synthesis block: [0% Claude — fill this in after the session.]*

| # | Tension |
|---|---------|
| T1 | JTBD vs. Disruptive Innovation: Does QBR Native help MSPs do a current job better, or does it make a different class of evidence possible? Two frames, two products. |
| T2 | SDT vs. Scope Discipline: MSPs may need felt competence and control; governance restricts autonomy. If the autonomy cost exceeds the evidence gain, adoption stalls. |
| T3 | Value Chain vs. Market Scan: N-able-native scope is the buildable option, not the validated demand. Kenneth May: "Cross-stack is the holy grail." Buildable ≠ wanted. |
| T4 | Service Blueprint vs. Pricing Model: The service model is defined (MSP reviews before delivery). The pricing model is not. A service without a pricing model is not a product. |
| T5 | EU AI Act vs. Speed: 2026-08-02 enforcement. No compliance owner named. Moving fast on a governed AI product with no compliance owner is a specific legal risk. |
| T6 | Cross-Vendor Gap vs. #1 Demand Signal: QBR Cross-Vendor is the holy grail and architecturally blocked. QBR Native is available. The prototype bets reachable is sufficient. |
| T7 | Control Plane Thesis vs. Shawn Eftink's Veto: "Won't pay for governance alone" — single prior dissenting data point. Counter-argument: QBR Native makes governance visible through a customer-facing artifact. Whether that resolves the veto is the session's job. |

---

*End of Bradley rail. 2026-07-21.*
