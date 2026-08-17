# How to Use the `/prototype` Skill — For Alaina

**What it is:** A Band Protocol skill that runs the full prototyping pipeline (scout → spec → critic → build → critic → council → handoff) and produces working HTML prototypes with design review packets.

**When to use it:** When you need to prototype a concept, test design tensions, or create a stakeholder demo with verified math and expert analysis.

---

## Quick start

Type in Claude Code:
```
/prototype YourProjectName
```

Or with context:
```
/prototype - alpha race customer demo
```

The skill will ask you three intake questions before starting.

---

## Intake questions (Step 0)

### Question 1: Lo-fi or hi-fi?

**Lo-fi (default, good for most concepts):**
- Single-page layout, real copy, expert council, readiness score
- ~600-1,200 lines of HTML/CSS/JS
- One session, ~20-30 minutes total pipeline time
- Use this for: concept exploration, internal review, design tension testing

**Hi-fi (when you need clickable multi-page):**
- Multi-page navigation (min 4 pages: Dashboard + 2 entity lists + 1 detail)
- Interactive flows (wizard, editor, modal)
- Web components (`apx-sidebar`, `apx-productbar`, `apx-card`, etc.)
- ~3,500-5,000 lines
- Multiple sessions, ~2-3 hours total
- Use this for: stakeholder walkthroughs, vendor demo replacements, click-path validation

**Default:** If you just say "build it," skill builds lo-fi.

**Example answers:**
- "lo-fi" or "lo-fi is fine"
- "hi-fi — I need to walk Nicole through the click path"
- "default" (= lo-fi)

---

### Question 2: Who is this for?

**Me / internal team:**
- Honest gaps visible
- Bradley says what's broken
- Council shows all 44 voices with full methodology

**Stakeholder / exec review:**
- Rail written at decision level
- Tensions framed as choices
- Council leads with executive summary (readiness score + top tensions) before 44 voices

**Customer / design partner:**
- Seed data clean, no internal politics
- Attribution visible (X% Beth)
- Council framed as "expert perspectives" not methodology names

**Example answers:**
- "internal — this is for me and Beth"
- "stakeholder — Nicole will review this"
- "customer — we're showing it to a design partner"

---

### Question 3: Source material?

**Confluence/Jira:**
Give space keys, page titles, or ticket IDs.
- Example: "ADL space, Coworker Definition page"
- Example: "PUT-1166 and related tickets"
- Example: "JQL: project = ADL AND labels = alpha-race"

**Local files:**
Paths to markdown, PDFs, notes.
- Example: "Use the files in scout_input/"
- Example: "Read prototypes/alpha-race-three-tier-test.html for structure"

**Nothing yet:**
Skill will scout the web for domain grounding. Brief will lean [A]/[?] and readiness score will reflect that honestly.

**Example answers:**
- "Use existing scout material" (if you have scout_input/ already)
- "ADL space, Control Plane positioning doc"
- "No sources — this is exploratory"

---

## What you get back

### During the run (with status updates)

**Step 1: Scout** (~1-2 min if pulling from Confluence/Jira)  
Returns: `scout_input/` directory with source docs

**Step 2: Spec** (~2-3 min)  
Returns: `briefs/YourProject.brief.md` with three-gate structure + claim tagging + [A]/[?] ratio

**Step 3: Critic pre-build** (~2-3 min)  
Returns: `critic-pass-1.md` with 6-dimension scorecard + punch list

**Step 4: Build** (~1 min for lo-fi, ~20-30 min for hi-fi)  
Returns: `prototypes/YourProject/index.html` — working prototype

**Step 5: Critic post-build** (~4-5 min)  
Returns: `critic-pass-2.md` with delta table (pre → post scores)

**Step 6: Council** (~5 min)  
Returns: `council-testimony.md` with 44 voices + cross-talk

**Step 7: Handoff** (~2-3 min)  
Returns: `briefs/handoffs/recipient-project-date/` with complete packet (15 files)

**Total time:**
- **Lo-fi:** 20-30 minutes
- **Hi-fi:** 2-3 hours (most time is build)

---

## Design-specific outputs

### Bradley rail (in every prototype)

Right-side rail with:
- **Design tensions** — Explicit cards showing where frameworks contradict (e.g., JOBS vs SDT on autonomy)
- **Validation questions** — Specific tests you can run (comprehension, believability, reading order)
- **Routing cards** — What Design / Product / Research / Eng should do next
- **Honest ROI** — Business / User / Unknown (gaps named, not fabricated)

