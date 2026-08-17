# Council Testimony — Chess Game Interface
**Brief:** briefs/chess-game.brief.md  
**Tier:** 1 (30% fidelity / Concept)  
**All 44 voices present. All owensing.**  
**Date:** 2026-06-01

---

┌─ Council read ───────────────────────────────────────────────────────┐
│  Readiness: 12/30   Tier: 1   Tensions: 8 named                      │
│                                                                       │
│  [0% Claude — fill this in]                                          │
│                                                                       │
│  Top tensions (from cross-talk):                                     │
│  · SIGN vs CHTR on whether this tests a hypothesis or demonstrates   │
│    a pattern                                                          │
│  · JRNY vs FEAT on whether three affordances = progressive           │
│    disclosure or cognitive overload                                  │
│  · NEEDS (SDT) on autonomy erosion when UI does not name which       │
│    affordance the user just triggered                                │
│  · LAND on absence of competitive landscape (what does Chess.com     │
│    do differently that made them win?)                               │
│  · Cross-talk new claim: JOBS + JRNY produce a segmentation          │
│    hypothesis the brief does not test — "notation entry users are    │
│    advanced players" is an assumed segment, not a validated one      │
└──────────────────────────────────────────────────────────────────────┘

---

## CHTR — Charter (produces the claim under examination)

### 07 Owen Project Statement [IIT]
**One-line:** What are we making, for whom, and why now?

**Sign:** The brief's problem statement names three interaction models (drag-and-drop, click-to-move, notation entry) as the scope, but the okr_objective tests only **"coexistence without cognitive overload."** The Project Statement as written is: *"A lo-fi chess interface prototype to validate that drag-and-drop and click-to-move can coexist in a single interface without cognitive overload."* Notation entry appears in the key result but not the objective. [WOBBLY · CHTR]

**Hypothesis:** The actual claim being tested is **"two primary interaction models (drag + click) can coexist,"** not three. Notation entry is an accessibility additive, not part of the coexistence test.

**Kill criterion:** If a user familiar with chess rules takes >10 seconds to complete their first legal move (counter_metric), the interaction models do not coexist — they compete.

**Force level:** Must — the counter_metric is the only user-facing success criterion in the brief.

**Evidence:** [R] — counter_metric stated in brief line 8; [A] — no baseline data on current time-to-first-move for Chess.com or Lichess users.

**Cannot see:** Whether 10 seconds is the right threshold. No user research on what "cognitive overload" looks like behaviorally (hesitation? errors? abandonment?).

---

### 08 Owen Defining Statements [IIT]
**One-line:** What is in scope, out of scope, and what is the governing constraint?

**Sign:** The brief names legal move validation as shallow or absent (`[A]` — no chess engine integration planned). This is not called out as out-of-scope; it is called out as a **failure mode** (Gate 3, line 191). A Defining Statement would name this as the governing constraint: *"Legal move generation is out of scope. Lo-fi prototype will validate interaction model integration only, not chess rules enforcement."*

**Hypothesis:** The prototype is testing **UI affordance discovery**, not game logic. The brief conflates the two by including "legal move" language in the okr_key_result (line 7).

**Kill criterion:** If a user attempts an illegal move and the prototype does not block it, we learn nothing about interaction model coexistence — we learn the prototype does not enforce chess rules.

**Force level:** Should — the brief already names this as a failure mode; the Defining Statement just makes it structural.

**Evidence:** [A] — no chess engine integration planned (brief line 201); [R] — FEN and SAN documented in scout input, but not implemented in prototype spec.

**Cannot see:** Whether the absence of legal move validation changes user behavior. Users familiar with chess may self-censor illegal moves; users unfamiliar with chess may attempt illegal moves and interpret the prototype's non-response as permission.

---

### 11 Theory of Change [PLAN]
**One-line:** If we do X, then Y happens, because Z mechanism.

**Sign:** The brief's Theory of Change is implicit, not stated. Reconstructed: *"If we implement three interaction models in a single interface, then users will choose the model that matches their preference, and coexistence will be validated if time-to-first-move remains <10 seconds."*

**Hypothesis:** The mechanism (Z) is **"users will choose."** But the brief does not test choice behavior. It tests completion (all three models execute a move), not preference or discovery.

**Kill criterion:** If users do not discover all three interaction models without instruction, the Theory of Change is false — coexistence without discovery is not coexistence, it is hidden affordances.

**Force level:** Must — this is the validity threat to the okr_objective.

**Evidence:** [A] — no user testing on interaction model discovery (brief line 193); [?] — no onboarding or feature discovery testing planned (brief line 203).

**Cannot see:** Whether "coexistence" means "all three are available" or "users know all three are available." The brief does not distinguish between implementation and discoverability.

---

### 10 Hard Mode force levels [IIT] — abbreviated
**Sign:** The counter_metric ("time to first legal move must not exceed 10 seconds") is the only Must-level claim. The okr_key_result ("demonstrate successful move completion via all three models") is a Should.

