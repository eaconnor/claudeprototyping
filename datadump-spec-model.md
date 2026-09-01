# Datadump ↔ Spec Model

**Maintainer:** Beth Connor (UX Manager, N-able)
**Status:** Skeleton — placements locked, interpretive calls open
**Origin:** Autodesk ACS "Connected Workflows + UXR" (2020) → carried to N-able / Band Protocol
**Feeds:** ACP constitution **Principle VII** · the **priming skill** (new-spec → gather → holes)

> Locked = a placement Beth has decided; do not relitigate.
> `[0% — Beth]` = an interpretive/strategic call the human writes. The tool never fills these.

---

## 0. Why this exists

Two things get confused and must stay separate:

- The **datadump / library** — durable, shared, problem-space *evidence*. Gathered.
- The **spec** — a single, authored *bet* (a value prop) plus the solution under it. Judged.

The library is where hallucination is caught; the spec is where it hides. This model
defines the boundary between them, how a new spec draws from the library, and where the
holes get surfaced.

---

## 1. The two worlds (LOCKED)

A horizontal divide, straight from the 2020 vision sketch.

```
NATURAL WORLD — "how people do things without specific tools"
   problem space · durable · SHARED library · slow drift
──────────────  outcomes / value drivers cross the divide here  ──────────────
ARTIFICIAL WORLD — "the stuff we create"
   solution space · a bet · SPEC-OWNED · fast drift
```

- **Natural World** is product-agnostic and reusable. It is the library. No spec owns it.
- **Artificial World** is the solution — it lives and dies with a spec.
- The **value driver / outcome** is the crossing point: where a real need becomes a bet.

---

## 1b. Two shelves in the library (LOCKED 2026-07-14)

The Natural World / shared library holds **two shelves**, both product-agnostic, both feeding the gates:

- **User evidence** — personas, user needs, top tasks, journey maps, pain points.
  The *problem* space. "What are people trying to do."
- **Market / world evidence** — trends, competitor moves, market shifts, threat/regulatory
  landscape. The *context* space. "What's happening in the world we have to care about."

**Domain lens = IT + cybersecurity (MSP), not construction.** Where the 2020 model filed by
Phases of Construction, this library files by the IT/cybersecurity domain. Exact spine still
`[0% — Beth]` (candidate: coworker bands — Ops / Security-vCISO / Business).

**The bet reconciles against both shelves.** The value prop must pass the *user* shelf
(is the job real?) **and** the *market* shelf (is the bet defensible, differentiated, timely?).
A prop that clears the user shelf but fails the market shelf — a real job a competitor already
owns — is still a hole.

