# Tabbed/single-scroll "build vs present" report mode — named products

## Looker: Explore vs. Dashboard [CS: HIGH]
- Explore = the ad-hoc analysis surface — choose dimensions/measures/filters/pivots/
  sort without a fixed narrative; for questions still being investigated.
- Dashboard = a stable, reusable "answer" — consumed repeatedly by others once the
  question is settled.
- Named conceptual distinction, not a single-click toggle on the same object.
- https://docs.cloud.google.com/looker/docs/viewing-and-interacting-with-explores
- https://lookercertprep.com/articles/looker-explores-vs-dashboards

## Power BI: Reading view vs. Editing view [CS: HIGH]
- Explicit named toggle on the SAME report object.
- Reading view: interact with existing filters, save selections, cannot add new
  filters or structural changes.
- Editing view: full authoring — add/rename/delete pages, add visuals, set filters at
  visual/page/report level, create refresh schedules, use Q&A to build new visuals.
- Switch via an "Edit" button in the action bar; grayed out if user lacks edit
  permission.
- https://learn.microsoft.com/en-us/power-bi/explore-reports/end-user-reading-view
- https://learn.microsoft.com/en-us/power-bi/create-reports/service-interact-with-a-report-in-editing-view

## Tableau: Presentation Mode [CS: HIGH]
- Toggle via toolbar button, Window menu, or shortcut (F7 Windows / Shift+Cmd+F Mac).
- Hides toolbar/menu chrome, shows only the view plus its legends, filter cards,
  parameter controls, worksheet tabs.
- Dashboard remains interactive in this mode — tooltips, click-actions, filters, and
  parameters all still function.
- Esc exits back to the full authoring workspace.
- https://help.tableau.com/current/reader/desktop/en-us/presentation_mode.htm

## Mode Analytics — three distinct artifacts, not one toggle [CS: HIGH]
- Report Builder: drag-and-drop authoring interface for report components.
- Shareable Report Views: a specific filtered state frozen into a unique URL token —
  "see exactly what you see," without re-authoring.
- PDF Export: single-scroll, point-in-time snapshot document explicitly designed to
  "mimic the experience of viewing a report in Mode."
- https://mode.com/help/articles/report-scheduling-and-sharing/
- https://mode.com/help/articles/report-layout-and-presentation/
