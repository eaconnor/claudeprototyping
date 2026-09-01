# CLAUDE.md — Alpha RACE Customer Demo Handoff

**Project:** Alpha RACE Customer Demo (Tier 1 Concept)
**Date:** 2026-05-29
**Owner:** Beth Schwindt
**Readiness:** 24/30 (NOT READY for customer demo without decisions resolved)

---

## What's in this folder

This is a **handoff packet** for any Claude Code session opening this folder. All files needed to understand, evaluate, or advance the Alpha RACE demo prototype are here.

**Reading order:** Start with `README.md` → `HANDOFF.md` → `NEXT-STEPS.md` → brief + prototype + critic passes.

---

## Context for new sessions

**What Alpha RACE is:** MDR incident consolidation + transparency UI. Reduces 47 alerts → 12 incidents. Gives analysts narrative summary ("What happened / What we did / What to do next") + timeline + scoring + override controls.

**What this prototype is:** Tier 1 Concept (30% fidelity, lo-fi stakeholder review). Built for internal review (Carla, Nicole, Zachary). **Not ready for customer demo** without four blocking decisions resolved.

**Why this exists:** Test whether consolidation ratio (47→12) communicates value to customer buyers (CISOs, IT Directors) in a 30-second read.

---

## Key constraints

1. **Fidelity level:** Tier 1 Concept (30%). Appropriate for internal stakeholders. Requires T2+ (60-90%) for customer demo.
2. **Evidence ratio:** 58% [A]+[?] world-claims. Band Protocol requires <30% [A]+[?] for production. High assumption ratio is **expected** at T1, **unacceptable** at T3.
3. **Four blocking decisions:** Customer profile, success criteria, incident story source, narrative format validation. All unresolved. See `NEXT-STEPS.md`.
4. **Council tensions:** 10 framework clashes identified. Three major: JOBS/SDT (autonomy), SIGN/JRNY (reading order), PORT/POS (competitive timing).

---

## File manifest

```
CLAUDE.md                        ← you are here
README.md                        ← start here
HANDOFF.md                       ← verified math, tensions, three calls
NEXT-STEPS.md                    ← decisions only Beth can make
alpha-race-rail.md               ← Bradley rail (portable markdown)
alpha-race.brief.md              ← three-gate brief, claim-tagged
alpha-race-math-recount.md       ← 58% [A]+[?] breakdown
alpha-race.html                  ← working prototype
critic-pass-1.md                 ← pre-build scorecard (21/30)
critic-pass-2.md                 ← post-build re-score (24/30, +3 delta)
council-summary.md               ← council executive summary (10 tensions)
scout/                           ← source docs (5 files)
```

---

## How to use this handoff

**If you are a Claude Code session opening this folder:**

1. Read `README.md` first (reading order + what's testing).
2. Read `HANDOFF.md` for verified math + tensions + three calls.
3. Read `NEXT-STEPS.md` for decisions that block further work.
4. Open `alpha-race.html` in browser to see working prototype.
5. Read `critic-pass-1.md` + `critic-pass-2.md` to understand what changed pre/post build.
6. Read `council-summary.md` for framework tensions (10 clashes across JOBS/SDT/SIGN/JRNY/PORT/POS/etc).

**If Beth asks you to advance this work:**

- Do NOT proceed to T2 build without resolving Decisions 1-2 (customer profile, success criteria).
- Do NOT ship to customer without resolving all four blocking decisions.
- Re-run spec agent after decisions resolve. Target <40% [A]+[?] for T2.

---

## Non-negotiables

- **Free.** No paywalls.
- **Open.** Fork it. Teach it.
- **Local-first.** Juliet stays private.
- **Lucy holds the clipboard.** Work for Beth, not the vendor.
- **[CS:] tags.** Fluency does not lie about accuracy.
- **47% rule.** Verify every ratio before quoting it.

---

**End of CLAUDE.md.**
