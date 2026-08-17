# Critic Pass 2 — QBR/EBR Tier-1 Concept Prototype (Post-Build Re-Score)
Reviewed against: prototypes/acp-qbr-ebr/index.html, prototypes/acp-qbr-ebr/critic-pass-1.md,
briefs/qbr-ebr-prototype.brief.md, briefs/context/qbr-ebr.context.md,
prototypes/acp-qbr-ebr/council-testimony.md
Stage: post-build

## Score Table — Post-Build

| Dimension | Score | Justification |
|---|---|---|
| Coherence | 5/5 | Every Must, term, and mechanism (Defensibility tier, hybrid classification, dual-surface, confirm-gate) is pulled verbatim from source and rendered without embellishment; the rail names the altitude ambiguity as openly as the brief does. Nothing drifted. |
| Source-fidelity | 3/5 | The build introduces no new unsourced claims and surfaces the 43% [A]/[?] figure on-screen rather than hiding it — it preserves the brief's honesty rather than laundering it. Capped below 4 because a polished, working demo can still make thin evidence feel more settled than 43% unresolved warrants — the surface finish outpaces the evidence underneath it, same risk pre-build named. |
| Demo-ability | 4/5 | Genuinely interactive now: working mode toggle with `apx-mode-pref` persistence, surface toggle, modal confirm-gate with real state changes. Docked one point: the Export action fires a raw `alert()` — a native browser dialog breaking the otherwise consistent styled-modal pattern, which will read as unfinished in front of a stakeholder audience. `[CS: MEDIUM — behavior read from code, not run in a browser]` |
| Differentiation | 3/5 | Unchanged — this is a Gate 2/scope property, not something a build execution can move. The reused Defensibility-tier mechanism is real but the feature shape remains, in the source's own words, "the shape a competitor can commoditize fastest." |
| Risk | 4/5 | The two risks pre-build docked hardest — passive-looking gate, technical-language demo copy — are both closed: the gate is a true hard block (disabled export button, no dismiss path) and the narrative copy is deliberately business-framed. Held at 4, not 5, because a new risk appeared: the "client-facing" surface is a CSS/JS toggle over one DOM, not two distinct artifacts — internal-only content and the locked Unverified claim text remain present and inspectable regardless of which toggle is active. |
| Scope discipline | 5/5 | Held to one hybrid section + the confirm-gate, no drift into the other 14 tabs. The one place scope-adjacent judgment had to happen — persona voice for copy — was made explicitly and disclosed in the rail's Assumptions block rather than silently baked into the copy, which is what pre-build's dock was actually asking for. |

## Delta Table

| Dimension | Pre-build | Post-build | Delta |
|---|---|---|---|
| Coherence | 4 | 5 | +1 |
| Source-fidelity | 2 | 3 | +1 |
| Demo-ability | 4 | 4 | 0 |
| Differentiation | 3 | 3 | 0 |
| Risk | 4 | 4 | 0 |
| Scope discipline | 4 | 5 | +1 |

## Punch List

### PASS
- Confirm-gate is a real hard block, not a styled illusion of one: `exportBtn` ships with the `disabled` HTML attribute, and `resolveGate()` is the only code path that clears it — there is no dismiss/close control on the gate modal itself. This is exactly the mitigation pre-build critic asked for by name.
- Must 1 (business-value framing) and Must 8 (no-overclaiming) — the two Musts flagged as actually testable at Tier 1 — are both concretely demonstrated: the internal narrative is deliberately business-framed, and the one overclaiming line ("cyber-insurance premium reduction from documented risk posture") is specifically the claim the gate locks, with modal copy that states the no-case-law/no-carrier-practice finding directly.
- Seed data is correctly and visibly fictional: "Anders Manufacturing Co." and "Dana Ferris" both carry inline `seed-stamp` disclosures naming them as fictional, with Dana Ferris explicitly noted as modeled on the verified Vanessa Chart archetype rather than passed off as a real persona.
- The Eng routed card's "Runbook Engine (49/49 built)" claim checks out against `briefs/context/qbr-ebr.context.md` §4/§6 — not a build-introduced fabrication.
- Council modal's "Fast Mode, 7 tensions, full pass elsewhere" claim is accurate — `prototypes/acp-qbr-ebr/council-testimony.md` exists and the four tension excerpts shown (JTBD↔SDT, Service Blueprint, Value Chain, Disruptive Innovation↔Value Chain) match that file's actual content, not invented summaries.
- Assumptions block discloses the persona-lens choice and the "done criteria" adoption explicitly rather than letting them ride silently into the build — this is the transparency pre-build's MISSING list asked for.