**Use it to:** Identify which tensions need UI iteration, which are blocked by decisions, which are ready to test.

---

### Critic scorecards (design callouts)

**Pre-build scorecard** includes:
- "Which design tensions should the prototype surface?" section
- "What design validation questions should the prototype help answer?" section
- "What should NOT be designed yet?" section (blocked by decisions)

**Post-build scorecard** includes:
- "Design Findings for Alaina" section
- Did the build surface tensions effectively?
- Are validation questions actionable?
- Is placeholder content clearly marked?

**Use it to:** See what the critic expected vs. what the build delivered. Delta table shows what improved.

---

### Council testimony (design-relevant voices)

For design-focused runs, council emphasizes:
- **JOBS cluster** — Functional/emotional jobs the feature serves
- **NEEDS cluster** — SDT (autonomy/competence/relatedness) implications
- **JRNY cluster** — Service Blueprint, UX 5Es, reading order risks
- **SIGN cluster** — Semiotics (how users read the interface cold)

**Cross-talk** shows where voices contradict:
- Example: "JOBS says override-logging serves CISO audit needs. NEEDS says it threatens analyst autonomy."
- These contradictions are **design tradeoffs**, not gaps. You decide which user to optimize for.

**Use it to:** Find where design serves one user (analyst) but hurts another (CISO), or where two valid frameworks lead to opposite UI decisions.

---

## Design-specific validation tests

The skill automatically generates these for you (in Bradley rail + NEXT-STEPS.md):

### 1. Comprehension test (30-sec cold read)
**What:** Show key UI element to 5 people (cold, no context). 30 seconds. Ask: "What does this do?"  
**Pass:** ≥4 can explain without prompting  
**Use it for:** Testing whether primary value prop (e.g., "47→12 consolidation") is self-explanatory

### 2. Believability test (synthetic data credibility)
**What:** Show content (incident story, narrative, data) to 5 domain experts. Ask: "Does this look real?"  
**Pass:** ≥4 say "real" or "plausibly real"  
**Use it for:** Testing whether Beth-designed content smells synthetic or passes as authentic

### 3. Reading order test (section independence)
**What:** Cover two of three sections. Can user still understand from remaining section alone?  
**Use it for:** Testing whether UI is robust under uncontrolled reading order (demo pressure, skimmers)

### 4. Economic buyer test (CISO concerns visible)
**What:** Cover user-facing sections. Do remaining sections address economic buyer concerns (cost, compliance, SLA)?  
**Use it for:** Testing whether prototype optimizes for user buyer only or also serves economic buyer

---

## Customizing for design work

### If you want design-focused council
In Step 0 (intake), when asked "Who is this for?", say:
- "Internal — design review focus"
- "Me, Alaina — I need design tensions"

Skill will emphasize JOBS, NEEDS, JRNY, SIGN clusters in council.

---

