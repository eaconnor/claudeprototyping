# Adlumin ROI by Quarter — UX Priorities, Sequencing, and the Quadra Case - DRAFT May 2026

**Source:** Confluence ADL space, page 61907271770  
**Author:** Elizabeth Connor  
**Last Modified:** May 15, 2026  
**[CS: VERIFIED]** — Direct export from n-able.atlassian.net

---

## Executive Summary (Context + Stakes)

This plan exists because **the cybersecurity market crossed a structural inflection point in 2025–2026**:

* The dominant attack techniques no longer look malicious (Living‑Off‑the‑Land, identity abuse)
* SOC work no longer scales via humans
* AI is now expected to be the _operating model_, not a feature
* Buyers increasingly evaluate vendors on **outcomes**, not telemetry

Adlumin already has **real technical capability** in these areas. The risk is not "we lack AI," but that we:

* Frame it as polish rather than architecture
* Do not clearly connect it to dominant threat models
* Do not translate it into renewal‑ and expansion‑driving outcomes

This document intentionally combines:

* **Operational ROI (this quarter, next quarter)**
* **Strategic ROI (what keeps 2027 revenue aimed correctly)**
* **UX work as the connective tissue** between detection, product strategy, and revenue.

---

## UX ROI Plan — By Quarter (Money First)  
_What dollars move, when, and why UX work is involved._

---

### **Q2 2026 — Protect & Set Up**

**Primary role of UX:** finish near‑term revenue work _and_ prevent strategic mis‑aim.

**Direct / derivable ROI**

* **AWS / OpenSearch cost optimization (ADL‑207)**  
  ⚠️ **$1.3M+ annualized**  
  Source: infra math from \~$560K/month spend → 50%+ reduction  
  `[ADL-207 infra analysis | Outlook]`
* **Call Directory completion (PUT‑996 → ADL‑1144)**  
  🟡 **\~$600K+ ARR (modeled)**  
  Based on usability research → support deflection ranges  
  `[Spool/NN/g usability research]`

**Revenue‑enabling UX**

* Partner Console IA unblock (PUT‑720 / UXBB‑1465)  
  🔵 **Gates 2027 MSP revenue**  
  Without this, multi‑tenancy and hierarchy work stalls.

**Strategic ROI (non‑trivial, low‑cost)**

* Chorus synthesis with added LOTL / value / competitive questions  
  🔵 Prevents building personas around _current product_, not _current threats_  
  `[PUT-1109 Chorus | Outlook]`
* Competitive landscape refresh (Jan 2024 → 2026)  
  🔵 Prevents benchmarking against outdated competitors  
  `[Adlumin Qu … Recording | Video]`

**Why AI appears already in Q2** Because if we do _not_ seed personas and strategy with **current threat reality** now, every AI / detection / dashboard decision downstream is mis‑aimed.

---

### **Q3 2026 — Expand & Retain**

**Primary role of UX:** maximize ARR already on the table and lock renewal logic.

**Direct / named ARR**

* **Extended Data Retention (ADL‑130)**  
  ⚠️ **$1.68M+ named ARR**  
  Source: $140K/month named partners × 12  
  `[ADL-773 | Jira]`
* **Integris retention work (PUT‑1159)**  
  🟡 Anchor‑customer retention + upsell base  
  `[Integris asks | Outlook]`

**Strategic ROI with revenue impact**

* **Validated Personas (PUT‑1152)** with threat‑landscape segmentation  
  🔵 Every downstream product decision improves accuracy  
  At \~$47M ARR, even **1% PMF accuracy = \~$470K/year**  
  `[Persona plan | PUT‑1152]`
* **Detection coverage audit (MITRE ATT&CK)**  
  🔵 Prevents deals lost due to invisible gaps  
  Example: 3 lost deals/quarter × $50K = $600K/year at risk  
  `[Detection inventory | Data Science]`
* **Value realization loop scoping (ADL‑1301)**  
  🔵 Sets up renewal proof (risk reduced, time saved)  
  `[RSAC 2026 outcomes theme] [ADL-1301]`

**Why AI work matters in Q3** Because **personas must encode how different customers trust, rely on, or resist AI autonomy**. Without this, we design generic AI experiences that fail enterprise and MSP expectations alike.  
  

### **Q4 2026 — Scale & Position**

**Primary role of UX:** decide whether Adlumin competes as _AI‑led_ or _feature‑led_.

**Revenue‑adjacent delivery**

