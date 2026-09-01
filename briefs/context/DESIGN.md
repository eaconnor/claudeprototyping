---
confidence_regime: PROCEED-FLAGGED
proceed_because: build.md already ships a dated, [CS:]-tagged Apex Bridge token block (2026-07-31 pull) that a 30% prototype can run on today; this doc supplies the provenance that block was missing, not new unlocks.
machine_behavior: build normally against the existing token block · surface [CS:] tags visibly · do not claim dark-mode or status-color values are verified · name the v1/2.0 divergence, do not silently resolve it
---

# DESIGN.md — Apex Bridge provenance

**What this file is:** the paper trail for the Apex Bridge token block already living in
[`.claude/agents/build.md`](../../.claude/agents/build.md). That block existed with `[CS:]` tags
and no source doc behind them — this is the source doc. It does not introduce new tokens; it
tells you where the existing ones came from, what's still guessed, and what a next verification
pass would need.

**Apex Bridge** is Bethproto's own CSS approximation of n-able's real Apex design system, built
for HTML prototypes that can't import Apex's actual component library or compiled stylesheet.
It is not Apex. Treat every value below as a *bridge*, not a certified match — the goal is
"reads as Apex to a reviewer," not pixel parity.

---

## 1. The blue→purple finding (why this file exists)

Earlier prototypes (`prototypes/qbr-analyst-apex.html`, `prototypes/alpha-race-apex.html`) shipped
`--br-color-brand-primary: #0066cc` — a **guessed** blue, confident and specific, never checked
against a live Apex source. `[CS: FABRICATION RISK]`, shipped anyway.

On 2026-07-31 someone (session not this one) pulled live Figma data off the real Apex 2.0 system
and found the actual brand color resolves to **purple** (`#c046ff` base / `#8500cc` strong), not
blue. `.claude/agents/build.md` was corrected to match. That correction is real and already live
in build.md's token block — but until now, nothing recorded *how* it was pulled or *what wasn't*
covered by that pass. This doc is that record, per the Chicago principle in [CLAUDE.md](../../CLAUDE.md) §4:
fluency about a value you didn't verify is indistinguishable from fluency about one you did, until
someone checks.

`[CS: UNKNOWN]` — I did not witness the 2026-07-31 pull. I'm recording what build.md already
claims, not re-deriving it. Where I *did* independently verify something this session (§3), it's
tagged separately.

---

## 2. Canonical token block

Single source of truth. **`build.md`'s copy should be treated as a mirror of this file, not a
second original** — if the two ever disagree, this file wins and build.md should be patched to
match, not the reverse.

```css
:root {
  /* ===== canvas — [CS: UNKNOWN], no dark-mode Apex pull yet ===== */
  --bg-app: #0b1220;
  --bg-surface: #121b2e;
  --bg-elevated: #182238;
  --bg-deep: #070d18;
  --border: #1f2c47;
  --border-strong: #2a3a5c;

  /* ===== text — [CS: UNKNOWN], no dark-mode Apex pull yet ===== */
  --text-primary: #e6edf7;
  --text-secondary: #9aa8c2;
  --text-tertiary: #6b7a96;
  --text-muted: #4b5772;

  /* ===== brand — [CS: HIGH] live Figma pull, Apex 2.0, 2026-07-31 — not independently re-verified this session ===== */
  --brand: #c046ff;        /* color/brand/base */
  --brand-strong: #8500cc; /* surface/app/product-bar/product-block */
  --brand-soft: rgba(192,70,255,0.14);

  /* ===== status — [CS: UNKNOWN] except --low ===== */
  --critical: #ef4444;  --critical-soft: rgba(239,68,68,0.13);
  --high: #f97316;      --high-soft: rgba(249,115,22,0.13);
  --medium: #eab308;    --medium-soft: rgba(234,179,8,0.12);
  --low: #058142;       --low-soft: rgba(5,129,66,0.12);  /* [CS: HIGH] fill/active, from the 2026-07-31 pull */

  /* ===== Bradley / council accent (violet) — Band's own, not Apex ===== */
  --alpha-accent: #a78bfa;  --alpha-soft: rgba(167,139,250,0.13);

  --topbar-bg: #0a1730;
  --topbar-border: var(--brand);
  --rail-bg: #16112e;
  --rail-border: var(--alpha-accent);

  /* ===== shape + type — [CS: HIGH] radius + font family, from the 2026-07-31 pull ===== */
  --radius-sm: 2px;  --radius-md: 4px;  --radius-lg: 16px;  --radius-full: 999px;
  --font-ui: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  --font-brand: 'Manrope', -apple-system, sans-serif;
  --font-mono: 'JetBrains Mono', ui-monospace, monospace;  /* Band convention, not Apex */
}

[data-theme="light"] {
  --bg-app: #fafafa;        /* surface/container/tertiary/default */
  --bg-surface: #ffffff;    /* surface/container/default, surface/app/background/default */
  --bg-elevated: #f8ebff;   /* surface/container/active/default — brand-tinted hover */
  --bg-deep: #fafafa;
  --border: #d5d5d5;        /* border/default — [CS: VERIFIED], see §3 */
  --border-strong: #c046ff; /* border/container/active */
  --text-primary: #18191a;   /* content/default/heading */
  --text-secondary: #2e2e33; /* content/default/body — [CS: VERIFIED], see §3 */
  --text-tertiary: #404047;  /* content/default/secondary — [CS: VERIFIED], see §3 */
  --text-muted: #5c5c66;     /* content/default/placeholder */
  --topbar-bg: #0a1730;
  --rail-bg: #f0eafa;
}
```