### If you want to skip council (faster iteration)
Council is the heaviest step (~5 min for 44 voices). If you're iterating quickly and don't need the 44-voice read yet:
- Run `/prototype` with "skip council for now" in your initial request
- Or: Use existing council testimony from prior run (if brief hasn't changed significantly)

Add council back before stakeholder review or T2 build commit.

---

### If you want to iterate prototype only (no full pipeline)
If you already have a prototype and just want to refine the HTML/CSS:
- Don't use `/prototype` — just ask me to edit the HTML directly
- Example: "Update index-alaina.html — make the rail collapsible on mobile"
- Example: "Add a modal for the override-logging UI in the Alpha RACE prototype"

Full pipeline is for new concepts or major revisions. Direct edits are for refinement.

---

## Understanding the outputs

### Fidelity tiers (Tier 1/2/3)

**Tier 1 (Concept, 30% fidelity):**
- Purpose: Explore the idea, surface tensions, test comprehension
- Appropriate for: Internal review, concept validation
- NOT appropriate for: Customer demo without framing
- Evidence threshold: High [A]+[?] ratio expected (50-70%)

**Tier 2 (Direction, 60% fidelity):**
- Purpose: Test the approach, validate decisions
- Appropriate for: Stakeholder review, design partner walkthrough
- Evidence threshold: <40% [A]+[?] required

**Tier 3 (Spec-ready, 90% fidelity):**
- Purpose: Ready for build planning, engineering handoff
- Appropriate for: Production build, customer demo
- Evidence threshold: <30% [A]+[?] required

**In the prototype:** Fidelity banner (top of page) shows tier + what's missing.

---

### [A]/[?] ratio (evidence quality)

Every claim in the brief is tagged:
- **[R]** — Researched (sourced from interviews, studies, docs)
- **[D]** — Data (quantified, measured)
- **[A]** — Assumed (plausible but not verified)
- **[?]** — Unknown (need to find out)

**[A]+[?] ratio** = percentage of claims that are assumed or unknown.

**Why it matters:**
- High ratio (50-70%) = concept is exploratory, gaps are expected
- Low ratio (<30%) = concept is validated, ready for production build

**For designers:** High [A]+[?] means design decisions are provisional. Don't over-invest in polish until decisions resolve and ratio drops.

---

### Readiness score (N/30)

Brief scores itself on 7 dimensions (each 1-4 scale, max 30 total):
1. Charter clarity
2. Evidence strength
3. Competitive position
4. Customer validation
5. Economic clarity
6. Execution readiness
7. Resilience / failure modes

**Typical scores:**
- **14-18/30** — T1 Concept (appropriate for exploration)
- **20-24/30** — T2 Direction (appropriate for stakeholder review)
- **26-30/30** — T3 Spec-ready (appropriate for production build)

**For designers:** Low score doesn't mean bad concept. It means concept is early. Design to the score — T1 prototypes should look exploratory, not polished.

---

## Tips for designers using this skill

### 1. Run lo-fi by default
Most design questions (Does this UI pattern work? Is the value prop clear? Do sections stand alone?) are answerable with lo-fi. Save hi-fi for click-path validation or stakeholder demos.

### 2. Read the Bradley rail first
It's written for you. Three tension cards + validation questions + routing cards tell you exactly what to evaluate and test.

### 3. Don't wait for content to finalize
High [A]+[?] ratio means placeholder content is expected. Evaluate design structure (Does Story section work without Timeline? Is 47→12 self-explanatory?) not content polish.

### 4. Use council cross-talk to find tradeoffs
When two voices contradict (JOBS vs NEEDS, SIGN vs JRNY), that's not a bug — it's a design tradeoff. You're choosing which user or constraint to prioritize.

### 5. Flag blocking decisions early
If critic says "Decision 1 (customer profile) unresolved," that means you cannot finalize certain design choices (asset types, industry context, fidelity signaling) until Product resolves it. Flag this in your review so Beth knows what's blocking.

### 6. Run validation tests yourself
Don't wait for Research. Comprehension test (5 people, 30 sec) and reading order test (cover sections) are executable by you now. Run them, report findings to Beth.

---

## Example invocation (full)

```
/prototype Alpha RACE refresh for Alaina

lo-fi
internal team — design focus
use existing scout material
```

Skill will:
1. Read `scout_input/alpha-race-*.md` (5 docs)
2. Use existing brief or generate new one
3. Run critic pre-build
4. Build lo-fi prototype (~600-1,200 lines)
5. Run critic post-build
6. Run council (emphasize JOBS, NEEDS, JRNY, SIGN)
7. Create handoff packet at `briefs/handoffs/alaina-alpha-race-YYYY-MM-DD/`

**Time:** ~20-30 minutes  
**Output:** 15 files (working prototype + design review packet)

---

## Example invocation (minimal)

```
/prototype - ACP Trust Level UI
```

Skill will ask:
- "Lo-fi or hi-fi?" → You: "lo-fi"
- "Who is this for?" → You: "me"
- "Source material?" → You: "Confluence AI space, Control Plane doc"

Then runs full pipeline.

---

## When NOT to use this skill

**Don't use `/prototype` if:**
- You just want to edit an existing prototype (ask me to edit the HTML directly)
- You need a quick mockup with no expert analysis (just describe what you want, I'll build it)
- You're iterating rapidly (5+ versions in one session) — council is overkill for fast iteration

**Do use `/prototype` if:**
- You're starting a new concept and need design tensions surfaced
- You need verified math and expert voices for a stakeholder review
- You want a complete handoff packet (brief + build + critic + council + next steps)

---

## Questions?

Ask Beth or spawn this skill again with `/prototype --help` (if that's implemented).

**Band Protocol:** Lucy holds the clipboard. This tool works for you, not the vendor.

---

**End of skill guide.**