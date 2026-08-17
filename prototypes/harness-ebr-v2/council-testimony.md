# Council Testimony — Harness EBR v2 (Hi-Fi Rebuild)
**Brief:** briefs/harness-ebr-v2-2026-08-13.brief.md
**Session:** A of 2 (spec → council → critic pre-build)

---

### Jobs-to-Be-Done — the sourced job and the shipped job are not the same job

- The functional job is explicit and quoted: "We're not utilising AI to say, have we done what we said we were going to do?" (SRC-U-009). That's cycle memory, named by the owner in his own words — not an inferred job.
- There's a second, unreconciled job underneath it: Craig's business job (cut total EBR cost from ~80% to ~50% of David's time) and David's task job (get through reconciliation without redoing prior-cycle work) are stated with different numbers — 3h total vs. 1.5–2h practitioner portion — and the brief itself flags this gap as the finding, not noise (line 37, [A], Beth's framing). JTBD would read this as two jobs wearing one number: whoever hires Harness is not obviously the same person who does the work Harness changes.
- The existing "fired" solution is manual: export, delete columns, paste into template ("Pipes it in, copy paste to wherever it's coming from," 38:01). Low switching cost to fire — nothing sunk in the current workaround, which is normally good news for a new entrant.
- The four SHORTs (parts 8, 13, 14, 27) are exactly the surface of the named job — cycle memory, standing exclusions, incident continuity, open commitments. All four are explicitly unbuildable in v2 because the shared notebook doesn't exist. The prototype can demonstrate everything adjacent to the job (staleness, portfolio rollups, PICKING visibility) without touching the job itself.

**Strongest objection:** The one job Craig stated in his own words is the one part of the system v2 cannot build. Every other stage (0, 1, 2, 4, 5, 6) is buildable and demoable; the actual cycle-memory promise is a UI honesty exercise ("make the non-existence visible") rather than a working feature. JTBD would call this hiring the tool for a job it explicitly cannot yet do, and disclosing that clearly — which is honest, but does not resolve whether the demo tests the real hypothesis or a proxy for it.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** The job is real, sourced in the customer's own words, and correctly identified as the center of the brief — that's not Neutral. It isn't Strong Good because the deliverable that would prove the job is served (the notebook) is named out of scope, so v2 tests adjacency to the job, not the job.

[ROI from this lens]
  Business: Unknown: gap — no financial model exists converting David's 80%→50% time claim into cost (named explicitly in brief, line 76, [?]).
  User: David's self-reported time is the only baseline (1.5–2h per cycle, [R], unverified exact figure). Directional only, not validated (n=1).

---

### Service Blueprint — the honesty is real, the ownership of backstage is not

- Stage 5 correction is a genuine blueprint fix: the old prototype treated David as prep-only backstage; v2 makes him frontstage AND backstage, sourced directly from SRC-U-009 ("David… sits in 100% of EBRs"). That's not cosmetic — it changes what the client sees versus what happens off-camera.
- Stage 4 inversion ("the system asks the human what it cannot know") is a visible, well-designed handoff — the machine interrogates rather than silently guessing, which is the correct blueprint pattern for an AI-assisted judgment step.
- Two practitioner tracks are asymmetrically instrumented. David's tabs (2–6) are heavily connector-mapped; Vanessa's tabs (Forward Intelligence, Referrals — parts 22, 23, 24, 26) are marked [A]/never-built, entirely dependent on her personal relationship read with no tool path at all. The brief doesn't address how — or whether — Harness supports her portion, only that it's "her hour, not David's." A blueprint missing half its frontstage cast is a real gap, not a stage-appropriate one, because Vanessa's tabs sit in the same 8-tab structure David's do.
- Per the stage-appropriate scoring rule: at gate 30 (Concept/Direction), unbuilt backstage for the four SHORTs is expected — that alone should not move the verdict. The one item worth flagging past "normal for stage" is Gate 2's own Structure line: "[?] Nobody named as accountable for this capability in any reviewed source document." An unowned backstage capability isn't a build-sequencing gap — it's a chokepoint on whether the notebook ever gets built at all, regardless of prototype fidelity.

**Strongest objection:** The brief names Vanessa's tabs as real (they're in the 28-part table, they're in the 8-tab structure) but gives them zero tooling path and zero design attention relative to David's — for a blueprint concerned with frontstage/backstage parity, one practitioner's work is being blueprinted and the other's is being acknowledged and shelved in the same document.

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** Stage 5 and Stage 4 are genuinely correct blueprint moves, and the SHORTs being made visible rather than faked is the right call at this gate — that's not Neutral. Not Strong Good because the Vanessa asymmetry and the unowned-Structure gap are both named in the brief itself and neither is resolved, only noted.

---

### Self-Determination Theory — "cannot tell" is a real autonomy win; the staleness signal is a live competence risk

- "Cannot tell" being a surfaceable, non-defaulted answer (not collapsed to zero, not hidden) is a genuine autonomy-preserving design choice — the system is designed not to manufacture false certainty on David's behalf.
- Part 7's acceptance record (who, when, why, expiry) supports competence directly: David's judgment becomes visible and traceable rather than tribal knowledge that evaporates between cycles. This also supports relatedness — his reasoning becomes legible to Craig and to future-David.
- Stage 5's correction (David named as room participant, not prep-only) is a relatedness win: the tool stops hiding the labor that actually happens.
- The GOOD FOR staleness column is explicitly authored, not sourced ("those columns were largely authored, not sourced" — standing [A] on the whole column, line 131). Failure Mode 2 names the risk directly: if a per-part staleness window is wrong for a connector's real refresh rate, the tool gives David a confident, specific, wrong signal about what he can trust. SDT treats this as worse than no signal — an interface that trains competence, then quietly betrays it, does more damage to the user's sense of capability than an interface that never claimed the signal in the first place.

**Strongest objection:** The tool's central promise to David — "you can trust what's current, we'll tell you what's stale" — rests on a column the source data itself flags as unverified. If any GOOD FOR window is wrong in the direction of overconfidence (says "Days," refreshes in reality on a different cadence), the tool actively undermines the competence it was built to support, and does so silently, since the UI has no mechanism described for surfacing "this staleness window is itself unverified."

**Verdict [this lens only]:** Good
**Why this strength, not one notch over:** "Cannot tell" as a first-class UI state and the acceptance-provenance design are real, specific autonomy/competence wins, not aspirational language — that clears Neutral easily. Not Strong Good because the one signal most load-bearing for competence (staleness) is self-admittedly unsourced, and the brief names the risk without naming a mitigation beyond "must be named for the test facilitator."

---

### Disruptive Innovation — sustaining, not disruptive, and dependent on the exact vendors it would need to unseat

- This is a sustaining innovation for an existing customer (MSP practitioners already running EBRs) doing an existing job better — it is not simpler, not cheaper, not attacking an underserved segment from below. It requires more integration work (N-central, Inforcer, HaloPSA, uSecure, Cloud Capsule, plus a not-yet-built notebook), not less.
- Every one of the 28 parts sources from a vendor Harness does not own. There is no first-party data asset in the current scope except the notebook — which is precisely the piece marked [SHORT] across all four instances where it matters most (parts 8, 13, 14, 27).
- Part 23 hints at a genuine disruptive lever that isn't being pursued: "Inforcer aggregate view of what is shifting across tenants" — a cross-tenant signal only a platform with many MSPs' data could produce. That's the shape of a real disruptive asset (network effect across the install base), and it's listed as [A] outside-knowledge input to one tab, not designed as a capability.
- Who defends: Inforcer, HaloPSA, and N-central all already sit in the exact chokepoint (client tenant + ticketing data) that a cycle-memory notebook would need. Any of them building a "commitments carried forward" feature natively would remove Harness's only differentiator in one release cycle.

**Strongest objection:** Christensen's disruption thesis requires the incumbent to be structurally unable or unmotivated to respond. Nothing in this brief establishes that HaloPSA or Inforcer are either — they already hold the data, already have the client relationship, and a cycle-memory feature is a small natural extension of either roadmap. Harness's moat is entirely the notebook, and the notebook is the one thing not built.

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** The job is real and currently unmet by any single incumbent product (no evidence any of the five source tools already do cross-cycle diffing) — that keeps it off Bad. It isn't Good because this is a sustaining play with zero owned data or infrastructure today, sitting on top of vendors who are better positioned to build the exact differentiator Harness needs.

---

### Value Chain — margin-protection is credible; margin-creation and the chokepoint are both unbuilt

- Harness inserts at the internal prep step of the MSP's value chain — before client-facing delivery, not part of it (yet). That's consistent with the stated business case: reduce David's prep time, not change what the client is sold.
- Margin effect today is protect, not create: the stated KR (David's prep time, 1.5–2h → under 45 min) is a cost reduction inside the MSP's own operation. Nothing in v2 scope monetizes differently for the client — Customer Engagement options 3 (client-facing risk register) and 4 (scored/gamified) are explicitly named as undesigned white space, not retired but not funded either (Gate 2).
- The chokepoint in this value chain — cross-cycle judgment and commitment memory — is not currently owned by anyone, including Harness. It's [SHORT] in all four instances where it would matter (parts 8, 13, 14, 27), and Structure (who's accountable for building it) is [?] at Gate 2.
- If the notebook gets built and stays proprietary to Harness rather than replicable by HaloPSA/Inforcer, it becomes the chokepoint asset that converts this from margin-protection to margin-creation (a defensible, sellable "we remember what your other tools don't" position). That's conditional on two things this brief doesn't yet answer: who builds it, and whether the resulting cross-cycle data is exclusive to Harness or visible to the underlying vendors too.

**Strongest objection:** A value-chain insertion whose only proposed chokepoint asset is unbuilt, unowned (Structure = [?]), and dependent on data that vendors upstream can already see, is not yet a value-chain position — it's a value-chain intention. The margin-protection case is real and sourced; the margin-creation case has no design, no owner, and no scope commitment in v2.

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** The margin-protection case is [R]-sourced and specific (an actual owner naming an actual time target), which is more than most early-gate briefs have — that clears Bad. It stays off Good because the chokepoint that would make this defensible rather than replicable is explicitly unbuilt and explicitly unowned in the same document.

[ROI from this lens]
  Business: Unknown: gap — "financial value of that time reduction for Technica Solutions is not calculated" (Gate 2, [?], stated directly in brief).
  User: David's time recovered — self-reported target, not independently measured; directional per PROCEED-FLAGGED regime.

---

### Ten Types of Innovation (Doblin/Keeley) — three real, three unscored, and the unscored ones are the commercial ones

- Consistent with the brief's own Gate 2 pass: Process (cycle memory changes how prep works), Service (room focuses on judgment, not reconciliation), and Product Performance (per-part staleness fixes a real data-quality failure — one shared "as of" date across parts with different real shelf lives is a genuine defect being corrected) are the three strongest types, and the reasoning behind each is specific to this brief, not generic innovation-speak.
- Product System is honestly scored as "real but generic" [D] — the gateway is already generic in the existing repo code, so this isn't a differentiator at this layer. Correctly not oversold.
- Channel and Structure are named [?] — no frontend infrastructure identified, nobody accountable. These are honestly flagged as undecided rather than silently assumed, which is good practice for this framework.
- Three types are not present in the brief's own pass at all: Profit Model, Network, and Brand. This is a larger gap than the two flagged [?] types, because it isn't "undesigned and named" — it's simply absent. There is no answer, not even a marked unknown, to how Harness is priced or packaged, whether the Inforcer cross-tenant signal (part 23) could become a network asset, or whether NCSC/Cyber Essentials alignment is a brand play worth designing toward (versus the liability-shield framing at 15:20, which the brief explicitly says must not appear customer-facing — a brand risk that also goes unscored under this framework).

**Strongest objection:** Half the framework has either no design work or no answer at all. The three strong types (Process, Service, Product Performance) are the right ones to nail first for an internal practitioner tool at this gate, but Profit Model being entirely unaddressed — not flagged [?], just absent — means the brief cannot yet say whether the win, if built, is commercially capturable by anyone. That's a bigger open question than Channel or Structure, and it's currently invisible in the brief's own gap pass.

**Verdict [this lens only]:** Neutral
**Why this strength, not one notch over:** Three types are strong, specific, and correctly prioritized for an early-gate internal tool — not Bad. Not Good because three of ten types have no answer at all (not even named as unknown), and one of the three missing is Profit Model, which determines whether the whole exercise converts into anything beyond internal cost savings for one fictional MSP.

---

> **Service Blueprint and Self-Determination Theory diverge on Stage 2 (Nudge)**: Service Blueprint treats the cadence logic (A/B clients get a meeting invite, C/D get text/recurring report, "config + interrupt, not a fixed schedule") as a settled product decision already made by the owner (blueprint §14) and raises no concern. SDT reads the same mechanism as a live autonomy question — the brief does not describe a visible override for the practitioner if the system's tiering decides who gets which channel. This is a decision, not a gap: does the cadence logic need a stated human-override path, or is Beth's §14 call sufficient as-is?

> **Disruptive Innovation and Value Chain agree the chokepoint is unowned, but Jobs-to-Be-Done and Ten Types diverge on how much that matters right now**: JTBD scores the brief Good because the sourced job is real regardless of who eventually owns the moat; Ten Types scores Neutral because Profit Model — the mechanism by which owning or not owning that chokepoint turns into money — isn't in the brief at all. This is a decision, not a gap: is commercial capture a Session A concern, or does it wait until the notebook itself is scoped?

---

## Register

| Type | Gate | Named item | Evidence status | Crux test (risk) / Compounds-or-decays (asset) |
|---|---|---|---|---|
| Risk | 3 | The shared notebook (cycle memory backend for Parts 8, 13, 14, 27) does not exist and has no described build plan | [?] | Crux: yes/yes. If it never gets built, David's core named job (cycle memory) stays unserved and the 80%→50% target is unreachable by this route; if built and owned by Harness, it's the one differentiator none of the source vendors currently have. |
| Risk | 2 | Structure — nobody named accountable for the Harness EBR capability in any reviewed source | [?] | Crux: yes/yes. Unresolved, the notebook (above) never gets built regardless of technical feasibility; resolved (a named owner + roadmap), the top risk row above becomes tractable. |
| Risk | 1 | n=1 generalization — whether the continuity pattern, the 8-tab structure, and the tool stack are Technica-specific or sector-standard | [?] | Softer than a true crux (bad resolution = fails to generalize; good resolution = confirms what's already assumed, doesn't "clearly win" beyond that) — named explicitly as Failure Mode 3 in the brief, kept here as a note-level risk rather than top-sorted. |
| Risk | 2 | Value-chain/Disruptive Innovation: no owned chokepoint — every one of 28 parts sources from a vendor (N-central, Inforcer, HaloPSA, uSecure, Cloud Capsule) Harness doesn't control | [D]/[A] | Crux: partial. If an incumbent (Inforcer or HaloPSA) ships native cross-cycle diffing first, Harness's only differentiator is gone; if none do, the field stays open — asymmetric downside, softer upside, kept as risk not top crux. |
| Asset | 3 | Stage 0 onboarding (FSN-82692) is already spec'd — real, existing 20-minute flow, not invented for this brief | [D] | Decays / one-time: reduces Session B build risk directly, but it's a head start consumed once implemented, not a compounding moat. |
| Asset | 1 | Tool-stack and framework conflicts already resolved (uSecure not KnowBe4, HaloPSA not ConnectWise, NCSC not NIST — conflicts C-06 through C-10) | [R] | Decays / one-time: removes rework and ambiguity risk for the build session; correctness, not exclusivity — any competitor doing the same homework gets the same clarity. |
| Asset | 1 | David is already the 100%-embedded frontstage+backstage practitioner in the real workflow (SRC-U-009) — Harness doesn't have to manufacture trust or a new role, only make his existing labor visible | [R] | Compounds, conditionally: switching cost and habit accumulate the longer Harness sits inside his actual workflow — but the starting condition (a trusted embedded practitioner) isn't exclusive to Harness; a fast-follower targeting the same role gets the same starting point. |

No voice named a Profit Model, Network, or Brand asset — consistent with Ten Types' own finding that those three types are unscored in the brief, not merely weak. That's worth re-prompting on directly rather than reading as "no assets exist" in those dimensions.
