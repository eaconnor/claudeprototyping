# Scout: onboarding/fTUX + governance/control-plane viz inspiration
Pulled 2026-09-03. Read-only web scout. No synthesis — Beth assembles.
Context: two markup-review notes on prototypes/ebr-coworker-005-arc/ebr-app.html needing moodboard material not yet in repo. See prototypes/ebr-coworker-005-arc/DESIGN-REFS.md for Lima general bio/manifesto (already covered — not repeated here).

---

## BUCKET 1 — Delightful onboarding / fTUX (complex B2B tools, not tooltip-carousel)

1. **Superhuman — white-glove onboarding calls**
   [CS: HIGH] — well-documented, cross-referenced across multiple independent sources
   - Source: "Superhuman's Onboarding Playbook" — First Round Review — https://review.firstround.com/superhuman-onboarding-playbook/
   - Also: "Onboarding Lab: How Superhuman and Reforge Craft the First Experience" — https://www.growthmates.news/p/onboarding-lab-how-superhuman-and
   - Claim: every new user in early years got a live 1:1 Zoom walkthrough, not a tour — human-guided, tied to a PMF survey (the "how would you feel if you could no longer use this product" score) that drove product decisions, not just onboarding copy.
   - Relevance: onboarding as relationship/diagnostic instrument rather than UI tour — could map to "bring a real task, get matched" if the matching is framed as a conversation rather than a wizard.

2. **Linear — first-time-user-experience**
   [CS: MEDIUM] — single secondary-source teardown, not cross-verified against a second independent write-up
   - Source: "How Linear welcomes new users" — Medium (@fmerian) — https://fmerian.medium.com/delightful-onboarding-experience-the-linear-ftux-cf56f3bc318c
   - Claim: one input per step, described as "enticing, educational, productive," with "delightful UI details" — workspace setup framed as productive work, not a pre-product tutorial.

3. **Arc Browser — startup + import flow**
   [CS: MEDIUM] — consistent across two independent write-ups but both are user-impression blogs, not Arc's own documentation
   - Sources: LinkedIn post "Onboarding Breakdown: Arc Browser" (Mike Bal) — https://www.linkedin.com/posts/mikebal_onboarding-breakdown-arc-browser-activity-7150139098400198656-D6kO ; "My first thoughts and experiences with the Arc browser" — Medium — https://medium.com/@bastiaanrudolf/my-first-thoughts-and-experiences-with-the-arc-browser-97e3a3a3f6e1
   - Claim: visually pleasing startup screen, direct bookmark/data import; early users also got 1:1 Zoom walkthroughs (same pattern as Superhuman) because the product's interaction model differs enough from Chrome/Gmail that guided orientation drove retention.

4. **Clay — AI-generated first workspace from onboarding survey**
   [CS: MEDIUM] — two independent secondary sources agree on mechanism
   - Sources: "Clay Onboarding Flow: A Screen-by-Screen Teardown" — Supademo — https://supademo.com/user-flow-examples/clay ; "How Clay turns a complex product into an onboarding machine" — https://blog.saasboarding.com/p/how-clay-turns-a-complex-product
   - Claim: welcome survey answers become the context for an AI-generated first workflow ("Claybook") matched to the user's actual stated ICP/use case — not a generic template, named to the user's real target profile. Closest match found to Beth's "bring a real task, get matched to a coworker" model.

5. **Notion — personalized workspace setup**
   [CS: MEDIUM] — single secondary source
   - Source: "How Notion Crafts a Personalized Onboarding Experience: 6 Lessons" — Candu — https://www.candu.ai/blog/how-notion-crafts-a-personalized-onboarding-experience-6-lessons-to-guide-new-users
   - Claim: onboarding branches on stated role/use-case to pre-build a starter workspace rather than dropping the user into a blank page.

6. **Zapier — natural-language automation building**
   [CS: LOW] — could not confirm a specific onboarding-stage "describe your task, get matched to a template" feature; search only surfaced general marketing copy about building automations "by describing what you need." Do not cite this as a confirmed onboarding flow without direct verification on zapier.com.

