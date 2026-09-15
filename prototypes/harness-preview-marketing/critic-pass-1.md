# Critic Pass 1 — Copy Review
**File:** prototypes/harness-preview-marketing/index.html
**Scope:** Copy only, per task brief — layout, code, and Apex Bridge design-system compliance explicitly out of scope this pass.
**Reviewer stance:** Senior B2B SaaS copy/brand review (Apple / Lemonade / Huntress bar), against the voice already established by the unchanged lines: "Hire the coworker. Keep the judgment." / "It learns your process. Not the other way around." / "Start with one. They work together."

---

## Source check (before copy critique)

- Hero, EBR ranking, coworker family, and CISO quote are traceable to named source material per the file's own header comments (Introduction_to_Harness.pptx, ACP LRP deck, FSN-83143) — sourcing discipline here is real, not decorative. PASS.
- Fictional stats (94.7 hrs, 31.2/63.5 split, 0.6 FTE-months) are disclosed as fictional seed data in the `proto-note` banner and footer. Not UNSOURCED — correctly labeled.
- `[?]` **"the same promotion ladder every MSP we interviewed asked for"** (trust section lede) — "every" is a 100%-of-sample claim. The header comment establishes eight interviewees total. If this isn't literally 8-for-8 in the deck, this is an overclaim dressed as a sourced fact. Verify against the source deck before shipping; do not ship "every" on inference alone.
- No UNSOURCED or SINGLE-SOURCE findings beyond the above — the page is unusually disciplined about labeling what's real vs. illustrative for a marketing surface.

---

## Punch list — prioritized

### 1. FAIL — "How it works," pillar 2 body copy is confusing, not just jargon-heavy
> "A narrow, declared expert reasons about your case; a versioned connector reaches your stack — and its own. It reconciles the mismatches and drafts the parts that are drafts, before you sit down."

"Drafts the parts that are drafts" is circular on a cold read — it doesn't parse as a claim, it parses as a typo. Combined with "narrow, declared expert," "versioned connector," and "reconciles the mismatches," this is the one paragraph on the page that reads like an architecture diagram translated into prose rather than something a person would say. It's the single biggest register break relative to the bar set by every other H2 on the page.

**Propose:**
> "A focused AI expert works your specific case; a connector you can inspect reaches into your stack and its own. It flags what's a draft and finishes what isn't — before you sit down."

The "How it works" section lede repeats the same two jarring terms ("narrow, declared expert," "a connector you can see and revoke") — same fix applies:
**Propose:** "...reasons with an AI expert scoped to exactly your case, and reaches your stack through a connector you can see and shut off — so day one feels like handing work to someone who already knows how you do it."

### 2. FAIL — Pull-quote attribution breaks the page's best moment
> "Paraphrased from a blind research interview — not attributed by name, per this project's research-ethics rule"

The quote itself ("He'd never buy the agents. He said he'd buy the plane they run on.") is the strongest single line on the page — specific, surprising, ownable. The line immediately under it names "this project" and its "research-ethics rule" — internal process language that has no referent for an actual site visitor. It reads like a legal footnote bleeding through the fourth wall, and it lands in the one spot on the page where the reader should be feeling something, not parsing a disclosure policy. Compare the origin-section attribution ("A CISO we interviewed, 17 clients into deciding how far to trust an agent") — that one anonymizes *and* individuates without ever explaining itself. That's the model; this isn't following it.

**Propose:**
> "Paraphrased from a blind research interview. We don't put a name to a quote without permission."

### 3. FAIL — Value Ledger caveat reads as hedging, not transparency
> "Only successful runs count. Failed or partial runs are logged but never counted — negative savings show as zero, flagged, not hidden."

This sits directly under an animated number the reader just watched climb to 94.7. The repetition of "count / counted / never counted" in two sentences is clunky, and the mechanism-explanation ("negative savings show as zero, flagged, not hidden") over-explains a plumbing detail nobody asked about at the exact moment they should be feeling the number land. The instinct — be honest about what's counted — is right; the execution steals the beat instead of protecting it.

