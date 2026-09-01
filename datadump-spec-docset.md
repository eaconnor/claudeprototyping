# Datadump ↔ Spec — the doc set

**Companion to:** `datadump-spec-model.md` (the model this instantiates)
**Respects:** Speckit spec-driven flow in `acp-core-main-3` (`spec → plan → tasks`) + the
ACP constitution. We add an **evidence + value-prop layer upstream of `spec.md`** — we do
not duplicate `spec.md` / `plan.md` / `tasks.md`.

---

## Integration principle

Speckit starts at *"write the spec."* This model adds one step before it: **prime the spec
from the shared library, anchored on a value prop.** The priming happens at
`/speckit-specify` time and *feeds* `spec.md` + `research.md` — it doesn't replace them.

```
[ shared library ]  →  prime (gather + holes)  →  /speckit-specify → spec.md
   (cross-spec)          value-prop anchored        (existing Speckit, unchanged)
                                                  → plan.md → tasks.md
```

**Bonus:** the library also fixes the gap we already found — the Intent Specs reference
`ACP_DataDump/` that was never committed. The library *is* that committed, hashed datadump.

---

## A. Governance — amend existing

| Doc | Path | New / Amend | Purpose |
|---|---|---|---|
| **Principle VII** | `acp-core-main-3/.specify/memory/constitution.md` | Amend (→ v1.2.0) | Evidence provenance + context freshness gate. Bumps the Constitution Check at `/speckit-plan`. |

---

## B. The shared library — new · cross-spec · not per-feature

Lives once; every spec borrows from it. Two shelves (§1b of the model).

| Doc | Path | Purpose |
|---|---|---|
| **Library README** | `library/README.md` | Orientation: two shelves, the IT/cyber taxonomy, "missing → make it" rule |
| **Manifest** | `library/manifest.yml` | The bibliography — every source: id, hash, shelf, `feeds_specs[]`, drift, maturity |
| **User shelf** | `library/user/personas/*.md`, `/top-tasks/*.md`, `/journey-maps/*.md`, `/pain-points/*.md` | Problem-space artifacts, each with two-axis badge frontmatter |
| **Market shelf** | `library/market/trends/*.md`, `/competitors/*.md`, `/threat-landscape/*.md` | World/context artifacts, same badge frontmatter |
| **Raw datadump** | `library/_raw/` | Source verbatim + hashed. Immutable — new version = new file. Referenced, never loaded |
| **Shelf synthesis** *(residual `[0% — Beth]`)* | `library/user/synthesis.md`, `library/market/synthesis.md` | Optional living synthesis above each shelf. Human-authored |

---

## C. Per-spec additions — new · slot into `specs/[###-feature]/`

These sit beside Speckit's existing files and feed them.

| Doc | Path | Purpose | Feeds |
|---|---|---|---|
| **Value prop** | `specs/[###]/value-prop.md` | Best assumed prop + variations. The bet. Tied 1:1 to the spec | `spec.md` |
| **Priming report** | `specs/[###]/priming-report.md` | The gather + holes output. *The deliverable.* What's backed vs `[?]` under this bet | `research.md` |
| **Riskiest assumptions** | `specs/[###]/riskiest-assumptions.md` | Rollup register, ranked blast-radius × confidence. Rolls up the value-prop tree | `plan.md` risks |
| **Council testimony** | `specs/[###]/council.md` | Tensions on the prop + variations. Regenerated, never hand-edited. Synthesis stays human | value-prop revision |

**Maps onto existing Speckit files (no duplication):**
- `spec.md` — Gate 1 (problem, personas, top tasks) pre-filled from priming; Gate 2/3 authored. Claim tags + badges added.
- `research.md` — becomes the priming report's home (was the unused `ACP_DataDump` pointer).
- `checklists/` — gains a gate/hole checklist.

---

## D. Templates — amend `.specify/templates/`

| Template | Path | New / Amend | Carries |
|---|---|---|---|
| **spec-template** | `.specify/templates/spec-template.md` | Amend | value-prop anchor · three gates · `[R]/[D]/[A]/[?]` tags · two-axis badges · risk rollup |
| **value-prop-template** | `.specify/templates/value-prop-template.md` | New | best-assumed + variations structure |
| **priming-report-template** | `.specify/templates/priming-report-template.md` | New | what-we-know / borrowed-stale / holes / hole-lens |
| **library-artifact-template** | `.specify/templates/library-artifact-template.md` | New | persona / top-task / journey / pain-point + badge frontmatter |
| **manifest schema** | `.specify/templates/manifest-schema.yml` | New | one source entry: id, hash, shelf, feeds_specs, drift, maturity |

---

## E. Process + tooling — new

| Doc | Path | Purpose |
|---|---|---|
| **Priming skill** | `.claude/skills/prime-spec/SKILL.md` | New-spec → classify → suggest framing from prop → gather → holes → risk rollup |
| **Reconcile process** | `library/RECONCILE.md` | Weekly bibliography (cheap) · council on drift (delta only) · human synthesis · cadence splits by shelf |
| **Drift output** | `library/DRIFT.md` + frontmatter badges | Team-facing (start simple; grow Jira/Confluence routing as process settles — §resolved call 3) |

---

## What we are NOT building (respect existing)

- No replacement for `spec.md` / `plan.md` / `tasks.md` — Speckit owns these.
- No second constitution — one amendment (Principle VII).
- No new agent-context mechanism — reuse `.specify/extensions/agent-context/`; the model
  only rules that `context.md` is synthesized, never the raw dump (§7).
- No synthesis authored by the tool — every `synthesis.md` stays `[0% — Beth]`.

---

## Build order

1. **Principle VII** (A) — sets the gate everything else answers to.
2. **Manifest schema + Library README** (B) — the spine; nothing gathers without it.
3. **library-artifact-template + one seed persona/top-task** (D + B) — prove the badge frontmatter.
4. **value-prop-template + priming-report-template** (D) — the per-spec layer.
5. **Priming skill** (E) — wires gather → holes against the seeded library.
6. **Amend spec-template** (D) — once the upstream layer produces real output to feed it.
7. **Reconcile + Drift** (E) — last; needs a populated manifest to run against.

---

*Doc set respects Speckit. The model decides structure; the human decides the bet.*
