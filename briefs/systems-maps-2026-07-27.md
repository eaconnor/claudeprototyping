# Systems Maps — ACP / Head-Nerd advisory (2026-07-27)

*First cut, per Goldhar's lens: map the process, find the bottleneck, name the two businesses, fishbone the failure. Text maps — durable; can render as SVG/FigJam on return. All grounded in the read corpus; strategic overlays tagged `[A]`.*

---

## Map 1 · STS / process map — the Head-Nerd advisory flow (with the bottleneck marked)

The core service process, from Joe/Lewis/Stefanie's own description. ★ = the constraint (scarce Head Nerd judgment). ⚙ = where the kit offloads the constraint.

```
                          ┌─────────────────────────────────────────────┐
                          │   "WHAT GOOD LOOKS LIKE"  (the corpus)★      │
                          │   golden image · schema · Stefanie's method  │
                          └───────────────┬─────────────────────────────┘
                                          │ (built once, reused)  ⚙
   client context ──►  ┌─────────┐   ┌────▼─────┐   ┌─────────┐   ┌──────────┐   ┌─────────┐
                       │ DIAGNOSE│──►│  KIT      │──►│ FIT to  │──►│ CERTIFY  │──►│ DELIVER │
   asset context ──►   │ the gap │   │ assemble  │   │ the     │   │ (drill / │   │ EBR /   │
                       │ vs good★│   │ 75% ⚙     │   │ asset★  │   │ Sea      │   │ runbook │
                       └─────────┘   └───────────┘   │ (25%)   │   │ Trials)★ │   └────┬────┘
                            ▲                          └─────────┘   └──────────┘        │
                            │                                                            ▼
                            └───────────────── feedback: outcome → Value Ledger ($ = enterprise value)
```

**Reading it:** the constraint (★) shows up at **diagnose, fit, and certify** — the three judgment steps. The kit (⚙) attacks exactly those: the corpus makes "what good looks like" reusable (offloads diagnose), and the 75% skeleton offloads the bulk of the build. What's left on the human is the 25% fit + the certification sign-off.
**v1 → v2 (theory-of-constraints):** v1 = Head Nerd *wields* the kit (constraint stays in the loop, throughput ↑). v2 = MSP self-serves the offloadable steps; the Head Nerd's judgment concentrates on certify + the hardest fits. Ceiling = how much of ★ industrializes into ⚙ (the Corning/Scharffenberger divide).

---

## Map 2 · The two businesses (Donner) — production line vs job shop

```
                         ┌──────────────────────────────┬──────────────────────────────┐
                         │      PRODUCTION LINE          │        JOB SHOP               │
                         │      → AUTOMATE               │        → KIT                  │
        ─────────────────┼──────────────────────────────┼──────────────────────────────┤
        Work             │ ticket triage · patch ·       │ runbook design · EBR ·        │
                         │ alert suppression · exec       │ tabletop · maturity coaching  │
        ─────────────────┼──────────────────────────────┼──────────────────────────────┤
        Variety/variation│ low · repeatable              │ high · unique per client      │
        Marginal cost    │ ~zero (software)              │ non-zero (needs the craftsman)│
        Moat             │ none — commoditizes           │ corpus + cred (kit the expert)│
        Margin           │ compresses                    │ premium (advisory)            │
        Who competes here│ everyone (CW/Kaseya/Claude)   │ ~nobody (they're automating)  │
        N-able strategy   │ ride it (Offering D on-ramp)  │ OWN it (Offering A / vCISO)   │
        ─────────────────┴──────────────────────────────┴──────────────────────────────┘
```

**The category error the market makes:** applying production-line logic ("standardize, standardize" — Lewis) to job-shop work → commodity garbage (generic playbooks that "could cause harm"). N-able's edge = **classifying correctly, then kitting the job shop while everyone else automates.** `[A — session thesis]`

---

## Map 3 · Fishbone — "why the runbook fails at go-time" (Joe's root causes)