### FAIL
- The "dual-surface document" Must (#6) is implemented as a single-DOM visibility toggle (`display:none` / `textContent` swaps), not "two distinct artifacts" — which is the brief's own ubiquitous-language definition, stated to explicitly reject "one redacted view." Internal-only risk rows and the locked Unverified claim text remain in the page's DOM at all times regardless of which toggle is selected; anyone with view-source or devtools access sees both surfaces simultaneously. `[CS: MEDIUM — read from markup/JS, not run]`
- Topbar mixes real product chrome (brand mark, tier pill, product name) with a "◆ Council" button that opens Band-Protocol-internal review testimony. Per the design system's own three-surface model, the topbar represents the customer-facing product surface; no real Adlumin/ACP customer would ever see a Council button. This blurs the boundary between "what's being demoed as the shipped product" and "the meta-tooling used to build the demo" — it belongs in or adjacent to the Bradley rail, not the topbar.
- Export button's failure/placeholder path is a native `alert()` — inconsistent with every other interaction in this build, which uses styled modals. In a live demo this will read as a seam, not a deliberate design choice.

### MISSING
- No mitigation-in-build exists for the topbar/rail surface-boundary conflation noted above — nothing marks the Council button as internal-only tooling distinct from the ACP product chrome around it.
- Still no usability-test plan, no OKR/KR/counter-metric, no resolution of Q2 (operator mechanism-preference) — all correctly named as open in the rail rather than silently dropped, but still absent as artifacts. Build cannot close these; naming them again here for completeness against the original brief's own "what's missing" list.
- The actual mechanics of how a real client-facing export would be generated as a genuinely separate artifact (not a DOM toggle) are not specified anywhere — this is a real gap for the Eng routed card to pick up, and the card as written ("wire the confirm-gate to the existing Defensibility-tier field") doesn't currently name this specific problem.

### RISK
- A stakeholder who toggles to "Client-facing export" and takes that as proof Must 6 is satisfied is trusting a visual illusion — the actual separation this Must requires (two distinct artifacts) does not exist in this build. If this toggle pattern gets reused as the basis for the real export pipeline rather than replaced by one, the dual-surface guarantee the whole confirm-gate exists to protect never actually ships. `[CS: MEDIUM]`
- The raw `alert()` on Export, in an otherwise fully skinned dark-mode SaaS demo, is the kind of seam that gets remembered after a demo more than the polish that surrounds it — worth fixing before this goes in front of Beth/Meaghan/Nicole, even though critic doesn't fix.
- The Council button sitting in product chrome risks a viewer literally asking "does ACP ship a council-review feature to customers?" — a confusing question to field live, independent of anything else in the brief.

## Design System Compliance

- **Canonical `:root` token block:** PASS — matches the build agent's mandated block verbatim, token-for-token, including the light-mode override block (`--bg-app`, `--bg-surface`, `--brand`, `--alpha-accent`, `--topbar-bg`, `--rail-bg`, status colors, all present, unmodified).
- **Typography — Inter + JetBrains Mono via Google Fonts:** PASS — both loaded via `fonts.googleapis.com` in the `<head>`, `--font-ui`/`--font-mono` correctly applied (mono used for headers/labels/pills/tags, Inter for body/UI).
- **Radius + soft shadows only:** PASS — `--radius-sm/md/lg` (4/6/8px) used throughout; shadows are soft (`box-shadow: inset 6px 0 14px -10px rgba(...)` for the rail glow, `0 20px 60px rgba(0,0,0,0.5)` for modals) — zero instances of a hard Bauhaus `6px 6px 0` offset.
- **Three distinct surfaces:** PASS — topbar (`--topbar-bg`, 2px `--topbar-border` bottom edge, held dark in both light and dark mode per the spec's own instruction), app canvas (`--bg-app`), Bradley rail (`--rail-bg`, 4px `--rail-border` in violet, inset glow, plus a diagonal texture stripe beyond the spec's minimum). Visually distinguishable at a glance. **Caveat:** the topbar's content (Council button) partially undermines the surface's *conceptual* distinctness even though its *visual* token compliance is correct — see FAIL above.
- **3-way mode toggle persisting to `apx-mode-pref`:** PASS — light/dark/system all present, `localStorage.setItem('apx-mode-pref', mode)` on every change, restored on load. `[CS: MEDIUM — not run in a browser; system mode reads matchMedia once on selection but does not attach a change listener, so it will not live-update if the OS theme flips while the page is open — a minor completeness gap, not a compliance failure.]`
- **No ad-hoc colors / no Itten leakage:** PASS — grep-level read shows no raw hex values outside the token block, and no `#D8472B` / `#C99A2E` / `#1F3C96` (Itten vermillion/ochre/ultramarine) anywhere in the file.