* **Value Dashboard MVP (ADL‑1301)**  
  🟡 **$209K–$419K modeled** (usage → renewal proxy)  
  `[ADL-1102, ADL-1301]`
* **Partner multi‑tenancy (PUT‑990)**  
  🔵 Unlocks scale across MSP hierarchies

**Strategic AI positioning**

* **RACE / AI reframed (PUT‑856)**  
  Same budget → different scope  
  Shift from "AI polish" → **AI as operational model**

**Why execs and teams should care**

* CrowdStrike Charlotte AI claims **\~85% analyst workload reduction**  
  `[CrowdStrike materials | Outlook]`
* Even **30% of that effect** would materially change ADS economics.

**Workshops (PUT‑1153)**

* Validate:

    * LOTL visibility concepts
    * AI trust / override models
    * Identity governance mental models  
      `[PUT-1153 | Jira]`
    

---

### **2027+ — Transform**

**This is what the Q3/Q4 work is aiming correctly.**

* **N‑Central integration**  
  🔴 **$10M+ ARR (unverified)**  
  `[ADL-151 / Syslog research | Outlook]`
* **RBAC acceleration**  
  Enterprise unlock (ITDR prereq)
* **ITDR / Identity Security**  
  $2–16B market, 22–30% CAGR  
  `[Verified Market Research] [360iResearch]`
* **Agentic SOC**  
  Category shift, not feature race  
  `[Omdia] [Microsoft AI SOC blogs]`

---

## Proof Chain: Why "AI Work" Is Not Optional UX Work

This is the logical chain we are using internally — and should be explicit.

---

### 1. The Threat Model Changed (Industry Evidence)

* **84% of high‑severity attacks in 2025 use Living‑Off‑the‑Land techniques**  
  `[CybersecurityHQ Report 2025]`
* CrowdStrike reports **62% of detections involve LOTL**  
  `[CrowdStrike Threat Report 2025]`
* Identity abuse is now the dominant breach path  
  `[CISA / NSA / FBI Volt Typhoon guidance]`

➡️ Attacks now _look like normal admin behavior_.

---

### 2. Rule‑Based + Human‑Scale Security Cannot Detect This

* LOTL and identity abuse:

    * Use valid credentials
    * Use legitimate tools
    * Move slowly
    

➡️ Humans and static rules are overwhelmed; signal exists only statistically.

---

### 3. AI Is Required — But Only If Designed Correctly

AI is required to:

* Learn "normal" at scale
* Detect drift, not signatures
* Correlate behavior over time

BUT —

Poorly designed AI:

* Creates alert fatigue
* Erodes trust
* Gets disabled or ignored

➡️ **This is a UX problem, not a model problem.**

---

### 4. Adlumin Already Has Real Capability

* PowerShell ensemble model (\~1B commands/week)  
  `[ADL-1381]`
* Identity telemetry (M365, geo, impossible travel)  
  `[ADL-1279]`
* RACE automated triage and response

➡️ Capability exists. **Narrative, visibility, trust, and outcomes do not.**

---

### 5. Therefore: UX Work Is Revenue‑Critical AI Work

UX is how we:

* Turn detection into _named capabilities_ (LOTL, ITDR)
* Make AI decisions explainable and overridable
* Prove outcomes for renewal
* Align roadmap with threat reality

This is why **AI appears throughout this plan**, not as a single epic.

---

# AI Context: Where Adlumin Stands

Adlumin's AI capabilities — primarily RACE (Real‑time Automated Cybersecurity Engine) — currently operate as detection and response automation layered onto the platform.

This includes:

* AI detection (automated threat identification, correlation, and scoring)
* Early‑stage AI SOC functionality (automated triage, recommended actions, guided remediation)

Today, these are positioned primarily as **feature enhancements**, not as **core architecture**.

The market has moved past this.

CrowdStrike's _Charlotte AI_, Palo Alto's _XSIAM_, and SentinelOne's _Purple AI_ are reframing AI not as a feature but as the analyst's **operating environment** — autonomous triage, confidence‑scored decisions, and human‑in‑the‑loop override as the default workflow.

Adlumin's current roadmap treats AI as a **Q4 polish item** (PUT‑856).

This page recommends reframing that same budget as a **strategic prototype**:

* Designing the **human‑AI collaboration model**
* Defining what analysts see when AI acts
* Defining how they override, trust, and audit AI actions

The intent is that Adlumin's AI SOC trajectory is informed by **UX research in Q3 personas** and validated through **Q4 design work**.

