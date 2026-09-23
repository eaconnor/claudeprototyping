# Scout: expanded tool moodboard — verified UI screenshots

Pulled 2026-09-23. Read-only web scout. No synthesis — Beth assembles.
Expands `workflow-builder-inspiration-2026-09-23.md` (n8n, Zapier Canvas, Make, Retool Workflows, LangGraph Studio, Temporal UI, Airflow, Windmill, Flowise, Gainsight/Kapta/Slideform/Cassidy) — this file does NOT re-verify those claims, only adds new products + hunts real screenshot image URLs for a visual moodboard.

**Verification method:** every image URL below was located by fetching the actual page (not just a search snippet) and checking that the image sits inline in article/docs body content, matches vendor alt-text describing real UI, or is hosted on a known asset CDN pattern (Ghost blog storage, Sanity CDN, Webflow CDN, Microsoft Learn media folder, GitHub user-images). No og:image / twitter:image meta tags were used as a source.

**Known risk on two entries below (flagged inline):** Vanta's images are Intercom-hosted **signed URLs with an expiry parameter** — they may 404 by the time this file is opened again. The Activepieces GitHub image URL carries a JWT token in the query string with the same class of risk. Re-verify both before dropping into Figma if this file is more than a few weeks old.

---

## THREAD A — workflow-builder / orchestration UIs (beyond the prior dossier)

1. **Activepieces** — open-source Zapier/n8n alternative, AI-agent steps + deterministic automation in one flow
   Image: `https://private-user-images.githubusercontent.com/1812998/246954877-76c97441-c285-4480-bc75-30a0c73ed340.png` (from github.com/activepieces/activepieces README)
   Why notable: reviewers specifically call out that the builder "feels like a premium SaaS" despite being open-source — a rare case of an OSS workflow tool with above-category visual polish.
   [CS: MEDIUM — outside training window risk] — image confirmed inline in the official GitHub README, but the URL is a GitHub user-images link carrying an authorization token in the query string; these can go stale. Re-verify before use.

2. **Tray.ai (Tray Builder)** — low-code integration/automation platform, "clicks-or-code" workflow editor
   Image: `https://tray.ai/documentation/images/releases/features/tray-new-ui/new-tray-ui.png`
   Why notable: 2026 redesign added breadcrumb nav + collapsible left menu specifically to manage workflows and data tables from one screen — a direct precedent for a single-surface "manage the whole review, not just one flow" pattern.
   [CS: MEDIUM] — vendor documentation page confirmed to reference this image at this path; not independently re-fetched as a raw binary in this pass.

3. **Camunda Modeler** — BPMN process modeler, before/after redesign case study
   Images:
   - Before: `https://cdn.sanity.io/images/12wkat9h/development/66aa3aad5ea3af4859f851c4a6d466d086280da0-452x260.png`
   - After (simplified canvas): `https://cdn.sanity.io/images/12wkat9h/development/51c275093dc432917fca223ee74c868f930a43cb-808x482.png`
   - Form-linking icon detail: `https://cdn.sanity.io/images/12wkat9h/development/ec831784a3d1c73b33dd93b5868bd0eda1c9e773-832x536.png`
   - Append-element context menu: `https://cdn.sanity.io/images/12wkat9h/development/cbc7dcad2e82151189809bffe6cfd9a41390afa1-705x465.png`
   Source article: "Start Modeling Faster with the New Simplified Modeling Canvas" — https://camunda.com/blog/2024/02/model-faster-simplified-modeling-canvas/
   Why notable: vendor's own before/after redesign story — too many simultaneous options collapsed into a hover-triggered icon popup. Directly useful as a "reduce on-canvas chrome" reference.
   [CS: HIGH] — vendor design blog, image URLs confirmed inline in article body via direct fetch.

