# Scout dossier — GitHub reference repos for QBR-prep simulation
**Date:** 2026-07-31 · **Scout for:** lo-fi prototype — MSP operator (non-technical delivery lead, N-central + Cove + Adlumin) pulling data sources to prep a QBR/EBR
**Method:** WebFetch on github.com pages + raw.githubusercontent.com files. All extractions passed through a small summarizer model; verbatim quotes are as returned by that model, not independently eyeballed in raw source.
**Repos covered:** 3 (Repo 3 added 2026-07-31 per coordinator; see its mismatch flag)

---

## Repo 1 — Northsignal-Labs/msp-security-reporting-template-pack

**URL:** https://github.com/Northsignal-Labs/msp-security-reporting-template-pack
**Access:** Public [CS: VERIFIED]
**License:** MIT, "under Northsignal Labs attribution" per README; `LICENSE` file present in root [CS: VERIFIED — file listing; license text not individually opened]
**Adoption signal:** 0 stars · 0 forks · 0 watchers · 0 open issues [CS: HIGH — repo page as fetched]
**[WOBBLY]** Solo pre-launch project. Root is dominated by self-referential launch scaffolding (APPROVED-GITHUB-PAGES-LAUNCH-RUNBOOK.md, FIRST-7-DAY-VALIDATION-PLAN.md, DISTRIBUTION-READINESS-SCOREBOARD.md, SIGNAL-TRACKING.md, RELEASE-DECISION-NOTE.md). No adoption evidence. Treat templates as one author's vocabulary, not MSP-industry consensus.

### What it is
Free, no-spend collection of cybersecurity reporting templates (static HTML/Markdown) plus local Python generators for MSPs. No cloud hosting, no analytics, no payment capture. [CS: HIGH — README]

### Five template assets (each ships landing page + Markdown + JSON schema + Python generator) [CS: VERIFIED — README + tree]
1. MSP Monthly Security Report — `msp-monthly-security-report-template.html` · `msp_monthly_security_report_generator.py`
2. NIS2 Readiness Checklist — `nis2-readiness-checklist.html` · `nis2_readiness_summary_generator.py`
3. M365 Secure Score Executive Report — `m365-secure-score-executive-report-template.html` · `m365_secure_score_report_generator.py`
4. Cyber Insurance Evidence Checklist — `cyber-insurance-evidence-checklist.html` · `cyber_insurance_gap_register_generator.py`
5. vCISO QBR Agenda Template — `vciso-qbr-agenda-template.html` · `vciso_qbr_summary_generator.py`

### Repo tree (root, as fetched) [CS: VERIFIED]
Directories: `.github/` · `assets/` · `generated/` · `samples/` · `schemas/` · `tools/`
Root files (selected): the five template HTMLs above, `index.html`, `download.html`, `generator-quickstart.html`, `sample-outputs.html`, `request-signal.html`, `manual-aggregate-counters.example.json`, `asset-scores.json`, `asset-signal-scores.example.json`, `REPOSITORY-METADATA.json`, `CHECKSUMS.txt`, `LICENSE`, `README.md`, `SECURITY.md`, `CONTRIBUTING.md`, `llms.txt`, plus ~15 launch/distribution process docs.
Subdirectory contents (`schemas/`, `samples/`, `tools/`) not fetched. [CS: UNKNOWN — not opened]

### vCISO QBR Agenda Template — full extraction [CS: VERIFIED — raw HTML fetched]

**45–60 minute agenda, 7 timed sections, in order:**
1. Executive context (0–5 min)
2. Security scorecard (5–12 min)
3. Top risks and exceptions (12–22 min)
4. Control evidence review (22–32 min)
5. Roadmap decisions (32–42 min)
6. Incident and change lessons (42–52 min)
7. Closeout (52–60 min)

**Pre-meeting checklist — "Evidence to gather":**
- Last quarter's action register
- Current user/admin count and system changes
- MFA/conditional access coverage evidence
- Endpoint protection/EDR deployment summary
- Patch/vulnerability exception report

