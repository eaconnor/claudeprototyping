# Band Protocol — n-able Prototyping Pipeline

**Quick start:** Clone this repo → open in Claude Code → type `/prototype [your idea]`

You'll get a working HTML prototype with research-backed design decisions, routed ownership cards, and a handoff packet ready for product/design/engineering.

---

## What is this?

The Band Protocol is a structured AI-native design pipeline that produces **integrity-first prototypes** — working demos where every design decision is sourced, every assumption is tagged, and ownership is routed to the right teams.

Built by Beth Schwindt (Sr. UX Designer, Adlumin) as part of **The Open Vector** curriculum — a free, open-source course on AI-native product development.

---

## Prerequisites

1. **Claude Code** — [claude.ai/code](https://claude.ai/code) or CLI
2. **Atlassian MCP connection** — Connect your n-able Jira/Confluence account in Claude Code settings
   - Jira instance: `n-able.atlassian.net`
   - Cloud ID: `21ab04ef-0acf-4e62-b163-a12e66774c17`
   - Relevant spaces: ADL, PUT, ProdUX

---

## Setup

### Option 1: Git clone (recommended)
```bash
git clone [repo-url]
cd Bethproto
# Open this folder in Claude Code
```

### Option 2: Manual copy
Copy these folders into your project:
```
.claude/
  agents/       # scout, spec, build, critic, council, bradley, etc.
  skills/       # /prototype and /handoff commands
CLAUDE.md       # Protocol instructions
```

---

## How to use `/prototype`

Type `/prototype` followed by your idea. Examples:

```
/prototype a PM tool for scoring product ideas
/prototype customer feedback inbox for Adlumin users
/prototype LOTL attack timeline visualization
```

The pipeline runs automatically:
1. **Scout** — pulls research from Jira, Confluence, or web
2. **Spec** — writes a three-gate brief with tagged assumptions
3. **Critic** — pre-build scorecard (6 dimensions)
4. **Build** — working HTML prototype with design system
5. **Critic** — post-build re-score + delta analysis
6. **Handoff** — deliverable packet with routed cards

---

## What you get

Every prototype includes:

### 1. Working HTML
- Functional UI (clicks, hovers, interactions)
- Itten color palette (locked)
- Space Mono + Kalam typography
- 28px grid, Bauhaus shadows

### 2. Bradley Rail (right sidebar)
- Readiness tier (Concept / Direction / Spec-ready)
- "What you nailed" / "What will hurt you"
- Routed cards: **Product** · **Design** · **Research** · **Eng**

Each card shows:
- What [team] does next
- Why now (sourced or `[A]` assumed)
- If you ship without it (consequence)
- ROI: Business / User / Unknown

### 3. Handoff packet (`briefs/handoffs/[project]/`)
```
CLAUDE.md              ← orientation for next session
HANDOFF.md             ← verified math, tensions, three calls
[project].brief.md     ← three-gate brief with claim tags
[project].html         ← the prototype
critic-pass-1.md       ← pre-build scorecard
critic-pass-2.md       ← post-build re-score + delta
scout/                 ← all source docs
```

---

## Confidence tags — why every claim is marked

The Band Protocol uses `[CS:]` (Confidence Score) tags because **fluency ≠ accuracy**. AI models write with equal confidence whether they're sourcing from docs or hallucinating.

Every factual claim gets tagged:
```
[CS: VERIFIED]         — Matches primary sources
[CS: HIGH]             — Well-sourced; not personally verified
[CS: MEDIUM]           — Plausible; partial sourcing
[CS: LOW]              — Thin sourcing
[CS: FABRICATION RISK] — Model likely hallucinated; do not use
```

**The Chicago principle:** Beth once asked Claude about a building she had personally designated as a National Historic Landmark. Claude gave eloquent, specific, confident details. All invented. She knew because she wrote the designation report.

This is why we tag. Fluency does not know its own accuracy.

---

## Three-gate framework

Every brief passes through three gates:

**Gate 1** — Do we understand the customer problem?
- Real and sourced? Or assumed?

**Gate 2** — Are we making the right thing?
- Advances the mission?

**Gate 3** — Are we making the thing right?
- Tested how? By whom?

Claims are tagged: `[R]` Research · `[D]` Data · `[A]` Assumed · `[?]` Unknown

If >30% are `[A]` or `[?]`, the brief is not ready. The protocol names this — it does not fill gaps with fluency.

---

## n-able context

**Jira/Confluence spaces:**
- **ADL** — Adlumin product/design work
- **PUT** — Partner/user testing
- **ProdUX** — Product + UX collaboration

When you run `/prototype`, scout automatically searches these spaces for relevant context. You can also point it to specific tickets or pages:

```
/prototype idea from ADL-1234
/prototype based on PUT-567 user research
```

---

## Advanced: Council pass

Add `--council` to any prototype request for multi-framework analysis:

```
/prototype --council [your idea]
```

Council runs five analytical voices against the brief:
- Jobs-to-Be-Done
- Service Blueprint
- Self-Determination Theory
- Disruptive Innovation
- Value Chain

Each returns testimony (not synthesis). Voices may contradict — that's the point. Tensions become research briefs.

---

## Response size discipline

Every AI response has environmental cost. The protocol defaults to the smallest effective tier:

| Tier | Length | Water | CO₂e | When to use |
|------|--------|-------|------|-------------|
| **BITE** | 1-2 sentences | 0.26 ml | 0.03 g | Default |
| **SNACK** | 3-5 sentences | 0.45 ml | 0.05 g | Context needed |
| **MEAL** | Complex reasoning | 3.20 ml | 0.38 g | Analysis |
| **FEAST** | Full pipeline | 55.00 ml | 5.60 g | Prototype run |

Annual target per user: 1,400 BITEs · 380 SNACKs · 200 MEALs · 20 FEASTs

---

## The Open Vector curriculum

The Band Protocol is a working artifact of **The Open Vector (Zero-Vector Design)** — a free curriculum for AI-native product development.

**Six levels:**
- 00 Orientation
- 01 Foundation
- 02 The Medium
- 03 The Pipeline (← you are here)
- 04 Orchestration
- 05 Auteur

**Governing constraints:**
1. The curriculum is open. Fork it. Teach it.
2. No knowledge is gated by money. Free. Always.
3. Time is the only honest cost.
4. We make everyone around us better.

> If you want to build a ship, don't drum up the men to gather wood. Teach them to yearn for the vast and endless sea. — Saint-Exupéry

Learn more: [link to curriculum when published]

---

## Get help

- Read `CLAUDE.md` in this repo for full protocol documentation
- Ask in [internal channel when established]
- Report issues or contribute: [repo issues when established]

---

**Built with integrity. Shipped with attribution. Free forever.**
