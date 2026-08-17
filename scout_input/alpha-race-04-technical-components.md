# Alpha RACE — Technical Components (Engineering Handoff)

**Source:** `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html` — Engineering handoff section (Tier 3 mode)  
**Extraction date:** 2026-05-29  
**Status:** Pending — prototype is Tier 1, engineering handoff is provisional  
**Confidence:** [CS: VERIFIED] — extracted directly from prototype Engineering section

---

## Schema contracts needed

Three primary data contracts required:

### 1. `IncidentDetail`
Purpose: Core incident object with correlation metadata  
Status: Schema definition needed  
[CS: VERIFIED — listed in Engineering handoff]

### 2. `CorrelationLink`
Purpose: Link structure between correlated events  
Status: Schema definition needed  
[CS: VERIFIED]

### 3. `AlphaScoreBreakdown`
Purpose: Score transparency data ("Why 94" component contributions)  
Status: Schema definition needed  
[CS: VERIFIED]

**Note:** No `schema.json` files exist in prototype. These are **contracts to be defined**, not implemented schemas. [CS: VERIFIED — prototype is static HTML, no API contract files present]

---

## API endpoints

Two endpoints required for Alpha RACE functionality:

### 1. `/api/incidents/:id/correlation`
**Method:** GET (assumed)  
**Purpose:** Retrieve correlated events for a given incident ID  
**Returns:** Presumed to return `CorrelationLink[]` structure  
**Status:** Not implemented  
[CS: VERIFIED — endpoint listed in Engineering handoff]

### 2. `/api/incidents/:id/score-breakdown`
**Method:** GET (assumed)  
**Purpose:** Retrieve score breakdown for transparency UI  
**Returns:** Presumed to return `AlphaScoreBreakdown` structure  
**Status:** Not implemented  
[CS: VERIFIED]

**Gap:** No API contract specification exists. HTTP methods, request/response schemas, error states, auth requirements — all undefined. [CS: MEDIUM — absence noted, standard API design requirement]

---

## Components

Two custom UI components identified:

### 1. `<alpha-incident-card>`
**Purpose:** Display incident in list view (left rail in prototype)  
**Renders:** Incident ID, severity chip, age, title, correlation tag  
**Status:** Implemented as HTML/CSS in prototype; needs componentization  
[CS: VERIFIED — component listed in Engineering handoff]

### 2. `<alpha-narrative-view>`
**Purpose:** Display human-readable incident narrative ("What happened / What we did / What to do next")  
**Renders:** Story grid with structured narrative blocks  
**Status:** Implemented as HTML/CSS in prototype; needs componentization  
[CS: VERIFIED]

**Componentization gap:** Prototype is static HTML. No Vue/React/Web Component implementation exists. These are **design targets**, not implemented components. [CS: VERIFIED — prototype source is static HTML with inline styles]

---

## Data binding requirements

### Incident list
**Requirement:** Incident list must reflect real-time consolidation ratio  
**Current state:** Prototype shows static "12 incidents" count  
**Implementation need:** Live data binding to Alpha correlation engine output  
[CS: VERIFIED — listed in Engineering handoff]

**Implication:** If Alpha engine returns 47 events but UI still shows 47 individual incidents, the consolidation value prop disappears. Data binding is **load-bearing** for the demo. [CS: MEDIUM — inferred from value prop dependency]

### Score display
**Requirement:** Score display must bind to Alpha model output  
**Current state:** Prototype shows static "94/100 CRITICAL" score  
**Implementation need:** Live score + breakdown data from `/api/incidents/:id/score-breakdown`  
[CS: VERIFIED]

**Implication:** "Why 94" transparency is the differentiator. If score breakdown is static/fake, transparency is performative, not real. [CS: MEDIUM — inferred from differentiation claim in competitive context]

---

## Dependencies

Five system dependencies identified:

