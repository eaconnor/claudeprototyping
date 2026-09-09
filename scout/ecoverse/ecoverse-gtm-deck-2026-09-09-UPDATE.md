# SRC — Ecoverse Product & GTM Strategy – Working Draft.pptx (UPDATED PULL)

**Provenance:** same file as `ecoverse-gtm-deck-2026-09-03.md`, re-pulled 2026-09-09. SharePoint `lastModifiedDateTime`: 2026-09-09T07:41:38Z — the deck was revised between the original pull (2026-09-03) and now, likely reflecting the kickoff meeting Beth just attended.
**What changed (new/materially revised content only — everything else unchanged from the 09-03 pull, see that file for the full original text):**

## NEW — "Emerging Killer-App Hypothesis" slide (this is the new idea Beth flagged)
Section: Mid-market IT and Growth MSPs — "Autonomous endpoint resilience for generalist IT teams."
**The hypothesis:** *"Enterprise-grade security, resilience and compliance outcomes without enterprise-grade complexity, specialist resources or tool sprawl."*
**Killer app claim:** *"AI-powered deep endpoint insight & action. Continuously understand endpoint security & resilience, identify what matters, take governed action and prove the outcome."*

Four pillars:
1. **Deep Endpoint Intelligence** — data as core IP, real-time endpoint visibility (config/exposure/operational state), rich asset/software/health/security data.
2. **N-able AI Strategy** — N-zo understands customer/endpoint context; Coworkers = specialist security/patching/vuln/compliance agents; cross-product intelligence.
3. **Trusted Action** — patch/configure/script/remediate/escalate; deterministic execution, permissions, audit trail; governed runbooks; RBAC.
4. **Prove the Outcome** — exposure reduced, tasks completed/time saved, turnkey compliance, auto-generated reports/evidence.