**Pre-meeting checklist — "Context to gather":**
- Backup success/failure and restore test evidence
- Email security and awareness indicators
- Incidents, near misses, or tabletop notes
- Open risk exceptions and owner approvals
- Upcoming renewals, audits, or compliance deadlines

**Executive Security Scorecard** — columns: Area · Status · Evidence date · Business impact · Next action · Owner
Rows (5): Identity and MFA · Endpoint and device security · Backup and recovery readiness · Patching and vulnerability exposure · Incident response readiness

**Risk & Action Register** — columns: Priority · Action · Risk reduced · Effort · Decision needed · Owner · Due date · Status

### MSP Monthly Security Report Template — full extraction [CS: VERIFIED — raw HTML fetched]

**8 sections, in order:**
1. Executive summary
2. Key changes this month
3. Metrics snapshot
4. Incidents and notable alerts
5. Risk register update
6. Evidence checklist
7. Recommended next actions
8. Client decision log

**Tables/fields:**
- Executive summary: Area · Status · Notes
- Metrics snapshot: Metric · Current · Target · Trend · Source
- Incidents: Date · Alert/incident · Severity · Action taken · Current status
- Risk register: Risk · Business impact · Likelihood · Owner · Due date · Status
- Recommended next actions: Priority · Action · Reason · Owner · Due date
- Client decision log: Decision needed · Options · Recommendation · Decision/date

**Named metrics in template:** MFA coverage · admin accounts reviewed · devices missing EDR · critical patches overdue · backup jobs successful · restore tests completed · high-risk sign-ins · phishing/malware blocked [CS: VERIFIED]

### Assumed data sources
No RMM/PSA/security-tool connectors. Users supply pre-formatted JSON: manual aggregate counters, M365 Secure Score data, NIS2 evidence questionnaire, cyber-insurance questionnaire responses, vCISO scorecard/decision tracking. [CS: HIGH — README]

**Disclaimer (verbatim, per README):** "These assets are templates and automation aids. They are not legal, insurance, brokerage, compliance, audit, certification, Microsoft-affiliation, or professional-services advice." [CS: VERIFIED]