### 1. Adlumin MDR API
**Purpose:** Source system for security events  
**Status:** Presumed existing (n-able core product)  
[CS: MEDIUM — not verified, but Adlumin is n-able's MDR platform]

### 2. Alpha correlation engine
**Purpose:** Event correlation logic that produces the 47→12 consolidation  
**Owner:** Raj Dhesi (per PM Action Dashboard Decision 3)  
**Status:** Unknown — may be Phase 1 output, or may still be in development  
[CS: UNKNOWN — no engineering status provided in prototype]

### 3. SOAR isolation webhook
**Purpose:** Automated response action (referenced in incident timeline: "Isolated endpoint via SOAR webhook")  
**Status:** Unknown  
[CS: UNKNOWN]

### 4. Endpoints, network, cloud data sources
**Purpose:** Multi-source correlation inputs  
**Status:** Presumed existing as part of MDR stack  
[CS: MEDIUM — standard MDR data sources]

### 5. (Implied) Authentication/authorization layer
**Purpose:** Secure API access, tenant isolation  
**Status:** Not mentioned in Engineering handoff  
[CS: MEDIUM — standard requirement, absence noted]

**Critical dependency question:** Is the Alpha correlation engine (dependency #2) **ready for demo use**? This is the subject of PM Action Dashboard Decision 3 ("Real Alpha output or Beth-designed synthetic?"). If the engine is not ready, the demo uses synthetic data, and "real-time consolidation ratio" becomes **simulated** consolidation ratio. [CS: HIGH — dependency directly ties to Decision 3]

---

## Design QA checklist

Engineering handoff includes a Design QA checklist. Status as of prototype creation:

| Item | Status | Note |
|------|--------|------|
| **Usability tested** | ✗ FAIL | Needs: 5 customers, moderated |
| **Accessibility baseline** | ~ PARTIAL | Keyboard nav present, screen reader untested |
| **Content reviewed** | ✗ FAIL | Terminology not validated with Raj |
| **Visual design** | ~ PARTIAL | Apex tokens approximated, not bound |
| **Responsive breakpoints** | ✗ FAIL | Desktop only |
| **Error states** | ✗ FAIL | Correlation failure, timeout not designed |

[CS: VERIFIED — checklist extracted from Engineering handoff section]

### Failure analysis

**3 complete gaps:**
1. Usability testing (no customer has seen this)
2. Content validation (terminology not confirmed with Alpha engine owner)
3. Error states (no failure mode design)

**2 partial gaps:**
1. Accessibility (keyboard works, screen reader unknown)
2. Visual design (approximates Apex Bridge design system, not bound to tokens)

**1 missing item:**
- Responsive design (desktop-only prototype)

**Implication for demo:** If demo runs on customer's laptop and customer resizes window, layout may break. If correlation API times out, no error state is designed — demo may hang or show undefined behavior. [CS: MEDIUM — inferred from checklist gaps]

---

## Technical readiness assessment

**Schema:** Not defined  
**API contracts:** Not defined  
**Components:** Designed (static HTML), not implemented  
**Data binding:** Not implemented  
**Dependencies:** 2 verified existing, 3 unknown status  
**QA checklist:** 3/6 fail, 2/6 partial  

**Overall engineering status:** Tier 1 design artifact. Not buildable without resolving schema contracts, API design, and Alpha engine dependency status. [CS: HIGH — matches prototype Tier 1 fidelity banner]

---

## Blocking technical questions

These questions must be answered before Tier 2 (Direction) or Tier 3 (Spec-ready):

1. **Is the Alpha correlation engine API-ready?** (Decision 3 dependency)
2. **What does the `IncidentDetail` schema look like?** (contract needed for component implementation)
3. **What happens when correlation fails or times out?** (error state design gap)
4. **What authentication model does `/api/incidents/:id/*` use?** (not mentioned in Engineering handoff)
5. **Does Apex Bridge design system have tokens for this UI pattern?** (visual design partial gap)

[CS: MEDIUM — inferred from Engineering handoff gaps and Design QA checklist]

---

## Recommendation from technical extract

**Before advancing to Tier 2:**
1. Resolve Decision 3 (real vs. synthetic incident data) — this gates Alpha engine dependency
2. Draft schema contracts for `IncidentDetail`, `CorrelationLink`, `AlphaScoreBreakdown`
3. Design error states (correlation failure, API timeout, no data)
4. Validate terminology with Raj (content review gap)

**Before advancing to Tier 3:**
5. Implement API endpoints with contract tests
6. Componentize `<alpha-incident-card>` and `<alpha-narrative-view>`
7. Run usability test with 3–5 MDR analysts (not full 5-customer moderated study — lighter weight validation first)

[CS: MEDIUM — standard engineering readiness progression, mapped to Band Protocol tier gates]
