# Ecoverse — Killer-App Openings

*"Opening" in the chess sense: a first move that changes the shape of the whole game, not a fix for one problem at a time. Each option below is checked against one rule: does it genuinely use the one thing N-able has that a brand-new competitor can't just decide to have — years of real data already sitting on real customers' machines? If an option doesn't pass that test, it's a feature, not an opening, and it goes in the "not this" pile.*

**Rejected on that test, up front:** the current deck's own idea ("Action1 is good at X, Automox at Y, Tanium at Z, Ninja at W — we combine all four") fails this test. None of those four strengths require years of history on *this specific customer's* estate. A well-funded startup could copy the bundle. Nobody can copy the history. Every option below leads with the history instead.

---

## Opening 1 — "You're already our customer" (start with the existing base, not new acquisition)

**The move:** Instead of building Ecoverse for brand-new customers first (which needs a self-service trial/signup/billing funnel that's currently 9-of-10 not started — Fight 1), offer it *first* to N-able's own existing N-sight customers, as "here's what your estate looks like through an AI-native lens, using the years of data we already have on you."

**Why this genuinely uses the advantage:** This is the only option that doesn't need the unbuilt new-customer funnel at all. The customer relationship, the billing, the installed agent — all already exist. The only new thing is the AI layer on top of data N-able already has.

**What it fixes:** Directly forces an answer to Fight 2 (what happens to existing customers) — instead of that being a deferred liability, it becomes the actual go-to-market. Also sidesteps Fight 1 (the broken new-customer onboarding funnel) almost entirely, since there's no new sign-up flow needed for an existing customer.

**The catch:** This is a *retention and expansion* play, not a *land-grab*. It won't win new customers away from Ninja or Action1 — the strategy's stated ambition ("default platform for all new acquisition") needs a different opening for that fight, see Opening 3. It also doesn't resolve identity/RT-system-state (Fight 4-adjacent) — an existing customer's data is only as useful as the platform's ability to act on it well.

**How big a lift:** Large on Fight 1 and Fight 2 specifically. Doesn't touch Fight 3's underlying "why switch off Ninja" question for *new* MSP customers — it's a different fight, aimed at a different customer.

---

## Opening 2 — "We already know what normal looks like" (benchmark-driven onboarding)

**The move:** Use the aggregate, anonymized pattern data across N-able's whole existing base — thousands of estates managed for years — to tell a *brand-new* customer, on day one, exactly where they stand: "a typical 250-person company patches within 9 days; you're at 40 — here's what that's costing you." No new competitor can say this credibly on day one, because they don't have thousands of comparable estates to draw the benchmark from.

**Why this genuinely uses the advantage:** It's the aggregate history across the *whole* base, not just one customer's own data — this is the "years of data" advantage applied to a customer who has never used N-able before, which Opening 1 can't do.

**Honest caveat, don't oversell this:** Action1 already manages 10M+ endpoints, so scale alone isn't a clean win — the real question is whether N-able's data is *richer* (longer history, more context per estate) not just *bigger*. That claim needs checking before it goes in front of a customer, not asserted.

**What it fixes:** This is the strongest direct answer to Fight 3 (why switch off Ninja) for the *new-customer* motion specifically — it's a real, hard-to-copy reason to trial Ecoverse instead of a competitor, rather than a bundling claim.

**How big a lift:** Potentially the single biggest lift on Fight 3, *if* the richer-not-just-bigger claim holds up. That needs a quick, cheap check before anything else — see "what to do next," below.

---

## Opening 3 — "The AI that shows its work" (trust infrastructure as the headline, not a footnote)

**The move:** Instead of leading with "AI Coworkers do the work automatically," lead with a visible, always-on record of exactly what any AI action touched, why, and under whose approval — make the *audit trail itself* the product's front door, not a compliance feature buried in Section 04.

**Why this genuinely uses the advantage:** N-able has already shipped a working version of AI-permission scoping once before (on the existing N-sight product). This isn't a new capability being promised — it's a real, proven mechanism being put front-and-center instead of hidden.

**What it fixes:** Directly answers Fight 4 (will technicians trust this) by turning the exact anxiety — "will this AI do something I can't see or undo" — into the headline feature instead of an afterthought. Also gives a real, concrete answer to what "identity" and "RT system state" mean (Part 1 of the gap analysis): identity is *who the audit trail attributes actions to*, RT system state is *what the AI is doing right now, visibly, as it happens*. Both terms stop being undefined the moment this becomes the product's spine.

**The catch:** This is an enabling/trust feature, not by itself a reason to switch. It makes Openings 1 and 2 *safer to believe*, but it doesn't answer "why act now" on its own.

**How big a lift:** Medium on its own; large as a multiplier underneath Opening 1 or 2 — a customer is more likely to believe the data-driven pitch if they can also see, in real time, that the AI isn't a black box.

---

## Which of these is the actual opening move

**Play Opening 1 and Opening 3 together, first.** Reasoning: Opening 1 is the cheapest to actually ship (no new customer funnel needed, existing relationship and billing already exist) and it forces the one decision (Fight 2) that's been sitting unresolved this whole time. Opening 3 makes it trustworthy the moment real Coworker actions start happening on existing customers' live estates — which matters *more* on an existing, trusted relationship than on a stranger's first trial. Together they don't need the broken new-customer onboarding funnel (Fight 1) to prove out at all.

**Opening 2 is the bigger, longer-term prize** — it's the real answer to "why would a *new* MSP customer switch off Ninja" — but it needs one honest gut-check before it's worth building anything: is N-able's existing data actually richer than Action1's at comparable scale, or just older? That's a half-day research question, not a build.

---

## What to do next — three honest options, not a recommendation to build yet

1. **Check Opening 2's core claim first (cheap, half a day).** Pull a handful of real, anonymized examples of the kind of benchmark insight N-able's data could produce today, and see if it's actually distinctive — or if it turns out thinner than hoped. This should happen *before* anyone gets excited about Opening 2, not after.
2. **Take Opening 1 into a proper vision-style write-up** (using this repo's `vision` skill's offering format — wicked problem, value prop, the actual bet, evidence) before building anything. This is a half-step below a prototype: it forces the "why this makes money" and "riskiest assumption" questions onto paper without committing to code yet.
3. **Go straight to a prototype** of Opening 1 (the existing-customer lens) — since it needs the least unbuilt infrastructure, it's the cheapest of the three to actually mock up and react to. Per this repo's rules, that means running the full scout → spec → critic → build → critic pipeline, not a quick sketch — worth knowing before committing, since it's a real (if worthwhile) chunk of work.

Tell me which of these three — or say if you want to talk through the options more first before picking.
