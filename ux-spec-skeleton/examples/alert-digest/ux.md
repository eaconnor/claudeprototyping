---
artifact: ux.md
kind: main
project: Overnight alert digest (fictional example)
gate: 1
owner: "EXAMPLE — no real owner"
research_check: "UNASSIGNED"      # a legal answer. A MISSING field is not.
findings: findings.yaml

# PROCEED-FLAGGED, not PROCEED: the evidence here is real enough to work from and
# not strong enough to claim validation. That is the honest state of most work,
# and naming it is what lets the work continue without lying about it.
confidence_regime: PROCEED-FLAGGED
proceed_because: "A worked example exists to be read and run. Its value does not
  depend on its fictional evidence being strong."
machine_behavior: "Treat every claim here as illustrative. Never cite this file
  as evidence about real people. Do not copy its findings into another project."
---

# The overnight alert digest — Gate 1

> **FICTIONAL.** Every participant, company and number is invented. This file
> exists to be run against, not believed.

## 1. The problem, and for whom

Technicians at managed-service firms under about 15 staff begin the day with a
batch of alerts raised overnight. Most need no action. The queue is worked
newest-first, so an alert that matters can sit behind an hour of ones that do
not — and nobody has decided it should be that way; it is the order the list
arrives in.

**Who this is true of:** technicians who personally work an overnight queue at
small firms. Not their managers, who see the queue as a number. Not large firms
with a night shift, where the queue never accumulates.

**What would show this is the wrong problem:** alert volumes pulled from
monitoring logs show the overnight batch is no larger than the daytime flow, or
observed technicians re-order by severity without being asked to.

## 2. Top tasks

1. Clear the overnight queue without missing the one that mattered.
2. Know, at a glance, whether anything overnight needs a client told.
3. Not re-read the same non-event every morning.

## 3. Open items

Held in `OPEN.md` while being worked, and in the Intent Spec's open-questions
section once the contract acknowledges proceeding despite them. Not restated
here — three copies of an open question is two too many.

## Evidence

> Each entry is an **interpretation made in this file**, pointed at the
> `findings.yaml` row it rests on. The check recomputes the ceiling from that
> row's `claim_type` and `population_fidelity` and compares it to `asserted_at`.
>
> **E-02 is a deliberate overclaim, left in on purpose.** It asserts HIGH on a
> row that caps at MEDIUM. `./check-gates.sh` must FAIL and name it. If the run
> comes back clean, the install is broken — that is the actual test.

- [x] E-01 · Technicians work the overnight queue newest-first and do not re-order by severity
  - rests_on: triage-order-is-recency-not-risk
  - asserted_at: HIGH
  - stance: accepts
- [ ] E-02 · The overnight batch is large enough that volume is itself the problem
  - rests_on: overnight-alerts-arrive-in-bulk
  - asserted_at: HIGH
  - stance: accepts
- [x] E-03 · A digest is unlikely to hold attention past the first week
  - rests_on: digests-get-ignored-after-a-week
  - asserted_at: HIGH
  - stance: accepts
- [ ] E-04 · "Technicians want one dashboard" is treated downstream as a stated user need
  - rests_on: technicians-want-one-dashboard
  - asserted_at: LOW
  - stance: disputes
  - handling: the row's own provenance_note — it is a solution in a need's grammar, not a need
- [ ] E-05 · The supplier's 40% time saving is carried as support for the business case
  - rests_on: vendor-claims-digest-saves-time
  - asserted_at: LOW
  - stance: disputes
  - handling: recorded so it stops travelling. A number with no method is not weak evidence

**Read E-01 against E-03.** Both are HIGH, both rest on observed behaviour, and
they point in opposite directions: the queue really is worked by recency, *and*
digests really do get ignored. That is not a contradiction to resolve before
starting. It is the shape of the problem — and it suggests the answer is a queue
that opens where it left off rather than a mail-out. Two sourced findings
disagreeing caps what may be claimed; it does not stop the work.

## UX Acceptance Criteria

Authored here, and inherited forward by every later gate. Unticked is fine and
often correct. Dropping one removes a user need from the chain without anyone
deciding to.

- [ ] UXI-01 — The highest-severity overnight item is reachable without the technician re-ordering anything · rests_on: triage-order-is-recency-not-risk
- [ ] UXI-02 — Clearing a non-event takes one action and does not resurface it the next morning · rests_on: overnight-alerts-arrive-in-bulk
- [ ] UXI-03 — Anything requiring a client to be told is distinguishable from anything that does not, before opening it
- [ ] UXI-04 — Returning to a partly-worked queue resumes where it stopped · rests_on: digests-get-ignored-after-a-week

## Acceptance Criteria — Gate 1: Do we understand the problem?

- [ ] G1-01 — The problem names a population it is true of, and one it is not · verified_by: a human reads §1 and finds both
- [ ] G1-02 — The problem states what would show it is the wrong problem · verified_by: a human finds a falsifier in §1
- [ ] G1-03 — Every claim about users in this file resolves to a findings row · verified_by: ./check-gates.sh
- [ ] G1-04 — No claim asserts above its evidence ceiling · verified_by: ./check-gates.sh — **currently FAILS on E-02, on purpose**
- [ ] G1-05 — `owner:` and `research_check:` are different fields and both are answered · verified_by: ./check-gates.sh