**Propose:**
> "Only work that actually finished counts. Everything else gets logged, not hidden — and never rounds up."

### 4. FAIL — Three of six coworker cards blur together
Family grid differentiation check: EBR/QBR, Security Tabletop, and Ticket Triage are each distinct and well-drawn (Security Tabletop's "ranked lowest going in, turned out to be the one MSPs with compliance pressure would pay top dollar for" is genuinely the best card copy on the page). But Incident Response Analyst ("root-cause analysis on tickets and device events"), Environment Health Monitor ("continuous sweeps... auto-fixes routine drift, opens tickets"), and Alert Flood Suppressor ("suppresses alert noise, correlates to root cause") all circle the same vocabulary — tickets, root cause, device-level noise — with no single clear line distinguishing "watches for drift" from "responds to a live incident" from "reduces alert volume." A skimming reader (which is how landing pages get read) will not be able to say in one breath what's different between these three.

**Propose** sharpening Environment Health Monitor around prevention rather than ticket-generation, since the other two already own "live incident" and "noise reduction":
> "Finds the small stuff before it becomes a ticket — closes gaps and fixes drift on its own, before it needs a human at all."

### 5. FAIL — Origin section over-explains before the quote lands
> "A harness implies three things at once: safety, capability, and control. That's not a coincidence — it's the whole pitch, in one word a CISO handed us."

This paragraph tells the reader what to feel about the quote before they've read it, which flattens the reveal the section is built around. "Safety, capability, control" is also an abstract triad that doesn't differentiate itself the way the concrete triads elsewhere on the page do (e.g., "your sections, your sources, your grading").

**Propose:** cut the breakdown, let the quote carry the meaning:
> "That's not a coincidence. It's the whole pitch, in one word — handed to us, not the other way around."

### 6. RISK — Absolute claim needs verification before shipping
"the same promotion ladder every MSP we interviewed asked for, in their own words" — see Source check above. If the deck doesn't literally support 8-for-8, soften:
**Propose:** "the same promotion ladder MSP owners kept describing back to us, unprompted"

### 7. Minor — redundant echo in pillar 1
> "...drafts a coworker shaped like your work, not the other way around."

The section H2 two lines above already says "Not the other way around." Repeating it inside the first pillar is the kind of over-explaining the task brief asked about — the reader already got this from the headline.

**Propose:** "...drafts a coworker shaped like your work."

---

## What's working — don't touch

- **Hero reassurance line** ("No credit card. Your data never leaves your tenant. Nothing goes live until a human clicks activate.") — three short declaratives, zero hedging tone, the model for how to caveat without undercutting.
- **EBR section H2** ("The business review that took a day. Now it takes the drive to the meeting.") — the strongest single line added this pass; concrete, image-based, meets or beats the established bar.
- **EBR body copy** ("...so 'it saved time' is a number you can show, not a feeling you have to sell.") — sharp, ownable, no notes.
- **Confidence-tier cards** (MEASURED/BENCHMARKED/ESTIMATED/UNVERIFIED) — the best-executed section on the page. Plain, distinct, no jargon, no changes needed.
- **Origin section attribution line** ("A CISO we interviewed, 17 clients into deciding how far to trust an agent") — correct technique for anonymizing without flattening; individuates without naming.
- **Security Tabletop and Ticket Triage card copy** — both clear, both distinct, both earn their place.
- **Final CTA** — tight, expected, bookends the hero's reassurance without repeating it awkwardly.

## Register pattern worth naming (not a fix)
Three H2s now use the same "short claim. short qualifier." structure: "It learns your process. Not the other way around." / "We didn't name it. The market did." / "It tells you what it knows — and what it's guessing." This reads as intentional brand rhythm, not accidental repetition — flagging only so nobody mistakes it for a bug.
