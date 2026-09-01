# DESIGN.md — N-zo AI Credits: Usage & Billing (Apex 2.0 reproduction spec)

> **What this file is.** A build-ready reproduction spec for Lynne Robertson's N-zo billing / AI-credits mocks, grounded in the live **Apex 2.0** design system. Drop this into a repo (e.g. ACP), and a fresh Claude/engineer session should be able to rebuild the screens in HTML/CSS **without re-deriving style from screenshots** — tokens, components, layout, copy, and states are all specified here, and the *reproduction manifest* (§9) maps every screen back to its Figma node so ground truth can be re-pulled.
>
> **Provenance & honesty.** Tokens in §2 were pulled live from Figma via Dev Mode (`get_variable_defs`) and are **[CS: VERIFIED]**. The N-zo panel (Screen A) is **drawn** — reconstructed from a located Figma node. The Usage Dashboard and AI Settings (Screens B, C) are **reconstructed from written requirements** (Confluence Source 03) because their mock nodes are not yet linked — treat their layout as *directional*, not pixel-faithful, until the node is located (§9, TODO-M1).
>
> **Owner:** Lynne Robertson (N-able UX — Platform Services & Apex). **Products:** N-Sight, N-Central. **GA target:** 2026-08-31.

---

## 0. The one rule that governs this build

At **GA**, N-zo billing is **read-only decision support that ends in a handoff to Sales** — *not* a transaction surface.
- The UI **displays** the plan; it **cannot change** it. Plan changes happen when Sales (via Salesforce) notifies a PM to change it manually.
- "Buy more credits" is a **Contact Sales** route, **not** an in-product checkout.
- Self-serve credit purchase and the three upgrade workflows are **out of scope for GA** (post-GA, gated on an un-run study). Do not build them. See §8.

If you find yourself building a checkout, a payment field, or a plan-change control — stop. That is not this spec.

---

## 1. Stack & conventions

- **Vanilla HTML/CSS/JS**, single file per screen or a show/hide `.screen` pattern. No framework required (match the host repo; if ACP uses a stack, follow it).
- All color/type/space/radius values come from the **`--apx-*` custom properties in §2**. Never hardcode a hex that exists as a token.
- Semantic markup, keyboard navigable, light/dark aware where the host supports it.
- **Seed data is fictional** (fictional MSP org, fictional user names/emails). No real tenant, customer, or pricing data. See §7 seed block.

---

## 2. Apex 2.0 design tokens `[CS: VERIFIED — pulled live 2026-08-20]`

Paste into `:root`. Names mirror the Apex variable names so they trace back to the system.

