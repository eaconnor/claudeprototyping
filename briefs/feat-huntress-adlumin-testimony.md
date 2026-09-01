# FEAT Cluster — Huntress vs Adlumin Feature-Quality Testimony
**Cluster:** FEAT (Feature / Concept Quality) · **Voices:** Kano [INNOV] · Blue Ocean ERRC [STRAT]
**Lens:** Adlumin's (N-able's product) against the Huntress-defined market
**Cost:** MEAL
**Pool bias warning:** Sources 03 and 05 are N-able-authored. Neutral pool (source 04) is n=1 for Adlumin, n=7 for Huntress. Huntress-side claims in source 05 are N-able's *characterization* of a competitor, not Huntress-confirmed.

---

## Voice 1 — Kano [INNOV]

**Sign**
Source 05 states detection *presence* is at "parity-or-better" for Adlumin across endpoint (Defender AV lifecycle, discrete event IDs 1116/1117/1118/1015), Defender tampering, and M365 identity [CS: MEDIUM — internal claim, source 05 §1–4]. Source 03 lists the 10 factors N-able *chose* to compete on — and conspicuously omits SAT, Smart Filtering, and EDR maturity [CS: HIGH — source 03 §note, the omission is observable in the doc]. Source 01 shows Huntress leading with human-led 24/7 SOC, Smart Filtering, SAT, predictable per-data-source pricing [CS: HIGH — vendor copy, source 01]. Source 05 §5 names the live Huntress differentiators as persistence-hunting, human-readable narratives, MSP-friendly explanation, Mac visibility [CS: MEDIUM — internal claim].

**Hypothesis**
The detection-presence factors are commoditizing — migrating delighter → performance → must-be. EDR, ITDR, M365 detection, automated containment are now table stakes both vendors meet; they no longer differentiate, they only punish absence. The live excitement axis (delighter) has moved off detection entirely and onto the *explanation layer*: the "why this matters" narrative, persistence-clustering, customer-consumable forensic summaries (source 05 §6). This is why source 05 explicitly tells N-able NOT to position on detection count — Kano predicts that pitch lands as indifferent, because the customer already assumes detection presence.

**Feature classification (from source 03 factor list + source 05 battlecard):**