**Cannot see:** Whether the 10-second threshold is empirically grounded or a placeholder. No baseline data on Chess.com or Lichess time-to-first-move.

---

### 09 Moore positioning statement [STRAT] — abbreviated
**Sign:** No positioning statement in the brief. This is a concept prototype, not a product, so positioning is N/A.

**Cannot see:** If this prototype were to ship, who is the target customer and what is the compelling reason to buy? (The brief does not claim this will ship, so this voice is out of scope.)

---

## SIGN — Sign Reading (reads the world against the charter)

### 01 Peirce [ABD]
**One-line:** What is the world signalling, and what does that mean?

**Sign:** The brief cites scout_input/01: *"Most modern platforms support both [drag-and-drop and click-to-move] to accommodate user preference."* [R] This is an **indexical sign** (observed pattern across Chess.com, Lichess) pointing to a design convention, not a user need.

**Hypothesis:** The world is not signalling a problem with existing dual-model interfaces. The world is signalling that dual-model is **the documented solution**. The brief is reverse-engineering a known pattern, not testing a novel hypothesis.

**Kill criterion:** If the prototype produces the same interaction behavior as Chess.com and Lichess, we have re-implemented the pattern but learned nothing new.

**Force level:** Must — this is the central validity question for a Tier 1 prototype.

**Evidence:** [R] — scout_input/01 documents dual-model as standard; [A] — no user research on whether dual-model causes problems (cognitive load, errors, preference lock-in).

**Cannot see:** Whether the pattern exists because it solves a real user problem, or because it is a technical affordance (drag-and-drop is "more natural" per scout_input/01, but this is an [A] claim, not [R]).

---

### 02 Tavory/Timmermans [ABD]
**One-line:** What alternative readings does the same evidence support?

**Sign:** The brief reads "dual interaction models" as **coexistence**. An alternative reading: dual models are **progressive disclosure** — novice users click-to-move (simpler), advanced users drag-and-drop (faster), expert users use notation entry (precision).

**Hypothesis:** If the three models represent a skill ladder, then "coexistence without cognitive overload" is the wrong test. The right test is **"users advance from click to drag to notation as they gain fluency."**

**Kill criterion:** If all three models are equally discoverable and equally used, the progressive-disclosure reading is false.

**Force level:** Should — this is an alternative hypothesis the brief does not test, but could.

**Evidence:** [A] — "Notation entry is used primarily by advanced players" (brief line 127, stated as assumption, not sourced).

**Cannot see:** Whether the skill-ladder hypothesis is true. No segmentation research, no observation of how users move between interaction models over time.

---

### 03 Owen Design Factor [IIT]
**One-line:** What external forces (user, domain, tech, regulation) constrain the solution?