```css
:root {
  /* ---- Brand / AI accent ---- */
  --apx-color-surface-brand: #c046ff;   /* N-zo / AI primary — VERIFIED (not blue) */
  --apx-color-stroke-brand:  #c046ff;
  --apx-color-purple-500:    #7b1ce6;
  --apx-color-purple-0:      #f4ebfd;
  --apx-ai-drop-shadow:      0 0 16px 0 #9954D466;  /* AIDropShadow: offset 1,1 r16 */
  --apx-stroke-pink:         #ff00a3;   /* used in AI multi-border gradient */

  /* ---- Text ---- */
  --apx-color-text-default:         #111111;
  --apx-color-text-default-light:   #464646;
  --apx-color-text-default-lighter: #909090;
  --apx-color-text-link:            #0079aa;

  /* ---- Icon ---- */
  --apx-color-icon-primary:       #0079aa;
  --apx-color-icon-success-light: #00a753;

  /* ---- Surface / neutrals ---- */
  --apx-color-surface-container: #ffffff;
  --apx-color-neutrals-white:    #ffffff;
  --apx-color-neutrals-gray-lighter: #d5d5d5;
  --apx-color-neutral:           #6d6d6d;
  --apx-fill-primary-inactive:   #d5d5d5;

  /* ---- Semantic status (for credit-status pills, alerts) ---- */
  --apx-color-green-600:      #01a753;  /* healthy / low usage / success */
  --apx-color-green-0:        #f0fff8;
  --apx-color-warm-yellow-600:#fcb72d;  /* near limit / warning */
  --apx-color-warm-yellow-0:  #fffbf2;
  --apx-color-razamatazz-500: #ed186b;  /* at / over limit / danger */
  --apx-color-razamatazz-200: #fdecf3;
  --apx-color-neon-blue-500:  #425eff;  /* info accent */
  --apx-color-neon-blue-200:  #eaf0ff;
  --apx-color-blue-green-500: #16abe2;
  --apx-fill-new:             #01a75333;

  /* ---- Typography ---- */
  --apx-font-core: "Open Sans", system-ui, sans-serif;
  --apx-body-size-x-small: 11px; --apx-body-lh-x-small: 16px;
  --apx-body-size-small:   12px; --apx-body-lh-small:   18px;
  --apx-body-size-medium:  13px; --apx-body-lh-medium:  20px;  /* default body */
  --apx-body-size-large:   18px; --apx-body-lh-large:   24px;
  --apx-body-weight-default:    400;   /* Regular */
  --apx-body-weight-emphasised: 600;   /* Semibold */
  --apx-body-letter-spacing:    0.1px;
  --apx-heading-letter-spacing: -0.02em;
  --apx-heading-lh-x-large:     28px;

  /* ---- Spacing (layout/space) ---- */
  --apx-space-none: 0;   --apx-space-3xs: 2px; --apx-space-2xs: 4px;
  --apx-space-xs: 8px;   --apx-space-sm: 12px; --apx-space-md: 16px;
  --apx-space-lg: 20px;  --apx-space-xl: 24px; --apx-space-2xl: 32px;

  /* ---- Radius (border/radius) ---- */
  --apx-radius-none: 0; --apx-radius-md: 4px; --apx-radius-lg: 8px;
  --apx-radius-xl: 16px; --apx-radius-full: 999px;

  /* ---- Stroke / sizing ---- */
  --apx-stroke-default: 1px; --apx-stroke-light: 1px;
  --apx-icon-size: 20px;
}
```

**Type ramp (derived from tokens):**
| Role | Font | Size / LH | Weight |
|---|---|---|---|
| body / default | Open Sans | 13 / 20 | 400 |
| body emphasised | Open Sans | 13 / 20 | 600 |
| small (captions, table meta) | Open Sans | 12 / 18 | 400 |
| x-small (pills, footnotes) | Open Sans | 11 / 16 | 400 |
| large (section lead) | Open Sans | 18 / 24 | 600 |
| heading x-large | Open Sans | — / 28 | 600, letter-spacing −0.02em |

**AI treatment:** N-zo surfaces use the brand purple `#c046ff`, an AI drop shadow (`--apx-ai-drop-shadow`), and a multi-stop gradient border (purple `#c046ff` → pink `#ff00a3`). Reserve this treatment for N-zo/AI elements only.

---

## 3. Component map — mock element → Apex 2.0 component `[CS: HIGH]`

Build these as Apex components (or faithful token-based equivalents), not bespoke one-offs.

| UI element | Apex 2.0 component | Notes |
|---|---|---|
| Left-hand nav (admin) | Nav / side menu | 3 admin-only items: AI Settings, AI Usage Dashboard, (AI Audit — *not GA*) |
| KPI stat card | Stat / metric card | 4 across on the dashboard |
| Data table (users) | Data table | sortable, searchable, paginated, exportable |
| Credit-status pill | Badge / status pill | 3 states → semantic tokens (§6) |
| Consumption bar / gauge | Progress bar | org-level + per-user rollout chart |
| Contact-Sales CTA | Button (primary) | brand purple; routes out, no in-product transaction |
| N-zo chat panel | AI Overlay Panel | drawn node — header, prompts, input, footer, user settings |
| Suggested-prompt chip group | Prompt chip / list | 6 categories, drill-down |
| Plan display row | Read-only field / descriptor | **display only**, no edit control |
| Threshold alert banner | Inline alert / banner | fires at ~80% org consumption |
| Microsurvey (like/dislike, request credits) | Microsurvey widget | from epic UXKS-2098 |

---

## 4. Screen A — N-zo Panel (GA) `[drawn — node located]`

**Figma:** file `HVfEeWVGUWvtIxqYcXkARo` (General-Improvements-Q2), node `397-95772` (`.AIOverlay Panel-Drill`). Width **631px**, height ~1030px. Right-hand push-in overlay panel (product content stays visible per epic UXKS-2098).

