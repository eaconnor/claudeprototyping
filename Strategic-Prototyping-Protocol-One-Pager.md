# Strategic Prototyping Protocol — One-Pager

**What it is:** a Claude Code skill (`/prototype`) that turns a rough idea into a working prototype, a readiness call, an expert-panel read, and a teammate-ready handoff. **Design thinking, not grading** — build something to react to, then iterate.

---

## 5-minute demo script

1. **Open** your project in Claude Code (the one with the skill installed). Type:
   `/prototype Trust Score panel`
2. **Answer the two intake questions:**
   - *Lo-fi or hi-fi?* → **lo-fi** (fast, one screen — right for most concepts)
   - *Sources?* → paste a Confluence/Jira link or a file path, or say **"no sources — exploratory"**
   - *(Council depth?)* → **Fast Mode** for the demo (≈2 min)
3. **Watch the pipeline run:** scout → spec → critic → build → critic → council → handoff. Narrate that each step is a separate specialist agent.
4. **Show the prototype** — working HTML in our product look (Apex / Apex Bridge / Adlumin), with the **review rail** on the right: what you nailed, what'll hurt you, and routed cards for Product / Design / Research / Eng.
5. **Click "Hear the council"** → show the surfaced tensions. Then hit **Hard Mode** to reveal the full 44-voice expert panel and where traditions disagree.
6. **Open the handoff packet** (`briefs/handoffs/…`) — point out it's a folder a teammate can open cold.
7. **Land the trust point:** every claim is confidence-tagged, the readiness score reflects how much is assumed, and unknowns are named — not invented.

*Tip:* keep a pre-run example open in a second window in case live timing runs long.

---

## What you can do with it

| Main task | Sub-tasks |
|---|---|
| **1. Prototype a screen or flow** | Lo-fi concept screen · hi-fi clickable multi-page walkthrough · embed as an Apex Bridge overlay inside a host product · get a readiness tier (Concept / Direction / Spec-ready) · iterate and re-run |
| **2. Run a design-thinking workshop** | Frame the problem through three gates (real problem? right thing? built right?) · surface hidden assumptions · separate what's *researched* from what's *assumed* · produce "ingredients, not answers" to react to as a group |
| **3. Stress-test an idea with the expert panel** | **Fast read** (~12 priority voices → top tensions, ~2 min) · **Deep read** (all 44 voices, 14 traditions, full cross-talk) · find where frameworks contradict (those clashes = your real risks) · route each decision to the right human |
| **4. Gather & ground research** | Pull real sources via scout (Confluence, Jira, web, local files) · secondary-literature scan (name the camps, stakes, and the strongest dissent) · confidence-tag every claim · flag thin or one-sided sourcing |
| **5. Write the spec / brief** | Three-gate brief with `[R]/[D]/[A]/[?]` evidence tags · readiness ratio · names what's missing instead of filling it |
| **6. Critique a build** | 6-dimension scorecard · before/after delta · punch list of what to fix |
| **7. Produce a handoff** | Drop-in packet: brief, critic scorecards, council testimony, routed cards, ownership attribution — openable by any teammate or new Claude session |

---

## Why you can trust its research more than a raw chatbot

Same model underneath — the difference is **discipline that forces uncertainty into the open** instead of hiding it behind fluent prose:

- **Confidence tags on every claim** — `VERIFIED / HIGH / MEDIUM / LOW / FABRICATION RISK / UNKNOWN`. Fluency ≠ accuracy, and it says so per claim.
- **Evidence gating** — claims are marked `[R]` researched, `[D]` data, `[A]` assumed, `[?]` unknown. If too much is assumed, the brief is flagged *not ready* rather than dressed up with a confident score.
- **Sources, not vibes** — scout pulls from your actual docs/tickets/web; a sourceless answer lowers the readiness score honestly.
- **Verify-every-stat rule** — every number in a handoff is re-checked against its source before it ships (a self-reported "47%" once turned out to be 80% — so now it gets verified).
- **Named unknowns** — where there's no data, it writes "Unknown: gap" and turns it into a research question. It does not fabricate a number to fill the hole.
- **Expert-panel clash detection** — 44 analytical traditions read the same idea; contradictions are surfaced and routed to a human, never auto-resolved.

**The honest version:** it's not "smarter" — it's *accountable*. It shows its sources, marks its confidence, and tells you what it doesn't know.

---

*Install: download the ZIP, read README.md, copy `.claude/`, `briefs/`, and `CLAUDE.md` into your Claude Code project, type `/prototype`. Full steps in INSTALL.md.*
