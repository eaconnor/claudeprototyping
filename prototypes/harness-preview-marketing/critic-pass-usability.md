# Critic Pass — Usability / Accessibility / Emotional Design
**Reviewer stance:** combined Nielsen (usability heuristics, accessibility) + Norman (emotional design — visceral/behavioral/reflective) voice, per Beth's explicit ask 2026-09-15.
**Scope:** `prototypes/harness-preview-marketing/index.html` (new marketing page) and `harness-2026-09-04... ` fork `/Users/bethconnor/Desktop/harness-laura-salesdemo.html` Act 2 (`#connect`, `S.act===2`), specifically the multi-select connector picker built this session.

---

## Sourcing note (required first, per CLAUDE.md §4)
Every claim on the marketing page traces to a named source in its own header comment or is explicitly marked fictional/illustrative. One flag: the `.trust .pull` quote ("He'd never buy the agents...") is single-source, presented as the section's climactic proof line with its caveat living only in a small attribution line below it, not adjacent to the quote itself. Not fabricated — just structurally weighted for one voice. Named per the rule, not fixed this pass (see disposition below).

## File 2 — harness-laura-salesdemo.html, Act 2

### BLOCKER — focus dropped on every "Other" commit — FIXED this session
`commitOtherConnector()` set `showOtherInput=false` and re-rendered without returning focus anywhere. A keyboard/screen-reader user who added a custom connector lost focus to `<body>`. **Fixed:** commit now focuses the "+ Other, not listed" trigger button after closing the input.

### SHOULD-FIX — silent no-op on empty submission — FIXED this session
Pressing Enter/Add on a blank "other" field did nothing observable. **Fixed:** now calls the file's existing `toast()` helper with "Type a system name first."

### SHOULD-FIX — case/whitespace duplicate blindness — FIXED this session
Typing "microsoft 365" when "Microsoft 365" was already picked created a phantom second entry, and `mcpTable` would render it with a false "no connector exists for this" row. **Fixed:** `commitOtherConnector` now normalizes (trim + lowercase) against both `S.onboardConnector` and `MCPS` names; a match against an existing connector selects that chip instead of creating a duplicate.

### SHOULD-FIX — inconsistent ARIA between the two toggle patterns — FIXED this session
Connector chips correctly use `aria-pressed`. The adjacent "+ Other, not listed" button toggled the same visual state with no ARIA at all, despite being a disclosure control. **Fixed:** now carries `aria-expanded` + `aria-controls="onboard-other-input"`.

### SHOULD-FIX — button group has no accessible name/grouping — FIXED this session
17+ toggle buttons plus "Other" had no `role="group"`/`aria-labelledby` tying them to the question text. **Fixed:** wrapped in `role="group" aria-labelledby="mcp-q-label"`, question text given the matching `id`.

### NICE-TO-HAVE — repeated identical badge text at scale — not fixed this pass
"One of your picks — start here" repeats verbatim on every promoted row once more than one is picked. Real finding, low severity — deferred; flagging so it isn't lost.

### NICE-TO-HAVE — "one question" framing implies a hard gate that isn't enforced — not fixed
Copy says "One question before you connect anything" but nothing blocks skipping it. Likely the right call for a sales demo (never block the pitch) — naming the mismatch, not changing the behavior.

### NICE-TO-HAVE — 17-button wall is unsorted for a first-run screen — not fixed
Unlike the `#mcp` route (sorted by status), Act 2's question renders `MCPS` in raw declaration order. Real, low-severity, deferred.

### PASS
`oninput` direct-state-mutation pattern (avoids cursor-jump on every keystroke) and `toggleOtherInput()`'s existing `.focus()` call on reveal are both correct and were the model the commit-side fix above now matches.

## File 1 — harness-preview-marketing/index.html

### SHOULD-FIX — Value Ledger count-up not reliably accessible — not fixed this pass
No `aria-live`, no static fallback — a screen-reader user could land on any mid-count value. **Disposition:** real, and it's the page's central proof point per its own Bradley rail. Deferred to next pass rather than rushed — the right fix (visually-hidden static value paired with a decorative `aria-hidden` counter) deserves its own careful pass, not a bolt-on right before ship.

### SHOULD-FIX — Bradley rail has no focus trap / return-focus — not fixed this pass
Full-screen scrim implies modal behavior; keyboard focus isn't actually trapped or moved on open/close. Same disposition as above — real, scoped, deferred with a named owner (Eng route card already in the rail should be updated to include this).

### RISK — `--text-2` contrast against white, not measured — not fixed this pass
Estimated close to the WCAG AA 4.5:1 line at body-copy scale, used across nearly every section. Needs an actual contrast-checker run, not an eyeball judgment — naming as a pre-ship blocker for whoever takes this externally, not fixing on a guess.

### RISK — no `prefers-reduced-motion` handling anywhere — not fixed this pass
Scroll-reveal, count-up, and (in File 2) the trailer/run-cycle/conveyor autoplays all run unconditionally. Real vestibular-safety gap. Deferred — this is a systemic fix that should probably land once across both files' shared animation patterns, not patched piecemeal per-file.

### RISK — auto-advancing content has no keyboard-discoverable pause — not fixed this pass
Trailer/run-cycle pause is pointer-only (`onmouseenter`); WCAG 2.2.2 wants an intentional, labeled pause control for anything auto-updating past 5s. Deferred, same reasoning as above.

### PASS, named
Apex Bridge token usage, font loading, and the three-surface separation pattern are correctly implemented in File 2. **Gap named:** File 1 (the marketing page) ships a single fixed dark hero palette with no light/dark/system toggle at all — if Apex Bridge mandates that toggle on every surface, this is a real design-system compliance gap, not just an under-implementation. Flagging for a design-system-compliance pass, not fixing silently mid-copy-pass.

---

## What shipped this session vs. what's named and held
**Fixed now** (File 2, Act 2 multi-select): focus-on-commit, empty-submit feedback, duplicate-detection, disclosure ARIA, group ARIA — all five because they were cheap, scoped, and directly regressed by the multi-select feature this session added. Fixing the feature that introduced the bug, same turn, is the right call.

**Named, not fixed** (both files): the Value Ledger live-region, Bradley rail focus trap, contrast measurement, reduced-motion handling, pause controls, and the marketing page's missing mode toggle. These are real and worth doing, but they're either systemic (should be fixed once across the shared animation/rail patterns, not per-file) or need a tool-verified baseline (contrast) rather than a rushed guess. Rushing them now risks the same "verification theater" failure mode this project's own ledger has been burned by before — asserting a fix without actually checking it against the real WCAG threshold.