Not found / not pursued further: Retool onboarding (no search results returned anything specific — noting the gap rather than guessing).

7. **Lemonade — Maya, conversational intake replacing the form** — Beth-named, 2026-09-03
   [CS: HIGH] — core claims consistent across multiple independent sources
   - Sources: "How Lemonade Found A Sweet Spot With AI and Disrupted An Industry" — UXReactor — https://uxreactor.com/lemonade-ai-disrupts-insurance-industry/ ; "How Conversational AI Made Lemonade the Fastest-Growing AI Insurance Company in Pet Insurance" — Perspective AI — https://getperspective.ai/blog/lemonade-case-study-conversational-ai-insurance ; "A Case Study of Agentic AI in Insurance Operations: Lemonade" — Trixly AI — https://www.trixlyai.com/blog/our-blog-1/agentic-ai-insurance-lemonade-case-study-28
   - Claim: Maya asks one question at a time in an ongoing conversation instead of a static form, assesses risk in the background, and issues a personalized quote in under 90 seconds–2 minutes — explains coverage in plain language and can process payment in the same flow. Over 90% of Lemonade's policies are sold this way. [CS: MEDIUM] on the exact "90%" figure — repeated across sources but all appear to trace to Lemonade's own investor/PR materials, not independently audited.
   - Relevance — closest direct analogue found to workstream B/note 8's "bring me your automation ask, get matched": a conversational, one-question-at-a-time intake that ends in a ready, personalized output rather than a form or a template picker. Worth weighing against Clay's approach (item 4 above), which is AI-generated-from-survey rather than live-conversational — different mechanism, same "don't make them fill out a form" goal.

---

## BUCKET 2 — Governance / control-plane / permission-graph visualization

1. **Kiali (Istio service mesh) — live topology graph with policy overlay**
   [CS: HIGH] — vendor's own documentation
   - Source: Kiali Topology docs — https://kiali.io/docs/features/topology/ ; Istio "Visualizing Your Mesh" — https://istio.io/latest/docs/tasks/observability/kiali/
   - Claim: real-time graph of service-to-service traffic (nodes = services, edges = live traffic, color/shape encodes health — red diamonds for errors) with security policy (mTLS) and routing-rule state overlaid directly on the same graph. This is the strongest example found of "a policy/control layer's live relationship to the things it governs," rendered as a network diagram rather than a table.

2. **Wiz Security Graph — typed relationship graph across cloud identities/resources**
   [CS: HIGH] — vendor page + independent AWS engineering blog corroborate the same architecture
   - Sources: Wiz Security Graph — https://www.wiz.io/lp/wiz-security-graph ; "The World is a graph: How Wiz reimagines cloud security using a graph in Amazon Neptune" — AWS blog — https://aws.amazon.com/blogs/database/the-world-is-a-graph-how-wiz-reimagines-cloud-security-using-a-graph-in-amazon-neptune/
   - Claim: every cloud resource, identity, and finding is a node; edges are typed and directional ("can assume," "has access to," "is exposed to internet," "runs on," "contains"). Used to surface attack paths/"toxic combinations" visually rather than via a findings list.