**Missing artifact → make it.** If a shelf lacks what a spec needs, that absence is not a
blocker; it *is* the research brief. The hole is the next study. (2020: "make them more
robust as we need them.")

---

## 2. The artifact gradient (LOCKED)

| Artifact | World | Role | Drift | Library status |
|---|---|---|---|---|
| **Persona** | Natural | *Who.* Root — needs derive from these | Slowest. Mostly `[R]`/`[D]` | Shared spine |
| **User need** | Natural | *What they lack.* Comes off the persona | Slow | Shared |
| **Top task / JTBD** | Natural | *What they're trying to do.* The product-agnostic ruler | Slow | Shared |
| **Journey map** | Natural | *How they do it,* tool-agnostic | Moderate | Shared |
| **Pain point** | Natural | *Where the how fails them* | Moderate | Shared |
| — divide — | | outcomes / value drivers | | |
| **Value prop** | Artificial | *The product sketch — a solution.* The bet. Tied to the spec | **Fast** | Spec-owned |
| **Features** | Artificial | *What we build* | Fast | Spec-owned |
| **Blueprint** | The seam | *Where our solution meets the journey.* The map | **Fastest** — touches product | Spec-owned |

**Correction locked:** the value prop is a *solution*, not a need. Personas generate
**user needs**; the value prop is the first bet placed to meet one. It sits on the
Artificial side.

---

## 3. The value prop is tied to the spec (LOCKED)

1:1. The value prop is what makes this spec *this* spec.

```
SPEC =
   value prop                                  ← the bet. spec-owned.
 + borrowed slice of the Natural-World library ← Gate 1, pre-filled, attributed
 + authored solution (features, blueprint)     ← Gates 2–3, new every time
```

**Best assumed value prop + variations (LOCKED 2026-07-14):** a spec carries ONE
**best assumed value prop** — the lead bet — plus named **variations** recorded beneath it.
The lead is what the spec is built against; the variations stay live as documented
alternatives (not deleted, not converged away). Council contests all of them; the
best-assumed is the current pick, the variations are the fallbacks the evidence keeps warm.

**Consequence — what a spec's drift tracks:** "Is this spec still valid?" =
"Does the library still support the problem-basis this value prop assumes?"
A `STALE` spec means *the shared library moved under the bet* — a persona sharpened,
a top task got re-ranked, a pain point turned out not to be one. The spec didn't
change; the ground under its prop did.

**Mini-spec decomposition:** value props nest. Super-epic = top-level bet; each epic =
a sub-prop that must ladder to the parent. Riskiest assumptions roll *up* the value-prop
tree. The library sits shared beneath every level.

---

## 4. The three gates on the stack (LOCKED)

| Gate | Question | Lives at | Drawn from | Council hunts |
|---|---|---|---|---|
| **1 · right problem** | Do we understand it? | super-epic | Natural-World library | holes in problem/value logic |
| **2 · right thing** | Is the bet right? | epic | value prop ↔ top tasks | feature w/ no job (gold-plate); job w/ no feature (gap) |
| **3 · thing right** | Is it built right? | epic | blueprint, subtasks, TPI | execution that betrays the job |

Gate 1 is *inherited* (from the shared library). Gates 2–3 are *authored* (the solution).

---

## 5. Top tasks — the through-line ruler (LOCKED)

Top task = JTBD = "what is the persona trying to do." Product-agnostic (the job is durable;
products change). It is the one object that touches all three gates:

- **Gate 1:** are these the *real* jobs? Evidence-ranked — McGovern's long neck.
- **Gate 2:** map each top task → what we make.
- **Gate 3:** can the persona *complete* it? — the Task Performance Indicator = "success looks like."

**The marriage (locked):** "success looks like" is not a section — it is an *attribute of
each top task*: its completion bar. Subtasks are the execution path to clearing it.

**Two mapping failure modes (Gate 2):**
- **feature with no top task** → building something no persona is trying to do → the long tail / a non-goal in disguise.
- **top task with no feature** → a real job unserved → the value-prop gap.

**The deepest hole:** a "top task" that was never evidence-ranked — asserted, not voted.
`[A]` wearing `[R]`'s costume. If its ranking can't trace to a study in the library, the
whole rollup above it is standing on sand.

**Outliers = tiny tasks = non-goals** — same list, three names. Anything that can't name
its parent top task is an outlier → non-goals, not the build.

---

## 6. Two-axis badge (LOCKED)

Every artifact/section carries two *independent* states.

| Axis | Question | States | Moves how |
|---|---|---|---|
| **Maturity** | How grounded *yet*? | Concept → Direction → Spec-ready | Climbs as `[A]`/`[?]` → `[R]`/`[D]` |
| **Freshness** | Still true vs its sources? | Fresh → Stale → Conflict | Degrades when a source moves |

Orthogonal: a section can be *Concept + Fresh* (legitimately thin, nothing moved) or
*Spec-ready + Stale* (well-validated, but a source shifted).

**Maturity = the readiness tiers** (Tier 1 Concept / Tier 2 Direction / Tier 3 Spec-ready),
per section, evolving. **Build-as-you-go:** in AI-driven design the spec and its evidence
grow together — the artifact is never empty and never done.

**Inherited-maturity caveat:** a borrowed artifact comes in *mature* but that is not *valid
here.* A persona from a prior project is Spec-ready by evidence density but
**Spec-ready + Stale-for-this-context** until re-confirmed. Inherited maturity is re-earned
against the new problem, or you're standing on someone else's evidence and calling it yours.

---

## 7. Three data tiers — never conflate (LOCKED)

| Tier | What | Editable? | Loaded as agent context? | Authority |
|---|---|---|---|---|
| **Raw** (datadump) | Source verbatim, hashed | Never — new version = new file | No, referenced only | Evidence. `[R]`/`[D]` trace here |
| **Testimony** (council) | Machine lenses on raw + on the bet | Regenerated, never hand-edited | No | *Nothing.* Contradicts itself by design |
| **Synthesis / context.md** | The researcher's judgment | Human-only (`[0% — Beth]`) | Yes — agents plan from this | Canonical for the spec |

- Raw-vs-synthesized is the easy boundary. **The dangerous one is testimony masquerading
  as synthesis** — fluent council output quoted as established fact (the rubber turkey).
  Council can *inform* synthesis; it can never *be* it, and never lands in `context.md` directly.
- **`context.md` ≠ datadump.** `context.md` is distilled, synthesized, always-loaded.
  The datadump is raw, verbatim, referenced-not-loaded. Merge them and raw unverified
  material becomes canonical context — the exact hallucination path.

---

## 8. Why the value prop needs council (LOCKED)

The library is *gathered* — evidence, no judgment call, no council. The value prop is
*authored* — a solution asserting a problem-basis. It is the single artifact most exposed
to hallucinated strategy, so it is the thing council attacks.

- Council fires on the **value prop and its implied framing**, never on the library.
- The spec carries a **best assumed value prop + variations** (§3). Council scores the lead
  and its variations against *both library shelves*, and contests them — which bet stands on
  the fewest unbacked `[A]`s, and which survives the market shelf as well as the user shelf.
- Council returns **tensions, not synthesis.** The synthesis slot stays `[0% — Beth]`.

---

## 9. The priming process — new spec lands (LOCKED shape)

**Human sketches the value prop(s)** (the bet, Tier 1 · Concept, plural allowed).
The skill does the rest and hands back a **priming report**, not a finished spec.

```
Step 0 · Classify         value prop names the persona(s) + jobs it claims to serve
                          (a prop that can't name a persona is already a hole)
Step 1 · Suggest framing  from the prop, propose the problem-basis it ASSUMES —
                          user need, top tasks, pain points — each marked [A]
Step 2 · Gather           query the Natural-World library for each [A]:
                            match found  → promote to [R]/[D] + provenance (hash)
                            nothing      → stays a hole [?]
Step 3 · Find holes       diff: what the skeleton needs − what the library supplied
Step 4 · Roll up          holes → riskiest-assumptions register, ranked by blast radius
                          (which gate collapses if false) × confidence
```

**The hole-lens** (from the 2020 deck, p16, still binding):
- a persona with no goals
- a workflow/journey with no pain points
plus:
- a gate section with no matching artifact → `[?]`
- a top task with no "success looks like"
- a claim forced to `[A]` because nothing backed it
- an inherited artifact that is mature-but-stale-for-this-context

**The deliverable is the hole report** — the map of what you *don't* know under *this
specific bet.* The pre-filled spec is a byproduct.

**Guardrails:** pre-fill only from real artifacts; a gate with no source stays visibly
empty (`[?]`), never smoothed with plausible prose. Empty-honest beats full-fabricated.
Synthesis stays the human's.

---

## 10. Reconcile loop + cadence (LOCKED shape)

```
Bibliography (gather)   weekly · cheap · manifest + hashes · "what's new, what moved"
      ↓ (only on drift)
Council (reconcile)     fires on the delta, not the calendar · tensions on the bet
      ↓
Synthesis update        human writes the [0% — Beth] slot
      ↓
New baseline            next gather diffs against it
```

- Cadence splits by world: the **Natural-World library** drifts slowly (rarely
  invalidated); the **Artificial-World / blueprint** drifts fast (where `STALE`/`CONFLICT`
  fire most).
- **Manifest** is the memory between runs — records source version + hash + which specs
  each source feeds, so a changed hash flags exactly the dependent specs.
- **47% rule:** every stat grep-verified before it ships.

---

## Resolved calls (2026-07-14)

1. **Library taxonomy / retrieval key.** Domain lens = **IT + cybersecurity (MSP)**, not
   construction (§1b). Governing principle locked: **missing artifact → make it** (the hole
   is the research brief). *Residual `[0% — Beth]`:* the exact filing spine — coworker bands
   vs products vs personas.

2. **Living synthesis / what else the library holds.** Resolved into a **second shelf: market
   / world research** (§1b) — trends, competitors, threat landscape. The bet reconciles
   against both shelves. *Residual `[0% — Beth]`:* whether each shelf carries a living
   `synthesis.md` above the artifact set, or the artifacts stand alone.

3. **Drift output + audience.** Audience = **the whole spec-driven team** (intent). Reality:
   no mature process yet — *we are making it up.* Start simple — frontmatter badges +
   a `DRIFT.md` — and grow the team-routing (Jira/Confluence) as the process settles.
   *Residual `[0% — Beth]`:* the team hand-off mechanism.

4. **Plural props into the spec.** Resolved: **best assumed value prop + variations** (§3, §8).
   One lead bet, variations kept live beneath it. Not deleted, not force-converged.

---

*Placements above are Beth's. The synthesis — what these mean and which bet to make —
stays hers. The tool structures; it does not decide.*