### Ingredients offered to the simulation
- QBR agenda section vocabulary (7 sections + timings)
- The "evidence to gather / context to gather" pre-meeting checklist — directly the shape of the operator's data-pull moment in the prototype
- Scorecard rows + register column headers as UI label vocabulary
- Named security metrics as seed-data candidates (MFA coverage, backup success, patches overdue map loosely onto Adlumin/Cove/N-central territory — the mapping itself is Beth's move, not in the source)

---

## Repo 2 — snedea/etop-am-system

**URL:** https://github.com/snedea/etop-am-system
**Access:** Public [CS: VERIFIED]
**License:** ISC per README [CS: HIGH — README claim; LICENSE file not individually fetched]
**Adoption signal:** 0 stars · 0 forks · 2 commits to main [CS: HIGH — repo page as fetched]
**[WOBBLY]** One person's build, unadopted. `.context-foundry/` directory and four parallel pdf-generator variants (base/enhanced/production/ultimate) indicate an AI-assisted solo project. Structure is an ingredient source, not evidence of MSP practice.

### What it is
"ETop AM Intelligence System" — vendor-neutral account-management platform for MSPs. Per README it "automates quarterly business reviews (QBRs), lifecycle planning, security posture reporting, and outcome planning." [CS: HIGH — README]

### Architecture / stack [CS: HIGH — README]
Node.js 20 LTS+ · Express · PostgreSQL 15+ ("vendor-agnostic schema") · pg-boss job queue · PDFKit · OpenAI GPT-4 for narratives ("business-focused QBR content with strict citation requirements")
Flow: Express API → Adapter Layer → PostgreSQL → Insights Engine → OpenAI narrative + PDFKit output

### Data integrations (adapter pattern) [CS: HIGH — README]
- ConnectWise Manage (PSA) — `CW_*` env vars
- Immy.Bot (endpoint/app management) — `IMMY_*` env vars
- Microsoft 365 via Graph API — `M365_*` env vars

Structural parallel for the prototype: PSA + endpoint management + M365 three-source pull ↔ N-central + Cove + Adlumin. The parallel is an observation about shape; the source never mentions N-able tools. [ASSUMPTION if used as more than shape]

### Three composite health scores (0–100 each) — weightings verbatim [CS: HIGH — README]
- **Standards Compliance:** device coverage 20% · Immy compliance 30% · patch compliance 20% · EDR health 15% · M365 Secure Score 15%
- **Risk** (higher = worse): identity risk 30% · email risk 25% · endpoint risk 25% · business modifier 20%
- **Experience:** ticket-per-user trends 25% · repeat issue rate 20% · SLA performance 25% · reopen rate 15% · after-hours incidents 15%

### QBR PDF report — rendered sections, in order [CS: VERIFIED — src/qbr/pdf-generator-production.js fetched]
Cover: "Quarterly Business Review" · "Table of Contents"
1. Executive Summary (+ "Key Metrics")
2. Health Score Dashboard (+ "Standards Breakdown")
3. Client Information (+ "Locations", "Key Contacts")
4. Device Inventory (+ "Devices")
5. User Accounts & Security (+ "User Accounts")
6. Ticket Analysis
7. Controls Compliance
8. Security Posture
9. Risk Register
10. Lifecycle & Refresh Forecast (+ "Budget Forecast")
11. Technology Roadmap
12. Action Plan & Next Steps
Closing: "Client Sign-Off"

**Divergence:** README claims "9-section PDF reports"; the production generator renders 12 numbered sections. Not resolved — possibly README describes a different generator variant. [CS: VERIFIED divergence, unexplained]

### Field-level render detail [CS: VERIFIED — same file]
- Key metrics: Devices · Users · Tickets · Risks · Standards score · Risk score · Experience score
- Client info: Name · Segment · MRR · Locations · Key Contacts
- Device rows: Name · Type · OS · Health Status · Managed status
- User rows: Email · MFA enabled · Risk level
- Ticket rows: Category · SLA met
- Controls rows: Control type · Status (pass/fail) · Evidence
- Risk rows: Title · Impact · Likelihood · Description
- Roadmap rows: Title · Priority · Quarter · Cost range · Description

### Repo tree (as fetched) [CS: VERIFIED]
Root: `.context-foundry/` · `public/` · `screenshots/` · `scripts/` · `src/` · `tests/` · `.env.example` · `Dockerfile` · `docker-compose.yml` · `QUICKSTART.md` · `README.md` · `jest.config.js` · `package.json`
`src/`: `adapters/` · `db/` · `engine/` · `middleware/` · `models/` · `qbr/` · `routes/` · `utils/` · `app.js` · `config.js` · `server.js` · `worker.js`
`src/qbr/`: `narrative-generator.js` · `pdf-generator.js` · `pdf-generator-enhanced.js` · `pdf-generator-production.js` · `pdf-generator-ultimate.js`
Not fetched: adapters, models, db migrations, engine, .env.example. [CS: UNKNOWN — not opened]

### Ingredients offered to the simulation
- 12-section QBR report skeleton (rendered, not aspirational)
- Three-score model with explicit weights — usable as seed-data math for a fake health dashboard
- Three-source integration pattern (PSA + endpoint mgmt + M365) as structural shape for the N-central/Cove/Adlumin pull
- Field-level render lists for generating plausible fake rows (devices, users/MFA, tickets/SLA, risks, roadmap items with cost ranges)

---

## Repo 3 — MykeShale/Executive-Simulation-AI

**URL:** https://github.com/MykeShale/Executive-Simulation-AI
**Access:** Public [CS: VERIFIED]
**License:** No standard open-source license. README states "educational use only (PLP Academy project)"; no LICENSE file visible in the fetched tree [CS: HIGH — repo page + README as fetched; a LICENSE file could exist unshown]
**Adoption signal:** 3 stars · 0 forks · 0 watchers · 13 commits · 0 issues/PRs [CS: HIGH — repo page as fetched]

### MISMATCH FLAG — name does not match content
Despite the repository name, this is **not an executive simulation, meeting simulation, or AI roleplay system**. It is a student machine-learning assignment (PLP Academy, Week 2) that predicts **malaria outbreak risk** from climate variables (temperature, rainfall, humidity) and historical disease counts, using a Random Forest classifier, framed against UN SDG 3. [CS: VERIFIED — repo page and raw README fetched independently; both consistent]
The name/content gap is unexplained — possibly a renamed or repurposed repo. [CS: UNKNOWN]

### Repo tree (as fetched) [CS: VERIFIED]
- `Ethical_research/` — ethics analysis docs
- `Pitch_Deck/` — 5-minute presentation materials
- `malaria-outbreak-ai/` — `malaria_model.ipynb` · `data/climate_disease.csv` · `screenshots/` (feature importance, correlation heatmap, confusion matrix, regional cases)
- `README.md`

### Stack / model [CS: HIGH — README]
Python · Jupyter · scikit-learn · pandas · matplotlib · seaborn. Binary classification; metrics: accuracy, precision, recall, F1. Four-person student team (ML, ethics, docs, comms).

### Ingredients offered to the simulation
**None.** No meeting-prep vocabulary, no simulation mechanics, no persona handling, no data model beyond one climate/disease CSV. Nothing extractable for the QBR-prep prototype. [CS: VERIFIED — based on full README + tree]

**[WOBBLY]** Student coursework; and given the name/content mismatch, worth confirming with Beth that this is the repo she intended — the name suggests she may have been pointed at a different project.

---

## "Offered, not taken" check
- **Repos 1–2:** Public with stated open licenses (MIT with attribution; ISC — both permit reuse, modification, redistribution with license/attribution retention). Published for use. In scope. [CS: VERIFIED public access; license terms per standard MIT/ISC text — LICENSE file texts not individually opened: CS: HIGH]
- **Repo 3:** Public, but "educational use only" with no standard license visible — **not clearly offered for reuse**. Moot in practice: it contains no material relevant to this task, and none was taken. If Beth intended a different repo under this name, re-run the check on the correct one. [CS: HIGH]

## Gaps / what was not fetched
- Northsignal `schemas/` JSON files (would give exact field names for the generators' inputs) — fetchable if the prototype wants schema-level seed data
- etop-am `src/adapters/` (exact fields pulled per vendor) and `src/db/` migrations (actual data model)
- Repo 3 notebook/CSV contents (irrelevant to task)
- Last-commit dates for all three repos
- All extractions mediated by WebFetch's summarizer model; verbatim lists are as returned, not eyeballed in raw source

## Common vocabulary across usable repos (surfaced, not synthesized)
Repos 1 and 2 both independently use: executive summary · scorecard/health score · risk register (Impact/Likelihood/Owner columns) · roadmap/decisions section · action plan with owners and due dates · MFA coverage · EDR/endpoint health · patch compliance · client decision/sign-off.
Repo 3 contributes nothing to this vocabulary (content mismatch — see Repo 3 flag).

---

### Honor check
- Completed: Repo 3 — repo page fetched, raw README fetched (both consistent); prior work — both repo pages, raw READMEs, trees, Northsignal vCISO QBR + monthly report HTML, etop-am src/, src/qbr/, pdf-generator-production.js; license checks all three.
- Skipped: Repo 3 notebook/CSV contents (irrelevant to task); Northsignal schemas/samples/tools contents; etop-am adapters/models/migrations/variant generators.
- Cannot verify: last-commit dates (all three); Northsignal + etop LICENSE file texts; whether Repo 3 tree contains a LICENSE file not shown in fetched page; whether Beth intended a different repo; WebFetch summarizer-mediated quotes not eyeballed in raw source.
- Stats produced: Repo 3 — 3 stars, 0 forks, 13 commits, 0 relevant ingredients. Prior stats unchanged (7 agenda sections, 8 monthly sections, 12 rendered PDF sections vs. claimed 9, three score formulas). None invented.
