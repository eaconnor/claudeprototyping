---
feature: "PageRank Search"
gate: 30
owner: "Beth (eval fixture)"
problem_statement: "Existing search engines (Yahoo, AltaVista, Excite) rank results by keyword density and paid placement; results are low-quality and gameable by spam. [D]"
okr_objective: "Organize the world's information and make it universally accessible."
okr_key_result: "Search result relevance measurably beats incumbents on blind comparison. [?]"
counter_metric: "Crawl/compute cost per query must not exceed what an ad-free or lightly-monetized product can sustain. [?]"
idea_score: null
evidence_sources: ["contemporaneous trade press on search engine quality complaints [D]", "founder observation, unverified [A]"]
status: "draft"
---

## Gate 1 — Problem
Search engines in 1998 are widely criticized for irrelevant results driven by keyword stuffing and paid placement rather than relevance. [D] Two Stanford grad students have built a ranking algorithm (PageRank) that scores pages by the link structure other pages create pointing to them, treating a link as a vote of quality. [R — internal technical work, not yet externally validated]

## Gate 2 — Right thing
Mission-level bet: better search organizes information better than incumbents, independent of near-term revenue. No monetization model exists yet. [A] Whether "better relevance" converts to a durable business, or just a better free tool competitors copy, is untested. [?]

## Gate 3 — Built right
No ad product yet. Infrastructure (crawling, indexing) at web scale is unproven at the cost structure required to stay free. [?] Team is two people, no enterprise sales function, no distribution deal with a portal. [D]

## Failure modes
1. No monetization path if search stays purely organic and users resist ads on a "objective" results page.
2. Crawl/compute costs scale faster than any revenue model can support at web scale.

## What's missing
- Revenue model. [?]
- Evidence users prefer relevance over "free stuff" portals bundle (email, news) that currently drive traffic. [?]