| Feature | Kano class | Migration note |
|---|---|---|
| EDR / endpoint detection | Must-be | Fully commoditized; absence = dealbreaker [CS: HIGH] |
| M365 / identity detection (ITDR) | Must-be → performance edge | Commoditizing; Adlumin's multi-signal correlation still scores on the performance axis [CS: MEDIUM, source 05 §4] |
| Automated containment / SOAR playbooks | Performance | More-is-better; Adlumin's hard response actions (isolate, disable acct) outscore Huntress's advisory model [CS: MEDIUM, source 05 §3] |
| Breach warranty | Delighter (currently) | Only Adlumin has it; corroborated neutral (source 04). Will migrate to must-be if Huntress adds it [CS: MEDIUM, source 03 §9 + source 04] |
| Coverage breadth (DNS, network, Shadow AI, honeypots, UEBA, darknet) | Indifferent → performance | Wide surface, but no independent depth confirmation; risk of "indifferent" if depth is shallow [CS: MEDIUM, honor-check §3 warns depth unconfirmed] |
| Smart Filtering (Huntress) | Performance (Huntress's) | Storage/noise reduction; Adlumin has no named equivalent [CS: HIGH, source 01] |
| SAT (Huntress) | Indifferent (for the MDR buyer) → delighter (for MSP bundle buyer) | Off-axis for detection contest; bundling delighter [CS: HIGH, source 01] |
| **Signal→Story narrative / persistence-clustering / forensic summaries** | **Delighter (the live excitement axis)** | The only factor still capable of surprise-and-delight; currently Huntress-owned [CS: MEDIUM, source 05 §6] |
| Self-service investigation data / audit-ready case files | Performance → delighter | Adlumin claims it (source 03 §6–7); if real, it's the substrate the delighter narrative rides on [CS: LOW — vendor-biased, source 03] |

**Commoditizing call:** Detection presence (endpoint + identity) has completed delighter→performance→must-be migration. Breach warranty is mid-migration (delighter today, must-be on Huntress response). The explanation layer is the *un*-commoditized delighter.

**Kill criterion**
Kano is wrong if a neutral, adequately-powered buyer study shows MDR purchasers rank raw detection breadth/count ABOVE narrative quality in selection criteria — i.e., detection is still a performance attribute, not a must-be. The pending Win/Loss report (source 05 §related, page 61977427997) would settle this. If win/loss shows deals lost on detection gaps not explanation gaps, the classification inverts.

**Force level:** Should. The classification is well-reasoned but rests on a single internal source for the must-be/delighter split.

**Evidence**
- Detection parity-or-better: [CS: MEDIUM — source 05, internal claim]
- Breach warranty Adlumin-only: [CS: MEDIUM — source 03 + corroborated source 04]
- Explanation layer as live differentiator: [CS: MEDIUM — source 05 §5–6]
- Feature presence lists: [CS: HIGH — vendor pages, sources 01–02]

**Cannot see**
Kano classifies satisfaction response to features that *exist*. It cannot see whether Adlumin's narrative layer is *buildable* or what it costs to build, nor whether the named breadth features (honeypots, UEBA, darknet) have real depth. Kano reads customer reaction, not engineering feasibility or actual maturity. With n=1 neutral Adlumin review, Kano's must-be/delighter split is inferred from N-able's own framing, not from measured customer satisfaction.

[ROI from this lens]
  Business: Unknown — no win/loss or attach-rate data on which factor closes deals. Pending source page 61977427997.
  User: Narrative/explanation layer reduces MSP analyst triage time — magnitude Unknown: gap (no measured MTTR-to-understanding figure for either product).

---

## Voice 2 — Blue Ocean ERRC [STRAT]

**Sign**
The industry's competing factors, as the market defines them (source 01 + 03): detection breadth, human-led SOC, Smart Filtering / noise reduction, automated containment, per-data-source pricing predictability, SAT, compliance retention, breach warranty, narrative/explanation. Huntress's value curve peaks on human-led SOC + Smart Filtering + SAT + predictable pricing [CS: HIGH, source 01]. Adlumin's claimed curve peaks on automation-first containment + cross-layer coverage breadth + breach warranty [CS: MEDIUM, sources 02–03]. Source 05 says raw detection breadth is now a *saturated* factor — both vendors at parity — and the unoccupied space is the explanation/narrative layer [CS: MEDIUM, source 05 §6].

**Hypothesis**
Adlumin is currently competing inside the red ocean by out-listing Huntress on feature surface (source 03's whole 10-factor frame is a more-features argument). That is value-curve mimicry, not divergence. The blue water is not more detection — it's the *MSP-readable forensic narrative as a first-class product surface*. No vendor in the pool has made "the customer understands the attack" a designed deliverable rather than a SOC byproduct. ERRC says: stop competing on breadth (saturated), create a new factor (explanation-as-product).

**ERRC Grid — Adlumin against the Huntress-defined market:**

| ELIMINATE | REDUCE |
|---|---|
| "We have more detections than Huntress" positioning (source 05 §7 explicitly says do NOT do this) [CS: MEDIUM] | Investment in *additional* coverage-surface features (honeypots, darknet, UEBA breadth) where depth is unconfirmed — stop widening, deepen [CS: MEDIUM, honor-check §3] |
| Feature-count battlecards as the primary sales frame (source 03's own structure) [CS: HIGH the structure exists] | Reliance on vendor-authored comparison as proof — it reads as advocacy, not evidence [CS: HIGH, source 03 is self-authored] |

| RAISE | CREATE |
|---|---|
| Automated containment speed advantage — "stops more attacks earlier" (source 05 §3) — this is a real divergence from Huntress's advisory model [CS: MEDIUM] | **Signal→Story: persistence-focused attack-path clustering rendered as a customer-consumable forensic narrative** — the factor source 05 §6 names as missing and Huntress-owned [CS: MEDIUM] |
| Self-service investigation transparency / audit-ready case files (source 03 §6–7) into a genuine workflow surface [CS: LOW — vendor claim] | **Pre-persistence attacker-intent detection as an explained event** — Adlumin sees Defender tampering Huntress misses (source 05 §2); surface it as a narrative, not a raw signal [CS: MEDIUM] |

**Strategic read:** The CREATE column is where Adlumin escapes the red ocean. It RAISES on containment speed (real today) and CREATES on explanation — which converts Adlumin's existing telemetry advantage (already on disk per source 05) into a differentiated experience without new detection engineering. Source 05 §6 confirms: "solvable without new telemetry."

**Kill criterion**
ERRC is wrong if the MDR market does not value explanation as a buying factor — if buyers treat forensic narrative as a nice-to-have the SOC handles invisibly, then "create explanation-as-product" builds a factor nobody pays for, and the blue ocean is a puddle. Falsified by a win/loss or buyer study showing narrative ranks low in selection. Also wrong if Huntress's lead on Smart Filtering / human-led SOC is itself the uncontested blue water and Adlumin should be defending pricing/noise instead.

**Force level:** Ought. The grid is coherent and the CREATE quadrant is grounded in source 05, but "explanation-as-product" as blue water is a strategic bet on an unvalidated buying factor.

**Evidence**
- Containment divergence (hard actions vs advisory): [CS: MEDIUM — source 05 §3]
- Explanation layer unoccupied: [CS: MEDIUM — source 05 §6, single internal author]
- Telemetry already present, gap is enrichment: [CS: MEDIUM — source 05 §6]
- "Don't position on detection count": [CS: MEDIUM — source 05 §7]
- Feature-surface breadth claims: [CS: LOW — vendor-biased, source 03]

**Cannot see**
ERRC sees factor divergence, not whether a created factor has a paying market. It cannot price "explanation-as-product" or tell you build cost. It also cannot see the customer's *satisfaction function* — whether eliminating the feature-count pitch costs Adlumin deals where the buyer's checklist still rewards surface breadth. ERRC assumes the value curve is the contest; it cannot confirm buyers shop on curves rather than checklists. With the neutral pool at n=1 for Adlumin, ERRC cannot validate that Adlumin's claimed RAISE factors (transparency, audit case files) actually deliver in practice.

[ROI from this lens]
  Business: Create-quadrant value = differentiation that sidesteps the breadth arms race; margin protection by avoiding spend on unconfirmed-depth coverage features. Dollar value Unknown: gap.
  User: MSP gets an attack they can explain to their own client — retention/trust value. Magnitude Unknown: gap.

---

## Cross-Talk — REQUIRED

**1. Direct response (Kano reads ERRC's Sign):**
ERRC reads "detection breadth is saturated, so eliminate the feature-count pitch." Kano offers a different reading of the same sign: breadth isn't saturated — it's *indifferent*, and the two are not the same. A saturated factor still gets noticed (Kano: must-be — its absence hurts). An indifferent factor produces no satisfaction response either way. Kano's classification (coverage breadth → indifferent → performance, depending on unconfirmed depth) says ERRC's "stop widening, deepen" is right for the wrong reason: not because breadth is saturated, but because most of that surface (honeypots, darknet, UEBA) may be sitting in the *indifferent* zone where customers don't react at all. ERRC would eliminate the pitch; Kano says the underlying *features* may be the dead weight, not just the pitch.

**2. Blind-spot supply (ERRC fills Kano's "Cannot see"):**
Kano cannot see whether the narrative layer is buildable or what it costs. ERRC supplies it: source 05 §6 says the explanation layer is "solvable without new telemetry" — the signals, severity logic, and response hooks already exist; the gap is correlation/clustering/rendering, i.e. an enrichment-and-presentation build on data already on disk. So Kano's "delighter" is not a moonshot detection-engineering program — it is, per ERRC's strategic read of the source, a presentation-layer build on existing telemetry. That changes the delighter from "expensive bet" to "high-leverage, low-telemetry-cost bet." (Still [CS: MEDIUM — single internal source; "solvable" is N-able's own assessment, not an engineering estimate.)

**3. Productive tension (sourced contradiction — routed, not resolved):**
Kano classifies breach warranty as a current **delighter** (Adlumin-only, corroborated neutral in source 04 — exciting, drives positive selection). ERRC's grid does not place breach warranty in any quadrant — it is neither raised, created, nor defended; it sits unaddressed. This is a contradiction on the same feature: Kano says breach warranty is a live excitement driver worth leaning on *now*; ERRC's blue-ocean logic implicitly treats it as already-priced-in (a feature, not a new value curve) and routes all strategic energy to the explanation layer instead.

> **Kano and Blue Ocean ERRC diverge on breach warranty.** Kano: it's a delighter, lead with it before Huntress neutralizes it. ERRC: it's not the blue water — explanation-as-product is — so don't spend the strategic narrative on it. This is a decision, not a gap. **Routed to the brief owner:** does Adlumin lead near-term sales with the breach-warranty delighter (Kano's bet, exploit before it migrates to must-be) OR hold strategic narrative for the explanation-layer blue ocean (ERRC's bet, build the uncontested factor)? You cannot foreground both as *the* differentiator without diluting one.

**Claim neither voice produced alone:** The cross-talk yields this — Adlumin's strongest move is *sequenced*, not chosen: exploit breach warranty as the near-term delighter (Kano) to win deals NOW, while funding the explanation-layer build (ERRC's CREATE quadrant) as the durable differentiator — because ERRC's blind-spot fill proves the explanation layer is a low-telemetry-cost build, so it does not compete for the same engineering dollars that detection-breadth deepening would. The two bets are sequencable precisely because one is a positioning move (warranty) and one is a presentation-layer build (narrative) — they don't contend for the same resource. Neither voice saw this alone: Kano couldn't price the build, ERRC couldn't see the warranty's near-term satisfaction value.

[WOBBLY · FEAT] — Both voices flag: the must-be/delighter split (Kano) and the "explanation is uncontested blue water" thesis (ERRC) both rest on source 05, a single internal author (Alicia Jeatsa, Feb 2026), with Huntress-side claims being N-able's characterization. The neutral validation pool is n=1 for Adlumin. Neither voice could fill all six fields from independent, adequately-powered evidence. The pending Win/Loss report (page 61977427997) is the named source that would lift both voices out of WOBBLY.

---

## Synthesis
[0% Claude — fill this in]
