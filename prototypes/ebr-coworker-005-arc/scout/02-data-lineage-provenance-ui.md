# Data lineage / provenance UI with interactive drill-down — named products

## dbt Explorer / dbt Catalog (dbt Labs) [CS: HIGH]
- Interactive, real-time DAG of the full project.
- Click any node (model, snapshot, source) → shows last-run status, materialization
  strategy, owner, documentation inline.
- dbt Catalog extends this end-to-end: source → transformation → dashboard/AI endpoint,
  with metadata surfaced at each node.
- https://docs.getdbt.com/blog/dbt-explorer
- https://www.getdbt.com/product/dbt-catalog

## Tableau "Explain Data" [CS: HIGH mechanism / CS: MEDIUM detail]
- Click a mark in a visualization → tool returns statistical explanations for why the
  value is what it is; requires "Run Explain Data" permission.
- Ranked list of contributing/explanatory fields — this specific detail is [CS: MEDIUM],
  from general product knowledge, not re-confirmed verbatim in this pull.
- https://help.tableau.com/current/pro/desktop/en-us/explain_data.htm
- https://help.tableau.com/current/online/en-us/explain_data_basics.htm

## Tableau data-source Lineage tab [CS: HIGH]
- Upstream/downstream field lineage view.
- Integrates "Ask Data" Lens info directly into the lineage pane.
- Field-level descriptions surfaced inline on hover/click.
- https://help.tableau.com/current/online/en-us/whatsnew_previous_versions_online.htm

## DataHub [CS: HIGH]
- Interactive column-level lineage graph.
- Filter by owner or time window.
- Drill from table-level down to individual column-level transformations, across
  platforms/tools.
- https://datahub.com/products/data-lineage/

## Observable notebooks [CS: HIGH]
- Reactive dependency-graph model: editing one cell auto-recomputes every dependent
  cell — explicitly compared (by Observable itself) to Excel's recalculation model.
- "Observable Inputs" — sliders, dropdowns, editable tables, text inputs — let a
  viewer manipulate live data directly in-browser, not just view a static chart.
- https://observablehq.com/@observablehq/notebooks-cells
- https://observablehq.com/documentation/notebooks/

## Power BI Decomposition Tree [CS: MEDIUM]
- Interactive hierarchical drill tree — each branch is a live breakdown of a measure
  by a chosen dimension.
- Includes an "AI splits" / high-value auto-split suggestion feature (from general
  product knowledge — not independently re-verified in this search pass).
- https://inforiver.com/blog/inforiver-analytics-plus/power-bi-decomposition-tree-root-cause-analysis/
- https://www.cdoadvisors.com/2019/11/13/root-cause-analysis-with-power-bi-decomposition-tree/

## ThoughtSpot Spotter + automated change analysis [CS: HIGH]
- Natural-language query interface; drills into live data.
- Auto-generates "why did this metric change" highlights directly on Liveboards —
  moves from "what happened" to "why" without manual query-building.
- https://www.thoughtspot.com/data-trends/analytics/root-cause-analysis

## Excel / R pivot-table interaction pattern [CS: VERIFIED]
- Not a single named product — a ubiquitous, well-documented interaction pattern.
- Drag fields to rows/columns/values; live recompute on every change; double-click a
  cell to drill through to the underlying source rows.
- Relevant as the baseline mental model Beth referenced ("massaging a pivot table").