4. **Microsoft Power Automate — cloud flows designer**
   Image: `https://learn.microsoft.com/en-us/power-automate/media/flows-designer/designer-overview-numbers-borders.png` (relative path `media/flows-designer/designer-overview-numbers-borders.png` on the docs page; also see companion screenshots on the same page: `drop-zone.png`, `tools-numbers.png`, `pin-result.png`, `designer-differences-new.png` vs `designer-differences-classic.png` — same folder)
   Why notable: Microsoft's own numbered/annotated screenshot of the canvas — useful as an anti-pattern/pattern reference for how much chrome (14 labeled UI zones) a mature enterprise flow designer accumulates. The side-by-side new-vs-classic designer comparison image is a concrete "modernization deltas" reference.
   [CS: HIGH] — Microsoft Learn official docs, alt-text on every image explicitly says "Screenshot of..." confirming real UI captures, not marketing art.

5. **Bubble — Workflow tab (2024 redesign, beta)**
   Image: `https://storage.ghost.io/c/c8/0c/c80ce826-734b-44fa-90f7-43d0deb4f5bc/content/images/2024/10/Workflow-tab--beta-.png`
   Source: "Session Recap: The Future of Bubble's Editor" — https://bubble.io/blog/bubblecon-2024-editor-workflow-tab/
   Why notable: redesign specifically added folders + view-by-event-type to an already-dense no-code workflow canvas — a named "neater workspace" goal, same problem class an EBR flow with many steps will hit.
   [CS: HIGH] — vendor blog, Ghost CMS asset storage, image described consistently with body text.

**Not found in this pass (named, not guessed):** Node-RED flow editor (docs/tutorial pages have no inline screenshots, only JSON flow examples), Salesforce Flow Builder (Salesforce Help TOC page has no embedded images; Trailhead/UnofficialSF not checked this pass), HubSpot Workflows (only Dribbble concept-design results, not the real product UI), ServiceNow Flow Designer (docs page has a placeholder clock-icon asset where the real screenshot should be), Coda and Notion Automations (help docs described in text only, no image located), Appsmith Workflows (docs page resolved to a broken/relative placeholder path, not a real URL). [CS: LOW — outside training window] applies to the possibility that any of these shipped a screenshot after this search's effective coverage.

---

## THREAD B — "delightful" / modern tools, B2B-ops-and-MSP-adjacent vs. general prosumer

### B2B-ops / ITSM / MSP-adjacent (ticketing, monitoring, compliance, incident response)

6. **Incident.io — incident timeline editor**
   Image: `https://cdn.sanity.io/images/oqy5aexb/production/1483f216bb35569018332e7cd17b7a5c41daa85f-2954x2090.png`
   Source: "Tell the full story with your incident timeline" — https://incident.io/changelog/tell-the-full-story-with-your-incident-timeline
   Why notable: left-panel activity log + right-panel timeline-under-construction, click-to-add events — a clean, sourced pattern for "raw activity log → curated review narrative," directly relevant to an EBR that has to turn a stream of MSP activity into a reviewable story.
   [CS: HIGH] — vendor's own changelog post, image hosted on Sanity CDN, high-res (2954x2090) consistent with a real product capture, not a marketing card.

7. **Better Stack (Better Uptime) — monitors dashboard**
   Image: `https://cdn.prod.website-files.com/5e9dc792e1210c5325f7ebbc/64354becc281f14657670b2b_coA7KHLQAcEQkvE0kV1gM91Fw4hqdDZY1jVC1LP6k00.avif`
   Source page: https://www.saasframe.io/examples/better-uptime-monitors-dashboard (SaaSFrame UI-pattern gallery, sourced from the real product)
   Why notable: reviewers specifically cite this category (uptime/monitoring dashboards) as "among the most polished" in an otherwise dry observability space — useful direct MSP-monitoring comparison.
   [CS: MEDIUM] — third-party UI gallery, not the vendor's own site; image itself reads as a real dashboard capture (charts/metrics/tables), but sourced one hop removed from Better Stack.

