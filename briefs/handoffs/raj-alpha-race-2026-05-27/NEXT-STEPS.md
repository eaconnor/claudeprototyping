# Next Steps — Alpha RACE Customer Demo · Phase 2

**For:** Raj · **From:** Beth (via Band Protocol pipeline) · **Date:** 2026-05-27

---

## Four decisions only Raj + Beth can make

The pipeline stopped here. These cannot be made by spec, build, critic, or any Claude session.

---

### 1 · Which customer?

> Who is this demo for, and what do they look like?

The brief has no customer profile. Gate 2 is full of assumptions because the audience is undefined.

**What you need to decide:**
- Industry / vertical
- Company size (number of endpoints, SOC maturity level)
- Current tooling (what do they use today? SIEM? EDR?)
- Buying stage (evaluating Alpha for the first time? expansion conversation?)

**What happens in the prototype:** The fictional company name ("Acme Bldg Supply") gets swapped for a fictional proxy that matches the industry. The incident story's context (geography, asset type, risk surface) gets tuned to feel real for that customer.

**What you do NOT put in the prototype:** The actual customer's name, their real tenant IDs, their real employee names. Fictional proxy only.

**Pipeline next move depends on this answer.**

---

### 2 · What does the demo need to trigger?

> "This demo succeeds when ___."

Gate 3 is almost entirely [?]. Without a success definition, there's no way to test, validate, or know when the prototype is done.

**Options to consider:**
- Customer asks for a second meeting / pilot scoping call
- Customer commits to a 30-day pilot
- Customer says "I see exactly how this reduces my team's ticket volume"
- Something else Beth is tracking from Sales

**What this affects:**
- Which screens are critical vs. optional
- How much interactivity the prototype needs
- Whether one incident story is enough or three are better

**If you're not sure:** Name what would feel like a failure ("customer says 'interesting, let us think about it'"). Work backwards from that.

**Pipeline next move depends on this answer.**

---

### 3 · Incident story source

> Real Alpha output or Beth-designed synthetic?

The current Phase 1 prototype uses a synthetic lateral movement incident ("Acme Bldg Supply"). The spec doesn't know whether that's right for this context.

**Option A — Real Alpha output:**
- Raj or Alpha team provides a real correlated incident (anonymized to fictional company)
- Highest credibility. Customer can ask "is this what your engine actually produces?" → Yes.
- Risk: Alpha correlation output format may not be demo-ready without cleanup

**Option B — Beth-designed synthetic:**
- Beth designs a synthetic incident mapped to the chosen customer's industry
- More control. Demo-tuned.
- Risk: customer asks "is this real output?" → Answer is "illustrative." Weaker.

**What Raj needs to provide for Option A:**
- One real Alpha correlated incident from the existing beta dataset
- Anonymized: replace real company/tenant/user with fictional proxies
- Format: event list + correlation rationale + risk score + narrative summary

**What Beth needs to provide for Option B:**
- Customer's industry and attack surface (from Decision 1)
- ~3–5 plausible raw alerts that correlate into one incident story

**Pipeline next move depends on this answer.**

---

### 4 · Has "what/why/next" been tested?

> Is the narrative structure validated or assumed?

The brief has twelve [A] claims. Seven of them trace back to the assumption that the "what happened / why it matters / what to do next" narrative format works for:
- MDR Blue Team analysts reading the incident summary
- Customers seeing it for the first time

**What you need to know:**
- Has any analyst ever read this narrative format and given feedback?
- Has it been tested with a customer, even informally?
- Ewan's hypothesis (from ADL-1837) names three competing mental models for trust calibration — was one of those tested?

**If yes:** Tell Beth what was tested, who saw it, and how they responded. Claims that have evidence behind them flip from [A] → [R]. Brief strengthens. Gate 1 improves.

**If no:** That's honest. The brief stays [A] with a note. The prototype ships on that assumption and research validates post-demo. Named risk, not a blocker.

**Pipeline next move depends on this answer.**

---

## What happens after you answer

```
Raj + Beth: four answers
  → spec re-runs with answers baked in
      [A]+[?] drops from 65% → ~15–20% (below 30% threshold)
    → critic pass 1 (pre-build scorecard)
      → build (full Phase 2 HTML — Phase 2 structure, locked content)
        → critic pass 2 (re-score vs. pre-build)
          → handoff packet refreshes
```

Estimated cost: one FEAST session to build.

To trigger: send the four answers to Beth. Beth runs the pipeline.

---

## What the pipeline will NOT do without explicit direction

- Choose the customer for you
- Invent an incident story if Raj doesn't provide one
- Make the success criteria call for Sales
- Test the narrative structure (that's Research)
- Use real customer data from Raj's product environment

---

## Open questions the pipeline cannot answer

| Question | Owner | What needs to happen |
|---------|-------|---------------------|
| Which actual customer is Beth demoing to? | Beth + Sales | Conversation with Sales/CSM team |
| Is Alpha correlation output ready for demo use? | Raj + Alpha eng | Pull one real incident (anonymized) |
| Who validated "what/why/next" format? | Raj + Research | Raj's memory, or Julian runs a test |
| Is Phase 2 customer-surface flag in current build scope? | Raj + Mike Adler | Scope decision vs. ADL-1836 |
| Does Research know this customer demo is happening? | Beth | Ping Julian Mason before demo |

---

## What you can do right now in Claude

Open this folder in Claude Code and:

- **"Read the brief"** → Claude reads `alpha-race-customer-prototype.brief.md`, summarizes the gaps.
- **"Walk me through the shell"** → Claude opens `alpha-race-phase2-shell.html`, describes the four PM Action Dashboard cards.
- **"I have the incident story"** → Paste it. Claude fills [DRAFT] placeholders in the shell, keeps fictional company names.
- **"Lock Decision 2: success = pilot commit"** → Claude updates `alpha-race-customer-prototype.brief.md` to flip relevant [?] → [R: Raj] and notes the decision.
- **"Re-spec with customer X profile"** → Claude re-runs spec with that constraint, surfaces conflicts in shell.

The brief is editable. The shell is editable. The pipeline is re-runnable.

---

*Four decisions. Then the work routes.*
