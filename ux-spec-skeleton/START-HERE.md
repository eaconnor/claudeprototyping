# START HERE

There are twenty-odd documents in this repo. You need three of them to begin.

This page exists because "which file do I open?" had four plausible answers and no stated
order. Read this one, then go where it sends you.

---

## Before anything else: two things that will otherwise confuse you

**1. This ships red. On purpose.**

Clone it, run the checks, and most of them exit non-zero. Nothing is broken. A fresh
skeleton has no owners, no evidence and no decisions, and every script says so rather than
passing quietly:

Exit codes below were run against a fresh clone on 2026-09-22, not recalled:

| script | fresh-clone exit | what it means |
|---|---|---|
| `check-gates.sh` | **1** | the gate files declare `confidence_regime: BLOCKED` — nothing is decided yet |
| `check-roster.sh` | **33** | nobody is named yet, and `EVIDENCE_BASIS` has not been answered |
| `check-blocked.sh` | **2** | one open decision is waiting for a person |
| `check-evidence.sh` | **28** | no evidence home beyond the blank template |
| `check-eng.sh` | **12** | nothing is being built, so the harm gate could not be *evaluated* — which is not the same as passing, and the code is distinct so CI cannot confuse them |
| `check-claims.sh` | **1** | `ux.md`'s `## Evidence` section still holds its `‹finding id›` placeholder. A placeholder is not an answer |
| `check-drift.sh` | **22** | the gate files declare `drift: FRESH` while the constitution they are built from has moved. The loudest code in the suite, and the one most people hit first |
| `check-human.sh` | **27** | the generated `STATUS` fence does not match the spine. Fix with `./check-human.sh --write` |
| `check-condens.sh` · `check-never.sh` · `check-trace.sh` | **5** | **cannot evaluate** — no registered artifacts, no build, no `INTENT_SPEC`. Read this as "nothing was looked at," never as "nothing was wrong" |
| `check-judgment.sh` · `check-skills.sh` · `check-value.sh` · `check-waivers.sh` | **0** | genuinely clean: no unfilled judgment slot contradicts its own regime, no registered skill is missing, no cost register is malformed, no waiver is outstanding |

That is all fifteen scripts. Four of them pass on a fresh clone and eleven do not, which is
the correct ratio for a repo where nothing has been decided.

**A green run on an empty repo would be the bug.** The whole apparatus exists to stop
absence reading as approval. `EXIT-CODES.md` has the full table, one code per kind of
wrong — and note that exit `5` there is shared by ten scripts for one meaning: *I could not
evaluate this.* Treating a `5` as a pass is the single most common way this apparatus gets
defeated, because "no violations found" and "no violations looked for" print almost
identically.

**2. You probably already have an Intent Spec. This bolts onto it — and is not wired to it yet.**

The Intent Spec is a separate, established document: the contract, signed, holding what
gets built and what must be true to ship. Nothing here replaces it or competes with it.

What this adds is the layer *upstream* of it — what we actually know about the people we are
building for, and how strong those claims are allowed to be. Neither Spec Kit nor the
Intent Spec has anywhere for that, which is why it currently lives in Confluence and Figma
where nothing in the repo can reach it.

**Honest status:** the two are wired here by convention — `INTENT_SPEC` in `project.conf`,
and `traces_to:` fields pointing at `§5`. In your real repository they are not connected at
all. That connection is the thing to test, and it has not been done.

---

## The first hour

```bash
# 1. Is the toolkit actually here?
ls project.conf check-gates.sh templates/

# 2. What does an empty project look like? Read the output, do not fix it yet.
./check-gates.sh; ./check-roster.sh; ./check-blocked.sh

# 3. What does a FILLED one look like? This is the important step.
cd examples/alert-digest && ../../check-gates.sh; cd ../..
```

Step 3 is the one that teaches the mechanism. It fails on purpose:

```
FAIL E-02 — asserts HIGH. overnight-alerts-arrive-in-bulk is STATED_ATTITUDE / primary
     fidelity, which ceilings at MEDIUM.
```

A claim asserted HIGH resting on evidence that caps at MEDIUM. **If that run comes back
clean, your install is broken** — a green run proves nothing, that failure is the test.

Then:

```bash
# 4. Set up your own project. This asks questions; it does not answer them for you.
#    Nine of them, and "we made it up" is a complete answer to the last one.
/ux-kickoff
```

---

## Reading order

**Read these three. Skip everything else until you need it.**