8. **Vanta — Trust Center editor**
   Images (six, all signed/expiring Intercom URLs — see risk note at top of file):
   - `https://downloads.intercomcdn.com/i/o/t4a8cs4z/2609578728/e4f393aac1e19931a24178230a7c/image.png?expires=1790164800&signature=...`
   - `https://downloads.intercomcdn.com/i/o/t4a8cs4z/2609578844/4c81a2b31089081280e79488f4c7/Trust-2BCenter-2BEditor.png?expires=1790164800&signature=...`
   - three more at the same host covering Resources tab, Access requests, and data-deletion request UI
   Source: Vanta's own help center — https://help.vanta.com/en/articles/11345469-vanta-trust-center
   Why notable: compliance-automation category with a documented reputation for clean UI in an otherwise checkbox-heavy space (SOC 2 / ISO 27001 tooling) — directly comparable to an EBR tool that also has to make audit/compliance-adjacent data presentable.
   [CS: MEDIUM] — vendor's own help article, but URLs are signed with an expiry timestamp; treat as time-limited, re-fetch the article directly if the links are dead.

9. **Datadog — dashboard creation UI**
   Image: `https://docs.dd-static.net/images/dashboards/create-dashboard.eb5fec8e46e09ec3bb248f78c11453c3.png`
   Source: https://docs.datadoghq.com/dashboards/
   Why notable: Datadog is the incumbent "ugly-enterprise-but-functional" monitoring reference point most MSP engineers already know — useful as an anti-pattern/baseline comparison rather than aspirational, unlike Better Stack.
   [CS: HIGH] — official docs, dedicated static-asset CDN (docs.dd-static.net), filename matches page content ("create-dashboard").

**Not found in this pass:** PagerDuty's rumored 2026 web-UI refresh (blog post URL 404'd; no working alternate found), OpsLevel and Cortex (internal developer portal scorecard UIs — text-only descriptions, no screenshots located), Port (only Webflow-hosted marketing/illustration graphics found, none confirmed as real product UI — excluded rather than mislabeled), Grafana (docs pages describe sharing/screenshotting a dashboard but embed no dashboard image themselves), ServiceNow Flow Designer (see Thread A).

### General prosumer / consumer — delightful but not MSP-specific (useful moodboard material, label distinctly)

10. **Linear — command menu (Cmd+K)**
    Image: `https://webassets.linear.app/images/ornj730p/production/1f63e56c54fbc6f76a636249cabe6df254ddc04e-1244x882.png?q=95&auto=format&dpr=2`
    Source: Linear's own changelog — https://linear.app/changelog/2019-12-18-new-command-menu
    Why notable: commands grouped by current context/view rather than one flat list — the specific, sourced UX device behind Linear's "get anywhere in two keystrokes" reputation. Linear itself sits closer to MSP-adjacent (issue tracking used by IT/dev teams) than pure consumer — noting the overlap rather than forcing a clean bucket.
    [CS: HIGH] — vendor's own asset CDN (webassets.linear.app), official changelog post.