No dollar estimate is attached to AI on this page — AI initiatives are tagged 🔵 **STRATEGIC** because the value is _positional_ (competing on capability rather than price) and not directly measurable from current data.

Relevant gaps:

* No published AI detection performance baseline (FPR, MTTR, analyst workload reduction)
* No AI SOC maturity benchmark against competitors

Both would strengthen the case for reframing PUT‑856.

---

# Part 1: Do We Understand the Customer Problem?

**Honest assessment:** Partially. Intuition‑informed, not research‑validated.

### What exists today

* Persona work in gap‑analysis phase — clusters identified, not validated (Julian's summit themes doc)
* Chorus call analysis just starting — transcripts flowing into Condens, monthly insights planned
* Competitive analysis last updated January 2024  
  (PMM battlecards are sales‑focused, not product/UX‑focused)
* One SME interview
* One partner interview planned
* One customer journey map (November 2024)
* Qualtrics CSAT integration being set up, not producing usable signal yet

### What does **not** exist

* Validated personas (planned Q3 via PUT‑1152)
* Jobs‑to‑be‑done or workflow ethnography
* Threat‑landscape alignment study
* Competitive UX benchmarking
* Customer segmentation by security maturity
* Understanding of how customers' threat models are changing

**What this means**  
We are making product decisions based on proximity, not validated understanding.  
The UX bets are directionally correct, but we cannot confirm we are solving the right problems, in the right order, for the right segments.

---

# Part 2: Industry Landscape — Is Adlumin Designed for the Right Era?

## The MDR / XDR market in 2026

The MDR market is projected at **$5–6B in 2026**, growing **21–25% CAGR** to **$13–19B by 2031**.

The competitive differentiator is no longer breadth of telemetry, but:

* Quality of AI‑driven investigation
* Platform consolidation economics

Adlumin's positioning — co‑managed, \~90‑minute deployment, endpoint‑agnostic, 100% channel — remains a genuine advantage versus:

* Arctic Wolf (manual‑heavy, weeks to deploy)
* ConnectWise (vendor lock‑in, complex stack)

**But the market is shifting under us** along five vectors.

---

## 🔴 Living Off the Land (LOTL): why AI is required (not optional)

### What this means (in human terms)

Attackers increasingly break in **without malware**. They use the same tools IT and administrators use every day: PowerShell, scripts, admin utilities. To traditional tools, this looks like normal work.

### Why AI matters here

Humans and rules look for known bad behavior.  
LOTL attacks succeed because they hide inside _normal patterns_.

AI is needed to:

* Learn what "normal" looks like at massive scale
* Detect small deviations and unusual sequences
* Correlate behavior over time that no human could connect manually

### Adlumin today

* PowerShell Ensemble model analyzing \~1B commands/week
* Endpoint detection expansion (ADL‑1381)
* Tamper‑proof research (ADL‑1294)

### Strategic gap

* We detect LOTL‑relevant activity, but do **not name or position it**
* Competitors market LOTL coverage as headline capability

### Why execs should care

LOTL is now the dominant attack style.  
If we don't clearly position AI as the solution here, we risk appearing behind even when the tech exists.

---

## 🔴 Identity is the New Perimeter

### What this means

Most breaches no longer start with networks — they start with identity:

* User accounts
* Service accounts
* API keys and tokens

Non‑human identities increasingly outnumber human identities.

### Why AI matters

Identity attacks are behavioral:

* "Is this login normal for this identity?"
* "Does access drift over time?"

AI excels at:

* Detecting improbable behavior
* Identifying lateral movement using valid credentials
* Observing abnormal non‑human identity usage

### Adlumin today

* Identity monitoring exists:

    * Impossible travel
    * Geo‑analysis
    * Microsoft 365 telemetry
    * Signal Sync (ADL‑1279)
    

### Strategic gap

* No articulated ITDR (Identity Threat Detection & Response) strategy
* No identity governance or cloud identity posture story
* RBAC pushed to 2027+

---

### Why execs should care

Identity is now the attacker's fastest path to value.  
AI‑driven identity defense is becoming **expected**, not optional.

---

## 🔴 AI‑Powered Autonomous SOC

### What this means

SOC teams are flooded with alerts; most are never investigated.

The bottleneck is not effort — it's scale.

### Why AI matters

This is where AI shifts from _assistant_ → _operator_:

* AI triages alerts
* AI investigates context
* AI recommends or executes containment

Humans approve, steer, audit.

### Adlumin today

* AI positioned as feature enhancement or premium polish

### Strategic gap

* AI not framed as operating model
* No agent‑based SOC workflow

### Why execs should care

The market is moving toward AI‑run SOCs.  
Underselling this now forces price‑based competition later.

---

## 🟡 Cloud Security Posture (CSPM)

### What this means

Many breaches are caused by misconfiguration, not intrusion.

### Why AI matters

AI can:

* Continuously evaluate cloud environments
* Prioritize meaningful risk
* Reduce remediation noise

### Adlumin today

* Detection roadmap exists
* No CSPM capability

### Strategic gap

Competitors increasingly bundle posture + detection.

---

## 🟡 Value Realization

### What this means

Customers ask:

> "What risk did this product actually reduce?"

### Why AI matters

AI enables outcome measurement:

* Incidents avoided
* Time saved
* Risk reduced

### Adlumin today

* Dashboards show activity

### Strategic gap

No outcome‑based narrative tied to renewal.

---

## 🔑 AI Bottom Line

AI is not improving workflows — it is redefining how security work is done.

For Adlumin:

* From features → operating models
* From data → decisions
* From alerts → outcomes  
    
  Think: becoming as valuable as Salesforce and imbedded/useful in a way that it doesn't make sense to replace. 

---

# Part 3: Strategic Recommendations Beyond UX

### Tier 1 — Survival / Competitive Relevance

* Name and market LOTL detection
* Accelerate identity security (ITDR)
* Reframe RACE/AI as strategic center
* Refresh competitive analysis (Jan 2024 → 2026)

### Tier 2 — Growth / Differentiation

* Ship compliance automation faster (ADL‑763) — ⚠️ ADL‑132 de-prioritized from 2026 roadmap
* Build value realization loop
* Define N‑Central integration revenue logic

### Tier 3 — Foundation

* Fund persona research at 100%
* Commission detection coverage audit
* Evaluate CSPM + supply chain for 2027+ radar  
    

## Data Sources & Verification Status

**Key:**

* ✅ Verified
* ⚠️ Derivable (math checks out, needs final validation)
* 🟡 Modeled
* 🔴 Unverified
* 🔵 Strategic (positional / directional value)

| Estimate | Confidence | Source | What the source actually says | Data still needed |
| --- | --- | --- | --- | --- |
| ADL‑207: $1.3M+ annualized at 20% reduction | ⚠️ DERIVABLE | [https://n-able.atlassian.net/wiki/spaces/NTAPGT/pages/61881844345](https://n-able.atlassian.net/wiki/spaces/NTAPGT/pages/61881844345) | \~$560K/month OpenSearch; target 50%+ reduction; math checks out | Post‑change AWS billing |
| Databricks migration: $3–4M infra | ⚠️ DERIVABLE | Same source | 50%+ of \~$6M/year infra savings | Final migration scope |
| ADL‑130: $1.68M+ named ARR | ⚠️ DERIVABLE WITH CAVEAT | ADL‑773 | $140K/month named partners × 12 | CRM validation (requested vs at‑risk) |
| Call Directory: \~$600K+ ARR | 🟡 MODELED | Spool/NN/g usability research | 20–40% support deflection in high‑friction workflows | Pendo ↔ ticket correlation |
| Value Dashboard: $209K–$419K | 🟡 STRATEGIC REV ENABLEMENT | ADL‑1102, ADL‑1301 | Mechanism documented; no adoption/renewal data | Pendo adoption + renewal cohorts |
| Action Feedback: $209K–$419K | 🔴 UNVERIFIED | Hypothesized | Same range as Value Dashboard (red flag) | Support ticket taxonomy |
| Pendo Guides: $41K–$81K | 🔴 UNVERIFIED | External benchmarks | Optimizely reports \~50% ticket reduction | Adlumin correlation |
| Persona validation | 🔵 STRATEGIC | — | 1% PMF improvement at $47M ARR = $470K | Complete Q3 personas |
| Competitive refresh | 🔵 STRATEGIC | — | Prevents misaligned roadmap bets | Q2 refresh |
| Detection coverage audit | 🔵 STRATEGIC | — | 3 deals lost/quarter × $50K = $600K/year | MITRE ATT&CK mapping |
| LOTL / ITDR discovery | 🔵 STRATEGIC | — | Two fastest‑growing threat categories | Discovery + scoping |
| Value realization loop | 🔵 STRATEGIC | — | NRR >110% vs <100% is growth vs contraction | Outcome telemetry |
