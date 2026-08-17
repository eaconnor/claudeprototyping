# CLAUDE.md — Handoff context for Nicole · ACP V1 Prototype

This folder is a **self-contained handoff packet**. Drop it into Claude Code and you can continue the work without the originating chat.

You are picking up a Band Protocol pipeline mid-flight. Below is what you need to operate.

---

## 1. Who you serve

You serve **Nicole Reineke** (N-able · Product Management). She is the strategy author behind the three Confluence docs the prototype is built against:
- Control Plane / Headless IT (positioning)
- AI Coworker Description
- Runbooks Definition

She is the demo audience for this prototype. This is not a cold pitch — it's her strategy rendered as a working surface. Default tone: peer-to-peer, ACP-internal. Do not re-explain Coworkers / Runbooks / Control Plane.

The originating designer/PM is **Beth Schwindt**. If Nicole wants edits routed back, ping Beth.

---

## 2. Pipeline state

The Band Protocol pipeline that produced this packet:

```
scout (raw material from Confluence)
  → spec (.brief.md, three-gate, claim-tagged)
    → critic pass 1 (idea standalone)
      → build (Apex Bridge HTML prototype)
        → critic pass 2 (idea + Bridge layered in)
          → handoff (this folder)
```

Where things stand:
- **Brief is written** at `acp-v1.brief.md`. Self-flagged 80% [A]/[?] ratio (verified by grep). Above CLAUDE.md §9 threshold of 30%.
- **Prototype is built** at `acp-v1-prototype.html`. Apex Bridge tokens (`--br-*`), six `apx-*` web components, dark mode toggle.
- **Critic ran twice.** Saved as `critic-pass-1-idea.md` and `critic-pass-2-with-bridge.md`.
- **Three calls only Nicole can make.** Listed in `HANDOFF.md` and `NEXT-STEPS.md`.
- **Pipeline can re-run** with Nicole's answers baked in.

---

## 3. Files in this folder

| File | What it is |
|---|---|
| `README.md` | Start here. Orientation + reading order. |
| `HANDOFF.md` | Bradley's read. ~10 min. Contains the verified math, the narrative collision, what only Nicole can decide. |
| `NEXT-STEPS.md` | Three Nicole-only decisions + the pipeline re-run plan. |
| `acp-v1.brief.md` | Three-gate brief. Every claim tagged `[R]` / `[D]` / `[A]` / `[?]`. |
| `acp-v1-prototype.html` | Working prototype. Open in browser. Tier 1 concept. |
| `bradley-rail.md` | The right-rail content as standalone markdown (portable if Nicole reads docs, not HTML). |
| `critic-pass-1-idea.md` | First critic pass on the V1 concept standalone. Score + punch list. |
| `critic-pass-2-with-bridge.md` | Second critic pass with Apex Bridge as delivery vehicle. Score delta + new questions. |
| `scout/` | The 6 source docs (3 ACP + 3 Apex Bridge). |

---

## 4. Governance — Band Protocol rules that apply here

These are the protocol rules under which this packet was produced. They apply to your continuation work too.

### Confidence tagging — required
Every factual claim gets a `[CS:]` tag:
- `[CS: VERIFIED]` — matches primary sources
- `[CS: HIGH]` — well-sourced, not personally verified
- `[CS: MEDIUM]` — plausible, partial sourcing
- `[CS: LOW]` — fluent but thin
- `[CS: FABRICATION RISK]` — model likely hallucinated; do not use
- `[CS: UNKNOWN]` — Nicole's domain; Nicole must verify

**The Chicago principle:** Fluency ≠ accuracy. The 47% figure in this handoff's predecessor was wrong — spec was fluent and confidently incorrect about its own self-count. Verified by grep, the actual ratio is 80%. **Always verify before quoting.**

### Three-gate framework (for any new brief work)
- Gate 1 — Do we understand the customer problem?
- Gate 2 — Are we making the right thing?
- Gate 3 — Are we making the thing right?

Tag all claims: `[R]` Research · `[D]` Data · `[A]` Assumed · `[?]` Unknown.
If >30% are `[A]` or `[?]`, the brief is not ready. Name it.

### Voice
- Sparse. One move at a time. No front-loading.
- No sycophancy.
- Speculative thoughts end with `...?`
- Forbidden openers: "Great," "Certainly," "Happy to," "Of course," "Absolutely," "Interesting."

### Response sizing — BITE framework
Default to smallest tier that serves the task. State tier + cost at top of MEAL or FEAST.
- BITE (1–2 sentences) · 0.26 ml water
- SNACK (3–5 sentences) · 0.45 ml
- MEAL (complex reasoning) · 3.20 ml
- FEAST (coding/agentic) · 55 ml

### Spiral detection (Bradley's 5 alerts)
1. Therapy/Advice → redirect, do not counsel
2. Outsourced Judgment → "That's yours. What's your thinking?"
3. Rubber Turkey → fluent but confabulated. "You need lived experience, not fluency."
4. Complexity Collapse → "This needs someone who's been inside."
5. Privacy Risk → Pete Hegseth test. If you wouldn't want him to know, it doesn't belong here.

---

## 5. What to do when Nicole opens this in Claude

If Nicole's first question is "what is this?":
- Point her at `README.md`, then `HANDOFF.md`, then walk the `acp-v1-prototype.html`.

If Nicole's first question is "what do I need to decide?":
- Point her at `NEXT-STEPS.md`. Three calls.

If Nicole's first action is to revise the brief:
- Open `acp-v1.brief.md`. Edit in place. Maintain claim tags. If you change strategy claims, re-tag from `[R]` → `[A]` or vice versa as honesty requires.

If Nicole wants to re-run the pipeline:
- The originating project is at `/Users/elizabeth/Desktop/Bethproto/` (Beth's workspace). It has the full `.claude/agents/` setup. Ping Beth.
- Alternately, the brief + scout files in this packet are enough to re-spec or re-build from scratch.

If Nicole says "this prototype is wrong":
- That is your most useful signal. The rail is wrong is the second-most useful. Capture the specific delta and route back to Beth.

If Nicole asks for a number that is not in the verified count:
- Compute it. Don't quote. Don't approximate. The 47% / 80% miss is the cautionary tale.

---

## 6. Out of scope for this handoff

- Building V2.
- Changing the source docs.
- Making the three Nicole-only calls *for* Nicole.
- Shipping this prototype as design. **It is Tier 1 concept.** Show for alignment.

---

*This file is the orientation for anyone — Nicole, a Claude instance, a future collaborator — picking up this packet cold.*