**Market proof points (explicit competitor synthesis claim):** *"Action1 validates security-led, self-service endpoint operations (patch centric). Automox validates automation-led operations for internal IT (patch centric). Tanium validates real-time endpoint intelligence & agentic actions at enterprise scale. NinjaOne validates operational simplicity for resource-constrained IT teams. Ecoverse potentially combines all four for generalist IT teams."* [CS: HIGH that this is the deck's literal claim — it is a direct quote] [ASSUMPTION — "potentially combines all four" is stated as a synthesis claim, not evidenced; no proof any of the four have failed to combine their own strengths, or that combining is additive rather than diluting each]

Focused market entry: generalist-heavy teams, Medium Lower → Medium Core IT → Emerging MSPs → Growth MSPs, "progressively replace Classic N-sight starting with NCA."

## NEW — "IT Pro Market Assessment | Preliminary Position" slide
Notably more measured than the 09-03 draft: *"We have enough evidence to take a stronger preliminary position. We have not proven product-market fit, but the current evidence supports continued investment and external validation."*
Four legs: identifiable segment, repeated buying behaviour, recognisable pain, capability alignment.
**Preliminary conclusion:** *"Evidence of credible proposition-to-market alignment, not proof of product-market fit."*

## NEW — "IT Pro Market Assessment | Evidence Convergence" slide
Evidence-lens table (analyst/market, customer/segment, competitor behaviour, Ecoverse capability fit, potential differentiation) → working position: *"Ecoverse has plausible market fit with resource-constrained mid-market IT teams, subject to validating the initial wedge and reason to act."*
**Explicitly named as still unproven (direct quote):** *"strongest first segment • pain intensity • coexistence with incumbents • buying trigger • Coworker differentiation • packaging and willingness to pay."*
This list includes, in the deck's own words, the exact thing council/critic/idea-chess flagged as unanswered — "buying trigger" and "Coworker differentiation" are the killer-app question, now explicitly named unproven rather than silently assumed.

## NEW — "IT Pro Pure-Play Benchmarks" slide (Action1 vs Automox)
Direct side-by-side. Table-stakes list: cross-OS patching, vuln remediation, inventory/visibility, deployment, remote access/control, reporting, automation.
**Implication (direct quote):** *"Being good at these capabilities earns the right to compete, but does not differentiate Ecoverse. The 'blue ocean' claim remains unproven because Microsoft, NinjaOne, ManageEngine and others overlap from adjacent categories."*
This is the deck itself now explicitly retracting/flagging the "greenfield"/"blue ocean" framing that the 09-03 draft asserted uncritically — direct self-correction between drafts.

## NEW — "Platform Trajectories" slide
Four vendor trajectories compared (Action1, Automox, ManageEngine, Ecoverse-as-hypothesis) by foundation/expands-through/direction.
**Ecoverse's stated trajectory:** foundation = table-stakes endpoint ops + governed execution + simple acquisition; expands through N-zo guidance, packaged/open Coworkers, cross-workflow orchestration, cyber-resilience assessment, GraphQL/MCP; direction = *"deliver enterprise-grade endpoint outcomes for generalist IT teams without requiring enterprise-grade complexity, specialist resources or tool sprawl."*
**Working trajectory statement:** *"Match the endpoint-operations baseline, then differentiate through AI Coworkers that complete trusted, measurable work."*

## Section 04 capability tables — MATERIALLY CHANGED, no longer blank
The 09-03 draft had status columns "intentionally left blank." The 09-09 draft has real statuses filled in:
- **Platform Admin:** User management "2027 TBC" (Ksenia: 2027 candidate); User permissions "In Dev" (expected 2026); Scope mgmt (co-managed) "Phase 2"; Audit log "In Dev" (arrives 2026); SSO "Done"; Account-level settings "Tbd?"; User-level settings "Done"; Left nav "Minor"; Platform bar "Minor"; Custom branding "Phase 3"; **NEW ROW:** Ability to create Departments "2027 TBC" (Phase 1, "TBC but likely a requirement"); Ability to move devices between Departments — no status yet, flagged dependent on Departments requirement.
- **Trial UX/Onboarding/BizApps:** now shows real statuses — Account creation in SF & conversion "Not started" (BizApps dependency); Account termination "Not started"; Billing of endpoints "Not started" (BizApps dependency); Trial sign-up page "Not started" (website dependency); Trial UX with AI "Not started" ("to be defined and built" — i.e., the AI-powered trial UX the Phase 1 "why we win" slide promises does not exist yet, at all); Purchase self-serve "Not started"; Agent install workflow "Not started" (High/High existing benefit); Network discovery with agent install "Not started" (Phase 1 or 2? TBD); Slick Intune support for deployment "Not started."
- **Core Features:** All three OS patching "High" priority, expected Q1'27; vuln management "High," within timeframe; scripting "High" (needs to finish scheduling); asset inventory "Medium"; software inventory "High" (to be scheduled); Take Control "Medium"; Monitoring/PSA connection "TBC per Taha research."
- **Differentiators:** N-zo "In progress"; N-zo executions (scripting will be there); In-product Coworkers "Green assuming we continue to build out"; Open-platform Coworkers (harness) — no status; Compliance/cybersecurity assessment reports "TBC per Taha research"; GraphQL/MCP/SentinelOne — no status, "TBC per Taha research."
- **NEW TABLE — "Classic N-sight Features Not Offered in the New Product":** Web Protection, Classic Monitoring, Classic Automated Tasks, PSA Integrations per Classic, Like-for-like Classic Reports, Custom URL, IP Address verification — all listed with blank status, i.e. a live gap-list of things existing N-sight customers lose, not yet resolved.

**Read this update against the 09-03 idea-chess board's A6 finding:** the 09-03 board (via Jira) found Ecoverse already has live customers and shipped features ahead of what the deck's blank tables implied. This 09-09 revision fills in the tables with real, mostly-unbuilt statuses ("Not started" dominates Trial UX/Onboarding) — meaning the *strategy-vision* capability list (full self-serve trial, billing, account creation) is genuinely mostly not built, even though the *narrower current Ecoverse* (patch, nav, permissions, policy tags) is live. This confirms rather than resolves the HOLE1 scope-mismatch finding: two different things share the name "Ecoverse," and this update makes the vision-scope one's non-built status explicit and honest, which is progress.

## NEW — "Market Position | Operating-Model Continuity" slide
Self-managed → MSP-assisted → Co-managed → MSP-led, same platform/data/automations/security context throughout.
**Positioning framed explicitly as modest:** *"A risk reducer and expansion story, not a unique breakthrough claim: customers can change how IT is delivered without changing the technology foundation."*

## UNCHANGED — still present, not yet reconciled with the new Killer-App Hypothesis slide
- The original margin note is still literally in the deck: *"What is the Killer app that motivates a swap off of Ninja>> Leapfrog then with AI coworkers – but messaging is important here so as not to make technician fear for their job."* [CS: VERIFIED — still present verbatim] This means the new Killer-App Hypothesis slide has NOT yet been reconciled back into the ICP/evidence slide that still carries the old open question — the deck hasn't yet closed its own loop between the new hypothesis and the old unanswered margin note.
- The "Does this cohort switch to ACP?" question is also still present, unresolved.
- The "ITP is more greenfield" scratchbook line is still present, sitting uneasily next to the new slide that explicitly says *"the 'blue ocean' claim remains unproven."* The deck now contradicts itself in two directions simultaneously on the same question.