**Component tree (from node metadata):**
```
.AIOverlay Panel-Drill (631 × 1030)
├─ .HeaderAI - GA                        (top, 52h) — brand header, close/settings
├─ Content Area (631 × 978)
│  └─ Slot
│     └─ .SlotAI-Inner-Start-GeneralPreview
│        └─ Frame 73
│           ├─ AI icon + header          (AIAvatarHeader-Improved, 418×284) — avatar + welcome
│           └─ Text-box-Zone
│              ├─ "Suggested prompts" (title, 13/20 semibold)
│              ├─ TextHints  → 6 prompt groups:
│              │   AI-Start-Group-01 … 06   (≈60px rows, stacked, 8px gap)
│              └─ textinputChatAI-FINAL   (chat input, 562×100, pinned to bottom)
└─ ASK-N-zo-footer                        (623 × 28) — footer / disclaimer
```

**Layout notes:** 28px outer padding on the inner frame; prompt rows use `--apx-space-xs` (8px) vertical gaps; input pinned bottom; footer 28px.

**Copy (specified; pull exact strings via §9 TODO-C1):**
- Header title: "Ask N-zo" (+ user settings entry, credit usage visible)
- Welcome message: warm one-liner (enhanced GA welcome)
- Section label: **"Suggested prompts"**
- 6 prompt categories (drill-down) — e.g. Devices, Patching, Security, Reporting, Account/**"How much does N-zo cost?"**, Getting started. Add the cost prompt per Source 03.
- Usage messaging (near/at limit): *"You're running low on N-zo credits. To request more, contact Sales."*
- Footer: standard AI disclaimer.

**States:** default · has-history · **near-limit** (usage message appears) · **at-limit** (input disabled + Contact-Sales prompt).

---

## 5. Screen B — AI Usage Dashboard (admin) `[reconstructed from Source 03 — mock node not located; TODO-M1]`

Admin-only. A basic dashboard: assess AI usage across users and judge whether to adjust the plan. **Read-only.**

**Layout (directional):**
```
[ Left nav ]  [ Dashboard ]
              ├─ Header: "AI Usage Dashboard"  +  billing period (start–end)  +  Export CSV button
              ├─ Org threshold alert banner (only when ≥80% consumed)
              ├─ KPI row (4 stat cards):
              │   • Users using AI        • Users at credit limit
              │   • Days until credit reset • Plan name
              ├─ Org consumption bar: consumed vs remaining (+ projected burn-rate marker)
              └─ Users table:
                  columns: User (initials avatar · name · email) │ Credit status (pill) │
                           Credits / month (rollout chart) │ Last activity
                  features: search by name · sortable · paginated · Export CSV
```

**KPI cards** use the Stat card component; "Users at credit limit" turns danger-colored when > 0.
**Table** — one row per user; the rollout chart is a small inline progress bar per user.
**No plan-change control anywhere.** "Adjust plan" = Contact Sales.

**Copy:**
- Empty state (no usage yet): *"No N-zo activity this billing period yet."*
- At-limit consequence line: *"Users who reach their limit are paused until credits are purchased or reset next period."*
- Plan action: *"To change your plan or buy more credits, contact Sales."* (link to docs + Contact Sales)

---

## 6. Screen C — AI Settings (admin) `[reconstructed from Source 03; TODO-M1]`

- **Plan display** (read-only): current plan name + entitlements (credits, seats, features). No edit control. Helper: *"Your plan can only be changed by contacting Sales."*
- **Brief org usage summary** + who is approaching their limit.
- **Opt-out model:** users are **opted in by default**; admin toggles opt-out. (Confirm default-on copy.)
- Links: docs, Contact Sales.

---

## 6b. Credit-status pill — the one component to get exactly right

| Status | Meaning | Token (bg / text) |
|---|---|---|
| **Low usage / healthy** | well under limit | `--apx-color-green-0` / `--apx-color-green-600` |
| **Near limit** | approaching threshold | `--apx-color-warm-yellow-0` / `--apx-color-warm-yellow-600` |
| **At / over limit** | reached or exceeded | `--apx-color-razamatazz-200` / `--apx-color-razamatazz-500` |

Pill: `--apx-radius-full`, x-small type (11/16), 2px 8px padding.

---

## 7. Billing model rules (encode as data, not prose) `[CS: VERIFIED — Source 03]`

```js
const BILLING = {
  includedCredits: 100,              // every org's included allocation
  packages: [250, 500],              // predefined add-on packs (quote via existing As-Is model)
  rollover: false,                   // credits reset monthly, DO NOT roll over — state in UI
  selfServe: false,                  // GA: no in-product purchase
  planChange: "contact-sales",       // Sales → Salesforce → PM changes plan manually
  atLimitBehavior: "pause",          // usage stops until purchase or next-period reset
  orgAlertThreshold: 0.80,           // ~80% org consumption fires the alert banner
};
```

**Fictional seed org (safe to ship):**
```js
const SEED = {
  org: "Meridian Managed IT",        // fictional MSP
  plan: "N-zo Standard",
  period: { start: "2026-08-01", end: "2026-08-31" },
  creditsPurchased: 350, creditsConsumed: 291,   // ~83% → triggers alert
  daysUntilReset: 11,
  users: [
    { name: "A. Okafor", email: "aokafor@meridian.example", credits: 120, used: 118, status: "at-limit", last: "2h ago" },
    { name: "R. Delacroix", email: "rdelacroix@meridian.example", credits: 80, used: 61, status: "near-limit", last: "1d ago" },
    { name: "J. Whitlock", email: "jwhitlock@meridian.example", credits: 80, used: 12, status: "low", last: "5d ago" },
    { name: "S. Nakamura", email: "snakamura@meridian.example", credits: 70, used: 0, status: "low", last: "never" },
  ],
};
```

---

## 8. ⛔ DO NOT reproduce

- The FigJam **Credit-Upgrade-Flow** screens (Get more credits → checkout → Credits added) in file `pudsktELOhTX7tpmu8Cdmu` are **Figma's own product UI, used as competitor reference.** They are **not** N-zo mocks. Do not rebuild them as N-zo.
- No self-serve checkout, payment field, or plan-change control (see §0).
- The competitor teardown sections (FIGMA / ATERA / CLAUDE / AI-tokens-pricing) are research, not build targets.

---

## 9. Reproduction manifest — re-pull ground truth here

| ID | Screen / asset | Figma fileKey | node-id | Status |
|---|---|---|---|---|
| A | N-zo Panel (GA) | `HVfEeWVGUWvtIxqYcXkARo` | `397-95772` | drawn — located |
| A-proto | N-zo panel prototype flow | `HVfEeWVGUWvtIxqYcXkARo` | `397-95772` | clickable proto |
| — | General Improvements Q2 (design) | `HVfEeWVGUWvtIxqYcXkARo` | `1-3275` | design frame |
| ref | Billing-Research board (competitor ref) | `pudsktELOhTX7tpmu8Cdmu` | `1-45` | **do not reproduce** (§8) |
| tokens | Apex 2.0 variables | `HVfEeWVGUWvtIxqYcXkARo` | `397-95772` | pulled live (§2) |

**Open TODOs before this is pixel-faithful:**
- **TODO-M1** — Locate the **AI Usage Dashboard** + **AI Settings** mock nodes (search epics UXKS-1676, UXKS-1810, or ask Lynne). Screens B & C are requirement-reconstructed until then.
- **TODO-C1** — Pull exact microcopy (welcome message, 6 prompt labels, footer) via `get_design_context` on node `397-95772`.
- **TODO-T1** — Confirm the Apex **component names** (Stat card, Data table, Badge) against the Apex 2.0 library file so Code Connect maps 1:1.

---

## 10. Attribution & confidence

- **Design authorship:** Lynne Robertson (N-zo panel, dashboard requirements, billing-research board).
- **This spec:** reconstructed by Claude from her artifacts. Screen A ≈ **80% Lynne** (drawn node). Screens B/C ≈ **50% Lynne** (her written requirements, layout inferred). Tokens **100% verified** from Apex 2.0.
- **Regime:** `PROCEED-PARTIAL` — build GA read-only surfaces now; self-serve stays BLOCKED (§8).
- **Verified:** Apex brand `#c046ff`, Open Sans, credit model (100 / 250 / 500, no rollover, Sales-mediated). **Reconstructed / unverified:** dashboard layout, exact microcopy, Apex component names (see §9 TODOs).

*Companion: `../../briefs/nzo-billing-dashboard.brief.md` (why — three-gate intent) · this file (how — form & reproduction).*
