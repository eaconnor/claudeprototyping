# Design references — EBR Coworker arc (register data-viz)

Beth-curated, 2026-08-27. For the risk-register visualization pass.

## Sources
- **Fuzzy Math — Data Security Platform case study** — https://fuzzymath.com/work/case-study/data-security-platform/ — security-dashboard / register UX patterns.
- **Manuel Lima — Publications** — https://www.mslima.com/publications — Beth loves his work. Curator of *Visual Complexity*; author of *The Book of Trees*, *The Book of Circles*.
- **Google Design — Redefining Data Visualization at Google** — https://medium.com/google-design/redefining-data-visualization-at-google-9bdcf2e447c6

## Principles to apply (from Lima + Google, per Beth)
- **Lima's Info-Viz Manifesto:** function, clarity, narrative over decorative art.
- **Lima's visual taxonomy — pick the right layout:** networks · trees · circles (don't default to a table if the data is relational).
- **Google's 6 chart principles:** be honest · lend a helping hand · delight users · give clarity of focus · embrace scale · provide structure.

## Three layers — keep them differentiated (Beth, 2026-08-27)

Do not collapse these into one aesthetic:

1. **Apex marketing** — the landing / go-to-market surface (`landing.html`). Its own visual language; sells the concept.
2. **Apex UI** — the product design system / design vision. **Can be extra-beautiful, especially in data viz** (the risk register lives here). Aspirational; not necessarily what ships today.
3. **What eng is actually building (the real product: "HARNESS")** — the shipped ACP app. Restrained, light, functional. This is the ground truth for IA/naming, distinct from the Apex-UI vision.

**Real HARNESS UI — from Beth's screenshot 2026-08-27** [CS: VERIFIED — screenshot of acp.n-able.dev]:
- Product name **HARNESS** (n-able logo). Light theme, near-black left nav, purple accents. User: Jude Scally.
- Left nav (APP): **Runbooks · Experts · MCP configs · Coworkers · Execution · Value Ledger**.
- Coworker detail (e.g. "AWS quiz maker"): status chips **Tenant · Active · Autonomous**; actions **Edit · Pause · Clone · Archive**.
- Tabs: **Overview · Configuration · Versions · Runs · Audit · Promotion**.
- Runs tab shows **Value → "Time saved: no data yet"** and **Run history → "No runs yet."**

**Implication for this arc:** the invented "console.html" (Automate/Operate/Account nav) is a franken harness — the real IA/naming is HARNESS above. Product *chrome + IA* should mirror real HARNESS (eng reality); *data-viz within it* is where Apex-UI beauty is licensed; *marketing* stays its own track.

## How it maps to the register (grounded in ACP build)
- Findings = **Audit Log** primitive (append-only, dated, linked to Customer). [CS: VERIFIED — Apex Sentient deck + acp-core]
- Evidence trace on a finding = a **ValueLedgerEntry** (execution_id, runbook_version, baseline_source, outcome_status) — "how the numbers were derived." [CS: VERIFIED — value_ledger/models.py]
- Improvement-over-time view = **ValueLedgerRollup** (period totals). Benchmarks = PlatformDefaultBaseline.
- Relationships (Lima networks): finding ↔ area ↔ feeding coworker (Security Tabletop → risk, IR → incidents, Env Health → devices).