Typography: **Inter** (UI, body) · **Manrope** (product bar, brand headings) · **JetBrains Mono**
(metrics/code, Band convention — not Apex). Load via Google Fonts CDN. Shape: rounded corners,
soft shadows only, no Bauhaus hard-offset — that's the Band's own identity, never a customer-facing
prototype's.

---

## 3. What I verified this session (fresh, independent of the 2026-07-31 pull)

Figma access status first, because the last record of it (memory: "View seat blocks remote/URL
path," deferred 2026-06-26) is **stale** — checked live just now:

| Plan | Seat | Result |
|---|---|---|
| elizabeth.connor's team | View | (not tested — Full seat below succeeded first) |
| **N-able Technologies** (org) | **Full** | ✅ `get_metadata` and `get_variable_defs` both succeeded against the ACP master file (`UaNDhhl1fawHB0K9KqJFxA`) |

`[CS: VERIFIED, narrow]` — the remote Figma MCP works, with Full org access, against this specific
file. **This does not confirm the June blocker is fully gone.** The View-seat constraint on record
was scoped to a specific team (`.../team/1417890940412075954`) holding Apex's actual canonical
multi-file library — a different team from whatever owns the ACP master file I just read. I have
not tested the remote path against that team. Don't generalize "remote Figma access works" past
"it works for this one file" until someone tries it against the canonical Apex team directly.

I pulled live variable values off the **ACP master Figma file**
(`UaNDhhl1fawHB0K9KqJFxA`, pages: *Exploration*, *Components*) — but that file turned out to be a
node-editor/workflow-canvas mockup (sockets, connectors, node inputs), not a generic Apex screen
gallery, so it didn't have Product Bar / Primary Nav / brand-fill instances to resolve brand color
against. What it *did* resolve, cross-checked against build.md's existing light-mode values —
**and they match**, which is a real independent confirmation, not a guess:

| Token | Resolved value | Matches build.md? |
|---|---|---|
| `content/default/secondary` | `#404047` | ✅ `--text-tertiary` |
| `border/container/default` | `#d5d5d5` | ✅ `--border` |
| `icon/control/secondary` | `#2e2e33` | (not yet in build.md — candidate for `--text-secondary`, same value already used there for `content/default/body`) |
| `border/rounding/full` | `999` | ✅ `--radius-full` |
| `space/2xs` / `space/xs` | `4` / `8` | consistent with a 4px base spacing scale |

This doesn't newly verify brand/status/dark-mode — it corroborates the neutrals build.md already
had. Good news, not new news.

---

## 4. The v1 / 2.0 divergence — named, not resolved

There is a **second, much more thoroughly catalogued** Apex reference in this workspace:
`acp-core-main-3/.claude/skills/apex-design-system/` — 519 cataloged token variables, full
component/variant keys, library file keys, built for **driving Figma directly** via the plugin API
(not for CSS/HTML). It targets **Apex v1**, not Apex 2.0. Per its own docs: *"default to [Apex v1]…
don't mix v1 and 2.0."*

Apex Bridge (this file, build.md) targets **Apex 2.0** — because that's what the 2026-07-31 pull
was against. These are two different generations of the same design system, cataloged by two
different efforts, and **they are not reconciled**. Concretely:

- The v1 catalog flags `color/stroke/primary` as **brand blue** used for strokes (a naming trap —
  "primary" but not a fill color).
- The 2.0 pull (build.md, this file) found brand **fill** resolves to **purple**.
- These aren't necessarily contradictory (blue-stroke + purple-fill could both be true in the same
  system, or v1 and 2.0 may have genuinely different brand colors) — but nobody has checked, and I
  won't manufacture a resolution. `[CS: UNKNOWN]` — divergence recorded per CLAUDE.md §18: this is
  data about where the inference is weakest, not a bug to silently patch over.