| # | file | why |
|---|---|---|
| 1 | **this page** | orientation |
| 2 | [`QUICKSTART.md`](QUICKSTART.md) | fifteen minutes to a working setup. Explicitly does not require reading anything else |
| 3 | [`examples/alert-digest/`](examples/alert-digest/) | the only filled example. Five findings from LOW to HIGH, one arguing against its own project |

**Then, when the question comes up:**

| if you are asking | read |
|---|---|
| "our process is already settled, can we skip the RACI walkthrough?" | [`README-SKINNY.md`](README-SKINNY.md) — yes, and this is how |
| "what is all this for?" | [`README.md`](README.md) |
| "I want to drive every script by hand once" | [`TRY-IT.md`](TRY-IT.md) — the human-facing walkthrough |
| "a script exited 22 and I don't know what that means" | [`EXIT-CODES.md`](EXIT-CODES.md) |
| "who is supposed to do what?" | [`ROLES.md`](ROLES.md) |
| "what can't be automated?" | [`WHAT-ONLY-HUMANS-DO.md`](WHAT-ONLY-HUMANS-DO.md) |
| "a gate is red and we need to ship anyway" | [`WAIVERS.md`](WAIVERS.md) — gates require a signature, they do not stop work |
| "what goes wrong with this, honestly?" | [`HAZARDS.md`](HAZARDS.md) |
| "what recurring meetings does this imply?" | [`RITUALS.md`](RITUALS.md) |
| "how do I show this was worth it?" | [`VALUE.md`](VALUE.md) |
| "I'm in sales/CS/support and I have evidence" | [`CONTRIBUTE.md`](CONTRIBUTE.md) |

**Registers — you write in these, you don't read them cover to cover:**
`OPEN.md` (your open decisions) · `EVIDENCE.md` (where your research lives) ·
`MANIFEST.md` (source hashes) · `SIGNOFF.md` (signatures) · `findings.yaml` (the evidence
layer, ships empty with instructions).

**Not yours:** [`TOOLKIT-OPEN.md`](TOOLKIT-OPEN.md) is the *toolkit's* own open questions.
You do not own any of them and `check-blocked.sh` does not read it.

---

## The three files that hold the actual work

```
        ux.md                        design.md
right problem · right thing   →     right build
  the need, and the bet             the behaviour
                    ↓
              findings.yaml
        (the evidence underneath both)
```

**Two files, three gates.** `ux.md` answers Gate 1 (do we understand the problem) and
Gate 2 (are we making the right thing) — both are the same person reading the same evidence
and saying what it means. `design.md` answers Gate 3, which is a different question: not
*what should exist* but *is this one built right*.

`ux.md` is mandatory. `design.md` is not — a project may say "we have no Gate 3 yet," but
it has to *say* it. Silence is what's disallowed.

Each has a **"How to fill this out"** block at the top. Delete it once the file is written.

---

## The one rule worth knowing before you write anything

**How strong a claim you may make is set by how the evidence was gathered — not by how sure
anyone feels.**

| what the evidence actually is | strongest claim allowed |
|---|---|
| we watched people do it | HIGH |
| people told us what they do, or think | MEDIUM |
| someone worked it out from other evidence | MEDIUM |
| someone recommended it | LOW |

Then one override: if the people studied were not the actual users — a screened panel,
internal staff, nobody — everything caps at LOW regardless. The lowest cap wins.

Two consequences that catch people out:

- **Ten consistent interviews still cap at MEDIUM.** More of the same kind of evidence
  widens *who* a claim applies to. It does not make anyone more certain.
- **The script computes the ceiling. Only a named researcher sets the grade** — and may set
  it lower. Every grade field ships blank.
- **"Agents must not fill in a grade" is policy here, and nothing enforces it.** Worth
  stating plainly because the sentence that used to sit here claimed the repo's constitution
  barred it — and this skeleton's constitution says nothing about grading at all. What is
  actually true and checkable: `check-gates.sh` never writes to `findings.yaml`, and it fails
  a document that asserts more than a finding licenses. Nothing stops an agent editing the
  file directly. If you need that enforced, it has to be a CODEOWNERS rule or a CI diff
  check on `findings.yaml` — neither of which ships here.

**Having no research is a legal state.** Write the problem as you understand it, tag the
claims, declare the regime, and say "no findings back this yet" in words. Then run the
checks — **the flags are your research plan.** You don't need research to start. You need it
to finish.
