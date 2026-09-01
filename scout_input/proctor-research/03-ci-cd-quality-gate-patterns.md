# CI/CD Quality Gate Patterns

---

## SOURCE 1 — Danger.js (danger.systems, official docs)

What Danger.js checks: [CS: VERIFIED — from primary source]

**Process/documentation:**
- Changelogs present and updated
- PR metadata (assignees, descriptions)
- Lockfile synchronization with dependency changes

**Code quality:**
- Modified files without corresponding test coverage
- Missing type annotations
- Potentially breaking changes to critical files

**Scale/sustainability:**
- PR size (additions + deletions exceed threshold)
- Build artifact sizes and gzip metrics
- Project consistency

**Rule engine architecture:** [CS: VERIFIED]
- Input: `dangerfile.js` — JavaScript rules that access git metadata and platform data
- Output: four feedback types: `message()` (info), `warn()` (non-blocking), `fail()` (blocking), `markdown()` (rich formatting)
- Delivery: surfaces as PR comments for human review

**Key design principle:** "Stop saying 'you forgot to…' in code review." Danger encodes the rote enforcement so humans focus on substance. [CS: VERIFIED — from GitHub repo tagline]

---

## SOURCE 2 — ReviewDog (GitHub reviewdog/reviewdog)

- Automated code review tool that integrates any static analysis tool [CS: HIGH]
- Filters results by diff — only surfaces issues in changed lines [CS: HIGH]
- Posts findings as PR comments inline [CS: HIGH]

---

## SOURCE 3 — Testkube, "Quality Gates: Automated Quality Enforcement in CI/CD"

Quality gate dimensions: [CS: VERIFIED — from primary source]
- Test results (functional + integration)
- Coverage metrics (percentage thresholds)
- Performance benchmarks (response time, resource usage)
- Security validation (vulnerability scans)
- Compliance rules (organizational + regulatory)
- Approval requirements (reviewer sign-off)

Enforcement pattern: [CS: VERIFIED]
- When a gate fails: pipeline halts automatically
- Only validated code advances when gate confirms all checks pass
- Operates at multiple pipeline stages: pre-merge, pre-deployment, layered

---

## SOURCE 4 — Oleno AI, "Build an Automated QA-Gate: 50+ Quality Checks for Content Pipelines"

Content pipeline quality check categories with weights: [CS: HIGH — commercial blog, not academic]

| Category | Weight | What It Checks |
|---|---|---|
| KB Accuracy | 30% | Retrieval grounding, claim-to-KB match, no invented citations |
| Structure | 20% | Heading hierarchy, section order, paragraph length, narrative completeness |
| Narrative | 15% | Section independence, one-idea-per-section, required elements (TL;DR) |
| Voice | 15% | Branded terminology, no AI-speak, validated CTAs, no hedging |
| SEO | 10% | Schema validation |
| LLM Clarity | 10% | Reading level, alt text |

Pass threshold: 85/100 [CS: HIGH]
Self-correction loop: fail → classify failure type → targeted fix → re-test → human escalation only if loop fails [CS: HIGH]

[WOBBLY] — Commercial vendor content. Architecture is plausible but scoring weights are not independently validated.

---

## SOURCE 5 — GitLab Dangerbot

- GitLab runs Danger as part of its own CI for internal MR review [CS: HIGH]
- Each plugin outputs notifications, warnings, or errors copied to CI job log [CS: HIGH]
- If an error occurs, the CI job fails [CS: HIGH]