3. **AWS IAM Access Analyzer + ARIA-gv sample — identity/resource graph on Neptune**
   [CS: HIGH — AWS's own sample repo] / [CS: MEDIUM — for the third-party tool below]
   - Sources: AWS sample repo "sample-visualizing-access-rights-for-identity-on-aws" — https://github.com/aws-samples/sample-visualizing-access-rights-for-identity-on-aws ; IAM Access Analyzer product page — https://aws.amazon.com/iam/access-analyzer/
   - Third-party (lower confidence): "IAMGraphViz: Visualizing AWS IAM Permissions with Kuzu" — https://blog.kuzudb.com/post/iamgraphviz/ [CS: MEDIUM]
   - Claim: relationships between users, groups, permission sets, roles, accounts, and resources loaded into a graph database and visualized/queried — direct precedent for "who has permission to use what" as a graph rather than a table.

4. **Spotify Backstage — Software Catalog graph (ownership + dependency)**
   [CS: HIGH] — vendor's own documentation
   - Sources: "Creating the Catalog Graph" — https://backstage.io/docs/features/software-catalog/creating-the-catalog-graph/ ; Spotify's own version — https://backstage.spotify.com/docs/portal/core-features-and-plugins/catalog/creating-the-catalog-graph
   - Claim: every entity (service, system, domain, team, user) is a catalog node; typed relations (`dependsOn`, `ownedBy`, `partOf`) render as a graph. This is the closest match found to the "human orientation surface" ask — an org-level view of what's connected and who owns it, built from the same catalog non-engineers would browse.

5. **Datadog Service Map / New Relic Service Map — topology grouped by ownership**
   [CS: HIGH] — vendor blog + docs
   - Sources: "Introducing the Service Map in Datadog" — https://www.datadoghq.com/blog/service-map/ ; "Visualize service ownership and application boundaries in the Service Map" — https://www.datadoghq.com/blog/service-map-team-application-boundaries/ ; New Relic service maps docs — https://docs.newrelic.com/docs/new-relic-solutions/new-relic-one/ui-data/service-maps/service-maps/
   - Claim: real-time dependency graph, filterable/groupable by team or application — same "who owns what, what's connected" ask as bucket 2b, but for infrastructure rather than headcount.

6. **ChartHop — org chart as permission-scoped graph**
   [CS: MEDIUM] — vendor marketing + docs, not independently reviewed
   - Sources: https://www.charthop.com/ ; Org Chart docs — https://docs.charthop.com/org-chart ; Map view docs — https://docs.charthop.com/map
   - Claim: org chart rendered as a navigable, zoomable graph; what a given viewer sees is scoped by role/permission (sensitive fields like compensation or location only visible to certain roles). Headcount domain, not resource-governance — included because the permission-scoped-view pattern is directly transferable.

7. **Neo4j (Bloom/Aura Explore) — general graph-viz engine underlying identity/access tooling**
   [CS: LOW] — not verified as a finished admin-console product; this is infrastructure other tools build on top of, not a UI reference to screenshot directly. Flagging as an adjacent tool, not a moodboard-ready example.

Not found: no admin/governance/policy dashboard surfaced in this search pass that explicitly cites Manuel Lima or Visual Complexity as an influence. [WOBBLY] — the "Lima-adjacent" framing for bucket 2 is Beth's synthesis to make, not something confirmed to exist in the wild; the network-graph *pattern* (Kiali, Wiz, Backstage) is real, the Lima citation is not.

Not found: no permission-graph visualization surfaced for Okta or Microsoft Entra ID admin consoles in this search pass — search returned only Okta↔Entra federation/config documentation, nothing about how either product visualizes its own permission graph. Say so rather than guess.

---

## BUCKET 3 — Nav architecture: object-based nav + goal-driven finder layer

8. **Capital One — capitalone.com** — Beth-named, 2026-09-03, verified directly (page text read live, not summarized secondhand)
   [CS: VERIFIED] — read the live page directly, 2026-09-03
   - Beth's framing on first mention: "organized around what people want to do/mental models." Checked before citing — the persistent top nav is actually **product-centric**: Credit Cards · Checking & Savings · Auto · Business · Commercial · Benefits & Tools. Not task/goal labels.
   - What *is* goal-based: a secondary "Choose a topic" content layer, goal-framed CTAs ("Find the right card for you," "Find a car you love"), and an explicit **product-finder tool** — its own footnote states results are "based on self-selected user goals," used to narrow credit cards by what the user is looking for (rewards, low intro APR, building credit) rather than by product name.
   - Relevance: real precedent for **object-based primary nav + a goal-driven finder/matcher layer on top of it**, rather than replacing the nav with task labels. Cross-references bucket 1's Lemonade/Maya and Clay entries — Capital One's finder is a third point on the same spectrum (form/criteria-picker vs. Maya's live conversation vs. Clay's survey-then-AI-generate), all solving the same "match me to the right thing without making me browse a catalog" problem. Relevant to both workstream A (nav shape) and workstream B/note 8 (matching flow).