**If you ever need pixel-accurate Apex** (not bridge-approximate), the v1 catalog is the deeper,
more verifiable resource — it has real component/variant keys you can `get_design_context` against.
For a 30% concept prototype, Apex Bridge is the right tool; don't reach for the v1 catalog unless
fidelity requirements go up.

---

## 5. Access — what's available right now

| Resource | Status |
|---|---|
| Figma, N-able Technologies org (Full seat) | ✅ Live, verified this session |
| ACP master Figma file (`UaNDhhl1fawHB0K9KqJFxA`) | ✅ Readable — but it's a workflow-canvas mockup, not a screen gallery |
| Apex v1 library files (Core/Data Grid/Data Viz/Media/Tokens/Patterns) | ✅ File keys + `lk-` keys cataloged in `acp-core-main-3/.claude/skills/apex-design-system/references/libraries.md` — untested this session, but the catalog is dated and detailed |
| Apex **2.0** library file (the one the brand purple was actually pulled from) | ❌ No file key recorded anywhere in this workspace. The 2026-07-31 pull happened in a prior session; its source file was never written down. |
| `@n-able/apex-ui` compiled CSS / `knowledge-base.json` (real `--apx-*` custom properties, real Angular component API) | ❌ Lives at `/Users/williammincher/Documents/GitHub/apex-ui/...` — a different person's machine, not reachable from here |
| Dark-mode Apex frame | ❌ Never pulled. Every dark-mode value in the token block is `[CS: UNKNOWN]` |
| Status colors (critical/high/medium) | ❌ Only `--low` (`#058142`) is verified. The rest are unsourced guesses sitting next to a verified value, which is exactly the pattern that produced the blue mistake |

## 6. What I need to close the gaps

1. **The Apex 2.0 file key** — whoever did the 2026-07-31 pull has it in their history; without it I
   can't re-verify or extend the brand/status findings, only trust them secondhand.
2. **One dark-mode Apex frame URL** (any screen, dark theme) — a single `get_design_context` pull
   would resolve the whole `[CS: UNKNOWN]` canvas/text block in one shot.
3. **One frame each showing critical/high/medium status treatment** — same method as `--low`, which
   is already verified. Badges, alerts, or a severity table would all work.

None of these block a 30% prototype. They block turning `[CS: HIGH]`/`[CS: UNKNOWN]` into
`[CS: VERIFIED]` across the whole block.

---

## 7. First step, direct answer

**You already have enough to build a 30% fidelity ACP prototype today.** The token block in §2 is
real (mostly `[CS: HIGH]`, some `[CS: VERIFIED]` per §3), it's already wired into `build.md`, and
30% fidelity means "concept, not pixel-accurate" — Apex Bridge's whole purpose. Nothing in §5/§6
gates that tier.

What this file changes is not "can I build" but "can I trust what I'm building against" — before
today, build.md's `[CS:]` tags pointed at a doc (`briefs/context/DESIGN.md`) that didn't exist.
Run the prototype pipeline (`spec` → `critic` → `build`) against the existing brief; build will
read this file's token block same as before.