11. **Superhuman — command palette design**
    Images (from Superhuman's own engineering/design blog):
    - `https://storage.ghost.io/c/c7/8e/c78e4b36-4930-4765-917f-f40bc2da20ee/content/images/2021/10/Command-Palette.png`
    - `https://storage.ghost.io/c/c7/8e/c78e4b36-4930-4765-917f-f40bc2da20ee/content/images/2021/10/Screen-Shot-2021-10-06-at-8.58.44-AM.png`
    - `https://storage.ghost.io/c/c7/8e/c78e4b36-4930-4765-917f-f40bc2da20ee/content/images/2021/10/superhuman-snippets.gif`
    Source: "How to build a remarkable command palette" — https://blog.superhuman.com/how-to-build-a-remarkable-command-palette/
    Why notable: this is a rare case of a vendor publicly writing their own command-palette design rationale (ranking logic, alias matching, visual weight) rather than just shipping the feature — strong source if Beth wants the reasoning behind the pattern, not just the picture.
    [CS: HIGH] — vendor's own design blog, Ghost CMS asset storage, screenshots match body-text descriptions exactly.

12. **Attio — CRM dashboard / table views**
    Images (via saasui.design UI-pattern gallery, hosted on Sanity CDN):
    - Dashboard: `https://cdn.sanity.io/images/alowdh95/production/44203359339629ce5c5301ee05bbfec713a99ac9-1974x1080.png`
    - Table view: `https://cdn.sanity.io/images/alowdh95/production/ca76eeb59ba7328201a141d8b1f07af575148de2-1974x1080.png`
    Source page: https://www.saasui.design/application/attio
    Why notable: repeatedly cited across independent reviews as "Notion-like" — a modern, dense-but-legible table/dashboard hybrid, worth comparing against an EBR tool that will also need to show dense account data without feeling like a spreadsheet.
    [CS: MEDIUM] — third-party UI gallery, one hop removed from Attio itself; high-res images consistent with real product capture.

13. **Arc Browser — sidebar + dev bar + built-in screenshot tool**
    Images:
    - `https://knaap.dev/_astro/arc-browser-screenshot.BD7qh4uu_1a31Ck.png`
    - `https://knaap.dev/_astro/arc-dev-bar.DwmwxZrc_ZhRRPc.png`
    - `https://knaap.dev/_astro/arc-screenshot-tool.YPtKWWUt_1aIqLH.png`
    Source: "My thoughts on Arc, from the perspective of a developer" — https://knaap.dev/posts/arc-browser-review-from-the-perspective-of-a-developer/
    Why notable: independent (non-vendor) developer review with real captured screenshots of sidebar compression and the built-in element-snapping screenshot tool — useful "space-efficient chrome" reference, purely consumer/prosumer, no MSP relevance claimed.
    [CS: MEDIUM] — independent blog (Astro-generated static site), not vendor-sourced; screenshots described consistently with known Arc features.

14. **Raycast — Screenshots settings pane**
    Image: `https://fz1sd71lwhbqy6sh.public.blob.vercel-storage.com/raycast/images/app/basics/mac-settings-screenshot-columncount.png`
    Source: Raycast's own manual — https://manual.raycast.com/screenshots
    Why notable: **weaker entry, flagged rather than oversold** — this only captures a settings sub-panel (grid column-count control for the Search Screenshots command), not Raycast's flagship command-palette hero view. Included because it's a confirmed real vendor screenshot; the more iconic command-palette shot was described in a design-teardown doc (VoltAgent/awesome-design-md) but that file contained no actual image URLs, only prose description.
    [CS: MEDIUM] — vendor's own manual, real screenshot, but not the visually strongest artifact for this product; do not treat as representative of Raycast's full visual identity.

**Not found in this pass:** ClickUp Automations builder (help article 403'd; product page text-only), monday.com automation recipe builder (new builder is in closed beta per monday's own community post — no public screenshot yet), Grafana (see Thread A note), Coda/Notion (see Thread A note).

---

## [WOBBLY] flag on this pass as a whole

Sourcing skews toward whichever vendors/products keep real screenshots in their own docs, changelogs, or design blogs (Microsoft, Camunda, Superhuman, Linear, Vanta, Datadog, Incident.io) versus products whose current marketing has moved to auto-generated OG cards or gated screenshot galleries (Salesforce, HubSpot, ClickUp, monday.com, ServiceNow, Grafana, PagerDuty, Cortex, OpsLevel). That absence is itself information — it correlates loosely with which vendors invest in public design-writing culture — but the sample is not large enough to state that as a finding, only to name it as a pattern worth Beth's own read.

Third-party UI-pattern galleries (SaaSFrame, saasui.design) were used for Better Stack and Attio because vendor-first sourcing came up empty; both are one hop removed from the vendor and should be read as "gallery curator's crop of the real UI," not "vendor-endorsed screenshot."