**Sign:** The brief names accessibility as a primary concern (`[A]` — Beth's design goal, line 128), but the test plan tests only keyboard navigation, not screen reader output. The Design Factor **"accessibility"** is named but not operationalized.

**Hypothesis:** Accessibility is a stated value, not a tested constraint. The prototype will validate keyboard navigation (can the user reach all interactive elements?) but not assistive tech usability (can the user understand the board state and legal moves via screen reader?).

**Kill criterion:** If the prototype ships without screen reader testing, it does not meet the accessibility Design Factor named in the brief.

**Force level:** Should — the brief names this as a failure mode (line 192), not a blocker.

**Evidence:** [R] — Lichess blind mode documented in scout_input/02; [A] — no NVDA/JAWS/VoiceOver testing planned (brief line 192).

**Cannot see:** Whether keyboard navigation alone satisfies the accessibility goal. Screen reader users need semantic structure (ARIA labels, role attributes, live regions for move announcements), not just keyboard focus.

---

### 04 Mode 1 semiotics [IIT]
**One-line:** What does the system communicate to the user, and how?

**Sign:** The brief does not specify how the user knows which interaction model they just used. If a user drags a piece, does the UI confirm "move completed via drag-and-drop"? Or is the interaction model silent?

**Hypothesis:** If the interaction model is not named in feedback, the user cannot learn which model they prefer. "Coexistence" becomes invisible.

**Kill criterion:** If the user completes a move and cannot articulate which interaction model they used, the prototype does not test coexistence — it tests accidental success.

**Force level:** Should — this is a discoverability gap, not a blocker.

**Evidence:** [?] — no design for post-move feedback (visual or auditory confirmation of which model was used).

**Cannot see:** Whether users care which model they used, or only care that the move succeeded.

---

### 05 Mode 4 hypothesis [IIT]
**One-line:** What is the falsifiable claim this prototype tests?

**Sign:** The okr_objective states: *"Validate that both primary interaction models (drag-and-drop and click-to-move) can coexist in a single interface without cognitive overload."* [R — brief line 6]

**Hypothesis:** The falsifiable claim is: **"Time to first legal move will remain ≤10 seconds with two interaction models present, compared to a single-model baseline."** But the brief has no baseline data.

**Kill criterion:** Without baseline data, the 10-second threshold is arbitrary. If the prototype meets the threshold, we do not know if dual-model caused cognitive load or not.

**Force level:** Must — this is the validity core.

**Evidence:** [A] — no baseline data on Chess.com or Lichess time-to-first-move (brief line 118).

**Cannot see:** Whether the cognitive load hypothesis is testable without a control condition (single-model interface tested alongside dual-model).

---

### 06 Cynefin [CMPLX]
**One-line:** What kind of problem is this — simple, complicated, complex, or chaotic?

**Sign:** The brief treats interaction model integration as a **complicated** problem (best practices documented in scout_input/01, 02; solution is reproducible). But the okr_objective tests for **complex** behavior ("cognitive overload" emerges from user-system interaction, not from implementation).

**Hypothesis:** The problem domain is complicated (we know how to build dual-model interfaces), but the test domain is complex (we do not know if users experience cognitive overload without observation).

**Kill criterion:** If the prototype implements the pattern correctly (complicated domain) but does not observe user behavior (complex domain), the test is incomplete.

**Force level:** Should — the brief already names "no external user testing" as a limitation (line 171).

**Evidence:** [R] — interaction patterns documented in scout_input/01; [A] — cognitive overload not defined behaviorally (brief line 123).

**Cannot see:** Whether Beth's self-testing (line 171) can detect cognitive overload, or whether cognitive overload only emerges in non-expert users.

---

### 32 Lean Startup riskiest assumption [INNOV] — abbreviated
**Sign:** The riskiest assumption is **"users want both interaction models available in a single interface."** [A] — no user research (brief line 124).

**Cannot see:** Whether dual-model is a user preference or a platform convention that users tolerate.

---

## PORT — Strategic Portfolio

### 12 Doblin 10 Types [IIT] — abbreviated
**Sign:** This is a **Service** innovation (interaction model) and a **Channel** innovation (accessibility pathway via notation entry). It is not a Product or Business Model innovation.

**Cannot see:** Whether Service + Channel innovations move adoption without a Product or Experience innovation layered on top.

---

### 13 Ansoff [STRAT] — abbreviated
**Sign:** Market Penetration (existing product [chess interface], existing market [chess players]). Not a growth play.

**Cannot see:** Whether lo-fi prototypes in Market Penetration quadrant yield learning or just reproduce the category.

---

### 14 Innovation Ambition [STRAT] — abbreviated
**Sign:** Core innovation (incremental improvement to existing chess interfaces). Not Adjacent or Transformational.

**Cannot see:** Whether Core innovation in a commoditized category (chess interfaces) can differentiate.

---

## FEAT — Feature / Concept Quality

### 15 Kano [INNOV]
**One-line:** Is this a Basic Expectation, Performance Benefit, or Delighter?

**Sign:** Drag-and-drop and click-to-move are **Basic Expectations** in 2026 [R — scout_input/01 documents both as standard]. Notation entry for accessibility is a **Performance Benefit** (satisfies a known need for screen reader users).

**Hypothesis:** The prototype is testing whether two Basic Expectations can coexist, not whether the feature is differentiated. Kano predicts users will not delight in this — they will expect it.

**Kill criterion:** If users say "this is how chess interfaces work," the feature is Basic. If they say "I didn't know I could do that," it may be Performance or Delighter.

**Force level:** Should — this is a positioning question, not a validity question.

**Evidence:** [R] — dual-model documented as standard in scout_input/01; [A] — no user interviews on satisfaction or surprise.

**Cannot see:** Whether Basic Expectations tested in isolation yield useful learning. The absence of bugs is not the same as user value.

---

### 16 Blue Ocean ERRC [STRAT] — abbreviated
**Sign:** The brief does not name a competitive frame. Compared to Chess.com and Lichess: Eliminate (timer/clock), Reduce (legal move validation), Raise (nothing), Create (nothing).

**Cannot see:** Whether subtraction is intentional (lo-fi constraint) or a missed requirement.

---

## POS — Market Position / Adoption

### 17 Moore Crossing the Chasm [STRAT] — abbreviated
**Sign:** No target user segment defined. If the target is "users familiar with chess rules" (counter_metric), that is Mainstream, not Early Adopter.

**Cannot see:** Whether Beth intends this to ship, or whether this is pure learning. If pure learning, Moore does not apply.

---

### 19 Christensen Disruptive Innovation [INNOV] — abbreviated
**Sign:** Not disruptive. Chess.com and Lichess are the incumbents; this prototype does not target a new market or underserved segment.

**Cannot see:** Whether a lo-fi prototype *could* disrupt by eliminating features (e.g., "chess for absolute beginners, no notation required"), but that is not the stated goal.

---

## LAND — Landscape / Competitive Structure

### 33 Mode 2 landscape [IIT]
**One-line:** What are competitors doing, and what does that reveal about the market?

**Sign:** The brief cites Chess.com and Lichess as the documented platforms (scout_input/01, 04). Both support dual interaction models. The landscape signal is: **dual-model is table stakes, not differentiation.**

**Hypothesis:** If all major platforms offer dual-model, the competitive question is not "does dual-model work?" but "what does Chess.com do *differently* with dual-model that made them the category leader?"

**Kill criterion:** If the prototype reproduces the pattern without studying the competitive variance (why does Chess.com's implementation succeed where others fail?), we learn the pattern but not the position.

**Force level:** Should — this is a research gap, not a prototype gap.

**Evidence:** [R] — Chess.com and Lichess documented in scout_input; [?] — no competitive analysis on implementation differences (brief line 199).

**Cannot see:** What Chess.com does that Lichess does not, or vice versa. The brief treats the landscape as homogeneous ("most modern platforms support both"), but user preference data might reveal sharp differences.

---

### 34 Porter's Five Forces [STRAT] — abbreviated
**Sign:** Threat of substitutes is high (free alternatives: Lichess). Buyer power is high (zero switching cost). Rivalry is intense (Chess.com vs Lichess vs chess24 vs others).

**Cannot see:** Whether a new entrant without differentiation can compete. Porter predicts this prototype has no structural advantage.

---

### 35 Wardley Mapping [STRAT]
**One-line:** Where is this capability on the evolution axis (genesis → custom → product → commodity)?

**Sign:** Dual interaction models (drag + click) are **commodity** (scout_input/01: "most modern platforms support both"). Notation entry for accessibility is **product** (Lichess implements it; not all platforms do).

**Hypothesis:** The prototype is testing a commodity capability (dual-model) and a product capability (notation entry). Wardley predicts commodity features do not differentiate; product features do.

**Kill criterion:** If the prototype spends equal effort on commodity (dual-model) and product (notation entry), but only tests the commodity, the product feature (accessibility) remains unvalidated.

**Force level:** Should — the brief already names accessibility as untested (line 192).

**Evidence:** [R] — dual-model is standard per scout_input/01; [R] — notation entry is Lichess-specific per scout_input/02.

**Cannot see:** Whether the product feature (notation entry) is the real innovation, and the commodity feature (dual-model) is just table stakes.

---

## JOBS — Jobs Theory

### 20 JTBD functional [INNOV]
**One-line:** What job is the customer hiring this to do?

**Sign:** The functional job is **"make a legal chess move in a digital interface."** The brief assumes users hire different interaction models for the same job (drag = "natural" physical mapping, click = "easier to implement" per scout_input/01, notation = precision).

**Hypothesis:** If all three interaction models do the same functional job (execute a move), the hire/fire decision is based on **emotional or social jobs**, not functional jobs. Functional JTBD cannot distinguish between the three models.

**Kill criterion:** If users complete a move via any model and report satisfaction, functional JTBD is silent on which model to prioritize.

**Force level:** Should — this is a segmentation question.

**Evidence:** [R] — functional job documented in domain model (brief lines 24-27); [A] — no research on emotional/social jobs (why do users prefer drag over click, or vice versa?).

**Cannot see:** Whether the functional job is actually **"learn chess"** (beginner) vs **"play chess fast"** (intermediate) vs **"analyze chess positions"** (advanced). The brief collapses all three into "make a move."

---

### 22 JTBD emotional/social [INNOV]
**One-line:** What emotional or social job is the customer hiring this to do?

**Sign:** The brief states (line 117): *"Drag-and-drop is considered more 'natural' for representing physical piece movement."* [A] This is an **emotional job**: users want the digital interface to feel like a physical board.

**Hypothesis:** If drag-and-drop satisfies an emotional job ("feels like real chess"), then click-to-move and notation entry do not compete with drag — they serve different emotional jobs (click = "I want to be precise" / notation = "I want to be fast and avoid mouse errors").

**Kill criterion:** If users use drag for emotional satisfaction and notation for functional speed, the three models are not in conflict — they are segmented by job.

**Force level:** Should — this is the Jobs-to-Be-Done tension with the brief's "coexistence" framing.

**Evidence:** [A] — emotional job claim in scout_input/01 is not user-sourced; [?] — no research on social jobs (e.g., "I want to signal I'm an expert by using notation").

**Cannot see:** Whether the emotional job is real or a designer's projection. The brief assumes "natural" is a user need, not a design aesthetic.

---

## NEEDS — Need Theory

### 23 SDT (Self-Determination Theory) [PSYCH]
**One-line:** Does this support autonomy, competence, and relatedness?

**Sign:** **Autonomy:** The brief states users can choose between three interaction models. But Mode 1 semiotics (voice 04) identified a gap: the UI does not confirm which model the user just used. If the user cannot name which model they used, they do not have autonomy — they have **accidental success**.

**Hypothesis:** Autonomy is supported by choice architecture (three models available) but undermined by feedback architecture (no confirmation of which model was triggered). SDT predicts users will feel competent ("I moved the piece") but not autonomous ("I don't know how I did that").

**Kill criterion:** If users cannot reliably repeat their preferred interaction model in a second move, autonomy is absent.

**Force level:** Should — this is a UX quality question, not a validity blocker.

**Evidence:** [?] — no design for interaction model feedback (brief does not address this); [A] — autonomy claim assumes discoverability (line 124).

**Cannot see:** Whether competence (successful move completion) is sufficient for user satisfaction, or whether autonomy (knowing how I succeeded) is necessary.

---

### 24 Maslow [PSYCH] — abbreviated
**Sign:** This prototype addresses **Safety** (reliable, predictable interface) and possibly **Esteem** (mastery of chess, signaled by notation entry).

**Cannot see:** Whether lower needs (Physiological, Safety) are met by the base platform (web browser, stable internet), such that this prototype only moves Esteem. Maslow does not offer diagnostic value for interaction model design.

---

## JRNY — Journey

### 25 Mode 3 ethnography [IIT]
**One-line:** What does observation of real use reveal?

**Sign:** The brief names no ethnographic research. The test plan is Beth self-testing (line 171). Mode 3 observes users in context; self-testing is **introspection**, not ethnography.

**Hypothesis:** Beth's self-test will reveal implementation bugs but not user confusion, because Beth knows the interaction models are available. A non-expert user may not discover all three models without instruction.

**Kill criterion:** If the prototype passes Beth's self-test but fails with a naive user (e.g., chess player unfamiliar with digital interfaces), the ethnographic gap is the failure.

**Force level:** Should — the brief already names this as a limitation (line 171).

**Evidence:** [A] — tester = Beth (line 171); [?] — no external user testing planned (line 199).

**Cannot see:** What a naive user would do. Beth's mental model includes "I am testing three interaction models," which primes her to discover all three. A real user has no such prime.

---

### 26 UX 5Es [UX]
**One-line:** Entice, Enter, Engage, Exit, Extend — what is the micro-journey?

**Sign:** The brief does not specify an onboarding path. **Entice** and **Enter** are absent. The journey starts at **Engage** (user is already on the board, ready to move).

**Hypothesis:** If the prototype assumes the user knows how to interact with a chessboard, the 5Es journey is incomplete. Users unfamiliar with digital chess may not know drag-and-drop is available.

**Kill criterion:** If a user stares at the board for >10 seconds without attempting a move, **Engage** failed — the interaction models are not discoverable.

**Force level:** Should — this is the interaction model discovery gap, already named by Theory of Change (voice 11) and Cynefin (voice 06).

**Evidence:** [?] — no onboarding or feature discovery design (brief line 203).

**Cannot see:** Whether the 10-second counter_metric conflates two failure modes: (1) user does not know how to interact (Engage failure), (2) user knows how but the interaction is slow (performance failure).

---

### 27 Service Blueprint [UX]
**One-line:** What is frontstage (user sees) vs backstage (system does)?

**Sign:** The brief names ValidateMove and RecordMove as services (lines 48-56), but does not specify the frontstage/backstage split. Is legal move validation visible to the user (highlighted legal moves, blocked illegal moves), or is it silent backstage logic?

**Hypothesis:** If ValidateMove is backstage-only (no visual feedback), users will attempt illegal moves and interpret the system's non-response as a bug. The Service Blueprint predicts frontstage visibility is required for trust.

**Kill criterion:** If the prototype allows an illegal move without feedback, the backstage service (ValidateMove) is invisible, and the user cannot learn the system's rules.

**Force level:** Should — the brief names this as a failure mode (line 191: "lo-fi prototype may allow illegal moves").

**Evidence:** [A] — no legal move validation planned (brief line 201); [?] — no error handling design (brief line 205).

**Cannot see:** Whether the absence of legal move validation is a lo-fi constraint (acceptable for Tier 1) or a UX gap (unacceptable even for concept testing).

---

### 28 Signal entropy [UX] — abbreviated
**Sign:** If three interaction models all produce the same output (piece moves, move history updates), the system's signal is high-entropy — the user cannot distinguish cause from effect.

**Cannot see:** Whether signal entropy (many inputs, same output) trains users to default to one interaction model, because the others offer no differentiated feedback.

---

## ECON — Economics

### 29 Value-based pricing [MKT] — abbreviated
**Sign:** Not applicable to a free concept prototype. If this were a product, value-based pricing would ask: "What is the user willing to pay for three interaction models instead of one?"

**Cannot see:** Whether dual-model is a feature users value, or a feature platforms provide because it is technically trivial.

---

### 30 Price corridor [MKT] — abbreviated
**Sign:** Chess.com offers free and premium tiers. Lichess is entirely free. The price corridor for digital chess is $0–$99/year.

**Cannot see:** Whether interaction model choice is a premium feature (users pay for it) or a free feature (table stakes).

---

### 31 Economic buyer [MKT] — abbreviated
**Sign:** The economic buyer for a chess interface is the player (B2C), not an organization (B2B). The buying decision is based on feature set, performance, and community, not interaction model.

**Cannot see:** Whether interaction model is a buying criterion or a discovered feature.

---

## EVID — Evidence Math

### 32 Owen RELATN [IIT]
**One-line:** What is the relationship between claims, and how strong is the evidence?

**Sign:** The brief's claim inventory (lines 210-219) shows **[A]+[?] = 73%**. Owen RELATN reads this as: **most claims in the brief are assumptions, not evidence.** The relationships between claims are speculative.

**Hypothesis:** The prototype is testing a **hypothetical pattern** (do three interaction models coexist?), not a **sourced problem** (users struggle with existing interfaces). RELATN predicts the learning will be about implementation feasibility, not user value.

**Kill criterion:** If the prototype reveals no new evidence (all claims remain [A] or [?] after testing), the RELATN score does not improve, and the brief is still speculative.

**Force level:** Must — this is the evidence standard for Gate 1.

**Evidence:** [R] — claim inventory in brief (lines 210-219); [A] — 73% assumption ratio named as "appropriate for 30% fidelity" (line 96).

**Cannot see:** Whether 73% [A]+[?] is too high even for Tier 1. The brief accepts this as appropriate, but Owen RELATN would flag it as **low confidence in the problem space**.

---

### 33 [CS:] tags [ANT] — abbreviated
**Sign:** The brief uses [CS:] tags correctly (every claim is tagged). Most tags are [A] or [R]; no [D] (data) tags present.

**Cannot see:** Whether [A] claims can be elevated to [R] or [D] with minimal research (e.g., screen recording Chess.com users to measure time-to-first-move).

---

## CNPT — Concept Work

### 36 Mode 5 concept gen [IIT] — abbreviated
**Sign:** The brief generates one concept (tri-modal chess interface). Mode 5 typically generates multiple concepts for comparison.

**Cannot see:** Whether a single-concept prototype yields learning, or whether A/B comparison (dual-modal vs tri-modal) is necessary to isolate the variable.

---

### 37 Mode 6 evaluation [IIT]
**One-line:** How do we evaluate this concept against criteria?

**Sign:** The brief's Idea Score is 12/20 (lines 227-238). The lowest scores are **Problem clarity** (1/5) and **User evidence** (0/5). Mode 6 reads this as: **the concept is feasible but not validated.**

**Hypothesis:** Mode 6 evaluation predicts the prototype will succeed technically (all three models execute a move) but fail strategically (we do not know if this solves a user problem).

**Kill criterion:** If the Idea Score remains ≤15/20 after prototype testing, the concept is not ready for Tier 2 (60% fidelity / Direction).

**Force level:** Should — the brief already uses the Idea Score rubric; Mode 6 just interprets the result.

**Evidence:** [A] — Idea Score calculated in brief (lines 227-238); [R] — rubric sourced from IIT tradition (Owen Quality Pyramid).

**Cannot see:** Whether a 12/20 Idea Score is acceptable for a Tier 1 prototype, or whether it signals the brief should return to Gate 1 (problem research) before building.

---

### 38 Owen Quality Pyramid [IIT] — abbreviated
**Sign:** Quality Pyramid (Feasibility → Viability → Desirability) reads this brief as **Feasibility-strong** (4/5 in brief's rubric), **Viability-unknown** (no business model), **Desirability-weak** (0/5 user evidence).

**Cannot see:** Whether Tier 1 prototypes are expected to test Desirability, or whether Feasibility alone is sufficient at 30% fidelity.

---

## RLZE — Realize

### 39 Mode 7 realize [IIT] — abbreviated
**Sign:** The brief scopes no post-launch plan. Mode 7 (delivery, operations, iteration) is out of scope for a Tier 1 concept prototype.

**Cannot see:** If this were to ship, what is the operations burden (e.g., screen reader compatibility testing for every browser/OS combination)?

---

## META — Metaplan

### 40 Owen Means/Ends [IIT] — abbreviated
**Sign:** The brief's okr_objective (validate coexistence) is a **means**. The **end** is not stated. Means/Ends Analysis asks: "Why validate coexistence? To inform what decision?"

**Cannot see:** Whether the decision is (a) ship a tri-modal interface, (b) learn interaction model integration for a different project, or (c) satisfy Beth's curiosity. The end determines whether the prototype is scoped correctly.

---

### 41 Owen Metaplanning [IIT]
**One-line:** How do we plan to plan?

**Sign:** The brief uses the three-gate framework (Gate 1 · Gate 2 · Gate 3) to structure the prototype plan. This is **metaplanning** — a plan for how to validate the plan.

**Hypothesis:** The three-gate framework is functioning as designed: Gate 1 flags "no user research," Gate 2 flags "no mission alignment," Gate 3 flags "shallow legal move validation." The metaplan works, but the brief proceeds anyway, because Tier 1 prototypes accept high [A]+[?] ratios.

**Kill criterion:** If the prototype fails and the three-gate framework did not predict the failure mode, the metaplan is incomplete.

**Force level:** Must — the metaplan is the rubric's governance structure.

**Evidence:** [R] — three-gate framework documented in brief structure; [A] — 73% assumption ratio accepted as appropriate (brief line 96).

**Cannot see:** Whether "appropriate for Tier 1" is a metaplanning decision (Beth decided to proceed despite low evidence) or a default (the rubric allows 30% fidelity to proceed with high [A]+[?]).

---

### 42 Owen two-step development [IIT] — abbreviated
**Sign:** Two-step development (Concept → Specification) maps to Tier 1 → Tier 2 in the brief's fidelity model. The brief is at **Concept** (30% fidelity).

**Cannot see:** What threshold must be met to advance to **Specification** (60% fidelity / Tier 2). The brief does not name this.

---

### 43 Owen Originator/Contributors [IIT] — abbreviated
**Sign:** Originator = Beth. Contributors = none (solo project, line 171).

**Cannot see:** Whether solo projects at Tier 1 are viable for concepts requiring user research. Owen Originator/Contributors typically surfaces collaboration gaps.

---

### 44 IDEO Design Thinking [IDEO] — abbreviated
**Sign:** IDEO's five stages (Empathize · Define · Ideate · Prototype · Test) map to the brief's gates. **Empathize** is Gate 1 (absent here: no user research). **Prototype** is Gate 3 (present). **Test** is planned but limited (Beth self-testing, line 171).

**Cannot see:** Whether skipping Empathize at Tier 1 is acceptable, or whether it undermines the entire Design Thinking process.

---

## CROSS-TALK — Voices read each other

### 1. Direct response — SIGN (voice 01 Peirce) reads CHTR (voice 11 Theory of Change)

**Peirce:** Theory of Change says the mechanism is "users will choose" their preferred interaction model. But the Sign (observed pattern in scout_input/01) is "platforms provide both models." The world signals **platform choice**, not **user choice**. If users do not actively choose, they default — and the Theory of Change's mechanism is false.

**Cannot see (from Peirce):** Whether defaulting is user satisfaction (they don't care which model, they just want to move the piece) or user resignation (they would choose if they knew how).

---

### 2. Direct response — JRNY (voice 26 UX 5Es) reads FEAT (voice 15 Kano)

**UX 5Es:** Kano says drag-and-drop and click-to-move are Basic Expectations. But 5Es says **Entice** and **Enter** are missing — the prototype does not onboard the user to the available interaction models. If a Basic Expectation is not discoverable, it is not basic — it is **hidden**.

**Hypothesis (from 5Es):** Kano and 5Es diverge on discoverability. Kano assumes users know the feature exists (they expect it). 5Es assumes users must be taught (they discover it). For a concept prototype with no onboarding, 5Es predicts the feature is not Basic — it is **latent**.

**Cannot see (from 5Es):** Whether latent features can be validated in a Tier 1 prototype, or whether discoverability testing requires Tier 2 (60% fidelity / onboarding designed).

---

### 3. Blind-spot supply — NEEDS (voice 23 SDT) fills SIGN (voice 04 Mode 1)'s "Cannot see"

**Mode 1 semiotics:** Cannot see whether users care which interaction model they used, or only care that the move succeeded.

**SDT:** Users care. Autonomy (one of the three needs in SDT) requires **knowing how you succeeded**, not just succeeding. If the UI does not confirm which interaction model was triggered, the user cannot build a mental model of the system. Repeated success without understanding erodes autonomy and prevents mastery.

**New claim (from SDT filling Mode 1's gap):** The absence of interaction model feedback is not a cosmetic gap — it is an **autonomy erosion**. Users may complete moves successfully but feel they are "clicking randomly" until something works. This is learned helplessness, not coexistence.

---

### 4. Blind-spot supply — JOBS (voice 22 emotional/social JTBD) fills JRNY (voice 25 Mode 3 ethnography)'s "Cannot see"

**Mode 3 ethnography:** Cannot see what a naive user would do. Beth's mental model primes her to discover all three interaction models.

**JTBD emotional/social:** A naive user's emotional job is not "test three interaction models" — it is **"play chess without feeling stupid."** If the interface offers three interaction models with no onboarding, the naive user may interpret multiple affordances as complexity, not choice. Emotional JTBD predicts the naive user will try one model, succeed or fail, and then stop exploring — because exploring feels like admitting ignorance.

**New claim (from JTBD filling Mode 3's gap):** The ethnographic gap is not just "we don't know what naive users do" — it is **"we assume naive users explore, but emotional JTBD predicts they satisfice."** The prototype may pass Beth's self-test and fail a naive user test, not because the interaction models are broken, but because the naive user never discovers them.

---

### 5. Productive tension — SIGN (voice 01 Peirce) vs CHTR (voice 07 Owen Project Statement)

**Peirce:** The world is signalling that dual-model is the documented solution, not a novel hypothesis. The prototype is reverse-engineering a known pattern.

**Owen Project Statement:** The Project Statement is "validate that drag-and-drop and click-to-move can coexist in a single interface without cognitive overload." This is a validation claim, not a learning claim.

**Tension:** Peirce and Owen Project Statement diverge on whether this prototype **tests a hypothesis** (can dual-model coexist?) or **demonstrates a pattern** (dual-model already coexists in Chess.com and Lichess). If the latter, the validation claim is false — we are not validating, we are reproducing.

**Decision required:** Is the prototype testing "can it work?" (hypothesis) or "can Beth build it?" (skill development)? The brief conflates the two.

---

### 6. Productive tension — JRNY (voice 26 UX 5Es) vs FEAT (voice 15 Kano) on progressive disclosure

**UX 5Es:** The prototype needs onboarding to make the three interaction models discoverable.

**Kano:** Drag-and-drop and click-to-move are Basic Expectations — users expect them, so onboarding is unnecessary.

**Tension:** 5Es assumes users need to be taught; Kano assumes users already know. This is the **progressive disclosure paradox**: if three interaction models represent a skill ladder (Tavory/Timmermans voice 02), then Basic Expectations for advanced users (notation entry) are **Delighters or Performance Benefits** for beginners (they don't know it exists).

**Decision required:** Are the three interaction models **simultaneously available** (coexistence) or **progressively disclosed** (skill ladder)? The brief does not choose.

---

### 7. Productive tension — LAND (voice 33 Mode 2 landscape) vs CHTR (voice 11 Theory of Change) on what to learn

**Mode 2 landscape:** The competitive question is not "does dual-model work?" but "what does Chess.com do differently with dual-model that made them the category leader?"

**Theory of Change:** The mechanism being tested is "users will choose their preferred interaction model, and coexistence will be validated if time-to-first-move remains <10 seconds."

**Tension:** Mode 2 landscape wants to study **competitive variance** (how do implementations differ?). Theory of Change wants to study **user behavior** (do users choose, and how fast?). These are two different research questions.

**Decision required:** Is the prototype a **competitive analysis study** (compare this implementation to Chess.com's) or a **user behavior study** (observe choice and time)? The brief does not distinguish.

---

### 8. New claim from cross-talk — JOBS (voice 20 functional JTBD) + JRNY (voice 25 Mode 3 ethnography) produce a segmentation hypothesis

**JTBD functional:** The functional job is "make a legal chess move." All three interaction models do this job.

**Mode 3 ethnography:** Beth's self-test cannot detect what a naive user would do, because Beth knows all three models exist.

**New claim (synthesized from JOBS + JRNY):** If the three interaction models serve the same functional job, but different user segments discover them differently, the brief is missing a **segmentation hypothesis**:
- **Segment A (beginners):** Discover click-to-move first (visual affordance: clickable squares).
- **Segment B (intermediate):** Discover drag-and-drop second (physical affordance: draggable pieces).
- **Segment C (advanced):** Discover notation entry third (requires knowledge of algebraic notation).

**Test implication:** The prototype should test **discoverability order** (which model do users find first?) and **preference stability** (do users stick with the first model they discover, or switch after learning the others exist?).

**Evidence gap:** The brief assumes all three models are equally discoverable (`[A]` — no onboarding, line 203), but the segmentation hypothesis predicts they are **sequentially discoverable** based on user skill level. This is a testable claim the brief does not test.

---

## Summary of Tensions (for the decision-maker)

| Tension | Voices in conflict | Question for Beth |
|---------|-------------------|-------------------|
| Hypothesis vs Pattern | SIGN (Peirce) vs CHTR (Owen Project Statement) | Are you testing "can it work?" or demonstrating "I can build it"? |
| Coexistence vs Progressive Disclosure | JRNY (5Es) vs FEAT (Kano) · ABD (Tavory alternative reading) | Are the three models simultaneously available, or a skill ladder? |
| Competitive Analysis vs User Behavior | LAND (Mode 2) vs CHTR (Theory of Change) | Are you studying how implementations differ, or how users behave? |
| Autonomy Erosion | NEEDS (SDT) · SIGN (Mode 1 semiotics) | Does the lack of interaction model feedback undermine autonomy, or is successful move completion sufficient? |
| Segmentation Hypothesis | JOBS (functional) + JRNY (Mode 3) cross-talk | Do different user segments discover interaction models in different orders? Should you test discoverability sequence? |
| Commodity vs Product Feature | LAND (Wardley) | Is dual-model (commodity) the real test, or is notation entry (product feature) the innovation? |
| Validation vs Reproduction | SIGN (Peirce) · EVID (Owen RELATN) | If the pattern already exists in Chess.com/Lichess, what does this prototype validate that they have not already proven? |
| Feasibility vs Desirability | CNPT (Owen Quality Pyramid) | Is a 12/20 Idea Score (strong Feasibility, weak Desirability) acceptable for Tier 1, or does it signal Gate 1 needs more work? |

---

**Council reads the brief at 12/30 readiness.** High [A]+[?] ratio (73%) is structurally appropriate for Tier 1 (30% fidelity / Concept), but eight productive tensions surface questions the brief does not answer. The prototype can proceed, but the tensions will not resolve during build — they require decisions from the Originator (Beth).

---

*Testimony complete. 44 voices. 8 tensions named. 0% Claude in synthesis slot — Beth fills this.*