```
                                                             UNTESTED
   NOT ASSET-SPECIFIC          NO TIME (the 70%)          (no paper copy /
   (generic "for a business")  never built their own      never drilled)
            \                        |                        /
             \                       |                       /
              \                      |                      /
               ────────────────────►◆ RUNBOOK FAILS ◄──────────────────────
              /                      |                      \
             /                       |                       \
            /                        |                        \
   OWNER-NOT-TECHNICIAN        NO CERTIFICATION           LEGAL/LE GAP
   (bought as a feature,       (nobody signed off         (isolate device? call
    priced as opex)            "this is good")             the FBI? — unknown)
```

**Read:** the ribs cluster into two spines — **capability** (untested, generic, no time) and **accountability** (no certification, owner-vs-technician, legal gap). Sea Trials attacks the capability spine (drill + asset-fit + certify); Defensibility/Black Box attack the accountability spine. The shared root under "no time" and "never built their own" is the same one that threatens *adoption* (v2): the 70% who had no time to build won't have time to complete the 25% either. `[R internal — Joe 11:12–17:41]`

---

## Map 4 · Fleet dependency + gate map (from canon Jul 14/20)

```
                 Q1 ─ data-egress/DPA (~40%) ──────gates──────┐
                 Q2 ─ operator wants mechanism (~50%) ───gates─┤
                                                               ▼
   ┌────────────────────────────────────────────────────────────────────────┐
   │  A · Client-Facing Proof (QBR/EBR)   [gated: Q1, Q2]     ← LEAD          │
   │      └─ rides → Value Ledger (BUILT, renders $0 ✗)                       │
   │      └─ rides → Runbook Engine (BUILT)                                   │
   │  C · Live IR/RCA          [gated: Q1, Q2, Gate C (Adlumin access)]       │
   │  D · Ticket Triage        [gated: Q2]  ← day-1 on-ramp (BUILT spec)      │
   │  E · Cross-Tool Recon     [gated: Q1]  ← discovery spike only            │
   ├────────────────────────────────────────────────────────────────────────┤
   │  B · Control Plane  = the SEAT under A/C  AND the governed-bundle        │
   │      flagship (Jul-20 reframe). NOT standalone. Moat = decision-quality  │
   │      on owned telemetry + behavioral-conformance mechanism (UNBUILT).    │
   ├────────────────────────────────────────────────────────────────────────┤
   │  vCISO/vCIO = PACKAGING over A–E (share-of-services pricing).            │
   │      vCIO ≈ A + Env Health + planning · vCISO ≈ C + Tabletop + Alert +   │
   │      identity. Survival = a PRICING decision, not a build.               │
   └────────────────────────────────────────────────────────────────────────┘
```

**Two cheap reads (Q1, Q2) gate most of the fleet.** Both unowned. Everything downstream is a per-survivor question that only matters once they clear.

---

## Map 5 · The build-state tension (engine ahead of runbooks)

```
   BUILT ────────────────────────────►  Runbook Engine (49/49) · Value Ledger (52/52)
                                          · autonomy tiers (ratified) · Ticket Triage spec
   NOT BUILT / NO SPEC ───────────────►  QBR runbook · IR-RCA · normalization · Env Health
                                          · behavioral-conformance mechanism · G4 (govern
                                          externally-built agents)
   RENDERS $0 ────────────────────────►  Value Ledger (built, but no wired producer) ✗ FIX FIRST
```

**The reassuring half:** the build did the hard substrate first. **The tension:** it ships the #6-ranked runbook (Triage) day-1 while the #1 (QBR) has no spec, and the Value Ledger — the whole enterprise-value story — emits nothing until a producer is wired.

---

*Maps to render visually on return: Map 1 (STS/bottleneck) and Map 4 (fleet/gate) are the two worth a real diagram. Fishbone (Map 3) is FigJam-shaped. Say the word.*
