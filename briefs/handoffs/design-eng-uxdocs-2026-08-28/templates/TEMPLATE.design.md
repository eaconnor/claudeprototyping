---
artifact: design.md
template_version: 1.0
context:                    # REQUIRED — path to the context.md (=ux.md) this design answers to. Design has no standing without it.
project:                    # ‹name›
owner:                      # ‹design owner of THIS doc›
status:                     # DRAFT | IN-REVIEW | APPROVED
reviewers:                  # who signs off — design lead · eng lead · PM (Google: a design doc is reviewed, then it's a record)
work_type:                  # new-product | new-feature | bug-fix | rebuild-section  (inherit from context.md)
research_posture:           # researcher-backed | self-serve
design_system:              # ‹your design system — UEM default: Apex›
design_lint:                # off | static-tokens | +components | live-figma
fidelity:                   # Tier 0 sketch | Tier 1 concept | Tier 2 direction | Tier 3 spec-ready
prototype:                  # link to the working prototype/HTML, if one exists
last_updated:               # ‹date›
---

<!-- ============================================================
     design.md TEMPLATE v1.0 — a Google-style design doc, wired to context.md.
     context.md says WHAT MUST BE TRUE (research → gates → success criteria).
     design.md says HERE'S THE THING THAT MAKES IT TRUE, and proves it against context's Musts.
     Written for REVIEW and DECISION, not just description. Prose-first, TL;DR up top,
     alternatives on the record. Copy this, delete comments/‹placeholders›, fill.
     ============================================================ -->

# ‹project› — design.md

**Status:** ‹DRAFT / IN-REVIEW / APPROVED› · **Answers to:** [context.md](‹path›) · **Fidelity:** ‹tier›

---

## [AGENT GATE] — read before generating

> design.md has no standing on its own — it answers to its `context.md`. These rules override default generation.

1. **Read the linked `context.md` first.** If you haven't, stop and read it. Design that doesn't trace to context is decoration.
2. **Don't invent what context doesn't support.** Inherit context's `[CS:]` tags; any *new* claim the design rests on is `[A]` until sourced.
3. **Alternatives must be real** — actually-considered options with honest trade-offs, not strawmen propping up the choice.
4. **Answer every Must.** Each Must in context.md §6 gets a row in §6 below. An unanswered Must is a gap — name it, don't paper over it.
5. **Don't resolve context's open decisions or `[?]`.** Surface them; route per context's owners. A blocked context decision blocks the design that depends on it — say so.
6. **Design-system compliance** per `design_lint` — coverage-declared, not eyeballed (see context GUIDE § Design-system lint).
7. **Judgment slots stay human** — `‹0% AI — human fills this›` is never AI-filled.

---

## 1. TL;DR

‹One paragraph: what we're designing, the single key decision, and the current status. A reviewer should get the gist here and decide whether to read on.›

## 2. Context & scope

- **The problem + who** — see [context.md](‹path›) §1. *(Link, don't restate.)*
- **The gates this must clear** — context.md §5 (open items) and §6 (Musts). Which are settled, which still `[?]`?
- **In scope for this doc:** ‹…›  **Out of scope / later:** ‹…› *(more in Non-Goals below)*

## 3. Goals / Non-Goals

**Goals** (map to context.md's Goals):
- ‹…›

**Non-Goals** — *what this design deliberately does NOT do, so scope doesn't creep:*
- ‹…›

## 4. The design

> The meat. Show the designed solution, not a description of the space.

**Primary flow(s):** ‹step-by-step, or link the prototype [see `prototype:` frontmatter]›

**Screen states** (name all — missing states are where builds break):
| Surface | Empty | Loading | Error | Success |
|---|---|---|---|---|
| ‹screen› | ‹…› | ‹…› | ‹…› | ‹…› |

**Interaction patterns** (the ones context.md names as Musts — show how they're realized):
- ‹e.g. chooser-shaped draft · dual-surface · confirm-gate — how each looks/behaves›

**Design-system:** ‹Apex components used — `apx-*`; tokens; modes›. Lint: `design_lint: ‹rung›`, coverage-declared.

**Key copy:** ‹the words that carry a Must — e.g. business-value framing, the confirm-gate language›

## 5. Alternatives considered

> The Google hallmark — document the options and why this one, so it isn't re-litigated later.

| Option | Why it's tempting | Why not (trade-off) |
|---|---|---|
| ‹A (chosen)› | — | *chosen* |
| ‹B› | ‹…› | ‹…› |

## 6. How it satisfies the Musts — `Gate 3`

> Design's acceptance criteria **are** context.md's success criteria. One row per Must; an unanswered row is a gap.

| context Must | How this design satisfies it | Proven by (built-in test) |
|---|---|---|
| ‹Must 1 …› | ‹design decision› | ‹the test from context §6› |

## 7. Cross-cutting concerns

> The **gates** — WCAG AA, the SUS ship-gate, ISO 9241-11 — are success criteria and live in **context.md §6**. Don't restate them here; this section shows how *this design* meets them.

- **Accessibility** — realizes context.md's WCAG AA bar: keyboard order · focus + contrast · screen-reader labels · ‹…›
- **Usability** — tested against context.md's ship-gate (SUS ≥6 / ≥8 on top-five tasks) and ISO 9241-11 (effectiveness · efficiency · satisfaction). Plan / results: ‹…›
- **Privacy / GDPR** — ‹what personal/client data the surface touches; consent; minimization (§10b)›
- **Error / empty / loading** — covered in §4 states? ‹…›
- **Content / i18n** — ‹…›
- **Telemetry** — ‹what we measure to know it works — ties to context's Gate 3 outcome variable›

## 8. Trade-offs & open questions

- **Trade-offs made:** ‹what we gave up, on purpose›
- **Open questions:** ‹`[?]` — these feed context.md's §5 Open-items loop; list them there too, don't strand them here›

## 9. Rollout / fidelity

- **This doc's fidelity:** ‹Tier 0/1/2/3›. **Ships first:** ‹…›. **Later:** ‹…›
- ‹dependencies / sequencing — what must land before this can build›

---

## CHANGELOG

<!-- Newest first. Never silently delete a wrong decision — mark it and say what replaced it. -->

- ‹YYYY-MM-DD› — ‹what changed and why›
