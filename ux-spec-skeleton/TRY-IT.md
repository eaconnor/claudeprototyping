# TRY IT — 25 minutes, breaking things on purpose

Everything else in this repo is machine-facing: scripts, exit codes, CI. This page is the
opposite. **You, at a terminal, deliberately lying to the system, watching what catches you.**

No setup beyond one file. Every exercise is copy-pasteable and reversible. The last one is
the most important, because it's the one where the system *fails to catch you* — and knowing
that in your hands is worth more than reading it in a caveat.

## Before you start

```bash
cd ux-spec-skeleton
printf '{\n  "feature_directory": "."\n}\n' > .specify/feature.json
cp -R . ../skeleton-backup    # so you can throw this copy away afterwards
```

Everything below is reversible with the per-exercise `undo`, but the backup means you never
have to care. **Use the backup, not `git checkout`** — this folder sits inside a larger repo
and a checkout here would take uncommitted work with it.

Every command and every stated exit code on this page was executed on a clean copy on
2026-09-17 before it was written down. Two of them were wrong the first time and are fixed;
if a third is wrong in your hands, that's the thing worth telling me.

---

## 1 · Look at it clean — red is the correct state

```bash
./check-gates.sh; echo "exit: $?"
```

**You should see:** three gates BLOCKED, 22 criteria unchecked, `exit: 1`.

**What it proves:** a fresh clone ships red *on purpose*. Nothing here is ticked to make a
script quiet. If this were green on day one it would mean the criteria were written to be
passed rather than to be true.

---

## 2 · Lie about whether your sources are current

`ux.md`'s frontmatter says `drift: FRESH`. Make that a lie:

```bash
echo "" >> .specify/memory/constitution.md    # a source moved
./check-drift.sh; echo "exit: $?"
```

**You should see:** `MISDECLARED — the file claims FRESH, the hashes say STALE`, `exit: 22`.

**What it proves:** the freshness claim is computed, not believed. Now try being *honest*
instead — say it's stale when it is:

```bash
sed -i '' 's/^drift: FRESH/drift: STALE/' ux.md vision.md design.md
./check-drift.sh; echo "exit: $?"
```

**You should see:** `0 fresh · 3 stale · 0 conflict` and `exit: 18` — a *warning*, not a
failure. Admitting staleness costs you a warning; claiming freshness you don't have fails the
build. That gap is deliberate: it makes honesty mechanically cheaper than optimism.

**Note that all three files are in that command, and that matters.** `ux.md`, `vision.md` and
`design.md` each declare their own `drift:`, and all three are built from the constitution you
just touched. Be honest in only one of them and you still get **22**, because two files are
still claiming freshness they don't have. Partial honesty scores as dishonesty here, which is
the correct behaviour and worth seeing for yourself:

```bash
sed -i '' 's/^drift: STALE/drift: FRESH/' vision.md design.md   # re-introduce the lie in two
./check-drift.sh; echo "exit: $?"                                # back to 22
```

**undo:** `cp -R ../skeleton-backup/. .`

---

## 3 · Claim a capability you don't have

```bash
sed -i '' 's/^skills:.*/skills:\n  design_lint: apex-check/' ux.md
./check-skills.sh; echo "exit: $?"
```

**You should see:** `MISSING apex-check`, `exit: 21`.

**What it proves:** a registry entry naming a skill that isn't on disk reads *exactly* like a
working one. An agent that trusts it doesn't error — it improvises. (This is a real live
defect in `briefs/context/acp-ux.md:26`, not a hypothetical.)

That `sed` leaves the old comment block dangling under the new key — ugly, harmless, and the
undo clears it. The check reads the key, not the comment.

**undo:** `cp -R ../skeleton-backup/. .`

---

## 4 · Authorize work on a document that says it's blocked

`ux.md` says `confidence_regime: BLOCKED`. Tell the machine to build anyway:

```bash
sed -i '' 's|^machine_behavior:.*|machine_behavior: build all screens · fidelity = Tier 3|' ux.md
./check-judgment.sh; echo "exit: $?"
```

**You should see:** `J-3 INCOHERENT — regime is BLOCKED but machine_behavior authorizes work`,
`exit: 24`.

**What it proves:** the plan→execute handoff can't contradict itself silently. A doc can't say
"don't proceed" in one field and "build everything" in the next.

**undo:** `cp -R ../skeleton-backup/. .`

---

## 5 · Remove your own sign-off

This is the one that matters most if you ever split planning from execution across two passes
or two models.

```bash
sed -i '' 's/^confidence_regime: BLOCKED.*/confidence_regime: PROCEED-FLAGGED/' ux.md
./check-judgment.sh; echo "exit: $?"
```

**You should see:** `J-2 INCOHERENT — regime is PROCEED-FLAGGED but proceed_because: is
empty`, `exit: 24`.

**What it proves:** a permissive regime with no human authorization behind it is refused.
`proceed_because:` is *your* sentence — the machine can't grant itself permission to proceed
on thin evidence. Without it the default is BLOCKED, and now something enforces that.

**undo:** `cp -R ../skeleton-backup/. .`

---

## 6 · Tick a box that isn't true — and watch nothing stop you

```bash
sed -i '' '0,/^- \[ \] G1-01/s/^- \[ \] G1-01/- [x] G1-01/' ux.md
./check-gates.sh; echo "exit: $?"
```

**You should see:** Gate 1 drop from 6 unchecked to 5. No error. No complaint. If you tick all
22, `./check-gates.sh` exits **0** and the whole apparatus goes green while nothing has been
researched, designed, or tested.

**What it proves — and this is the point of the whole page:** every script here checks that a
box is ticked. **Not one of them can check that the claim written beside it is true.** Only a
person reading the evidence can do that.

So this is not a system that makes design rigorous. It's a system that makes the *absence* of
rigour visible, and stops "nobody checked" from printing the same way as "someone checked and
it was fine." Everything else in this repo is plumbing in service of that one distinction.

`RITUALS.md` §2 step 4 is the only countermeasure: once a fortnight, pick one criterion at
random, read its cited source out loud, and decide as a group whether it says what the
criterion claims. Fifteen minutes. If that stops happening, this repo is theatre.

**undo:** `cp -R ../skeleton-backup/. .`

---

## 7 · Break the human layer — the one that isn't about gates at all

`ux.README.md` is the hand-written companion to `ux.md`: how each reader should use the spine,
which two ideas people conflate, what to do when you're not around. **None of that is
generated, on purpose** — it's judgment, and a generator would overwrite the most useful part
of the file. What *is* generated is the small `STATUS` block near the top.

First, send a reader somewhere that doesn't exist:

```bash
sed -i '' 's|`RITUALS.md` §2|`RITUALS.md` §2 and §47|' ux.README.md
./check-human.sh; echo "exit: $?"
```

**You should see:** `H-3 DANGLING — cites §47, but the spine has no section 47`, `exit: 26`.

**undo:** `cp -R ../skeleton-backup/. .`

Now move the spine underneath it and watch the status block go out of date:

```bash
sed -i '' 's/^status: SKELETON/status: DRAFT/' ux.md
./check-human.sh; echo "exit: $?"
./check-human.sh --write >/dev/null && ./check-human.sh; echo "exit: $?"
```

**You should see:** first a diff showing `SKELETON` → `DRAFT` and `exit: 27`, then `exit: 0`
after `--write` regenerates the block.

**What it proves — and the distinction is the point:** **26 fails the build, 27 doesn't.** A
dangling reference sends a human to a file that isn't there, and no amount of regeneration
fixes it — someone has to decide where that link should go. A stale status block is just a
derived value that needs recomputing, so it warns and hands you the command. Same file, two
different kinds of wrong, two different codes.

**What it deliberately does *not* check:** whether the prose is still *true*. The README could
describe a workflow you abandoned months ago and every reference would still resolve. There is
also no count-checking, and that's a scar rather than an omission — an earlier version compared
numbers in the README against the spine, and the first real pair it ran on said "26 moments" in
the README versus "12 moments" in the spine. The README was **right**; the spine read *"26
service moments across 7 stages (… Live Meeting × 12 moments …)"*. A check that turns correct
prose into a red build is worse than no check, so numbers are now printed side by side under
`INFO` and never judged.

**undo:** `cp -R ../skeleton-backup/. .`

---

## 8 · Try to onboard without doing any research

This is the gate that makes research setup mandatory. A fresh clone is **already failing
it** — that's the design.

```bash
./check-evidence.sh; echo "exit: $?"
```

**You should see:** `NOT SET UP — no evidence home beyond the blank template`, `exit: 28`,
and two suggested routes.

Now set it up the way a team with a research repository would — no datadump file at all:

```bash
python3 - <<'EOF'
import io
s=io.open('EVIDENCE.md',encoding='utf-8').read()
row="| E-002 | condens | `nable` | tagged highlights by Tag Group | Beth Connor | — |\n"
i=s.index("| E-001 | template |"); io.open('EVIDENCE.md','w',encoding='utf-8').write(s[:i]+row+s[i:])
EOF
./check-evidence.sh; echo "exit: $?"
```

**You should see:** `exit: 0`, and a `NOTE` saying the row is **declared, not verified** —
the script has no credentials and did not contact Condens.

Then take your name off it:

```bash
sed -i '' 's/| Beth Connor |/| unassigned |/' EVIDENCE.md
./check-evidence.sh; echo "exit: $?"
```

**You should see:** `NOT SET UP — 1 evidence home(s) named, but not one has an owner`,
`exit: 28`.

**What it proves, and it's three separate things:**

1. **A location is mandatory. A method is not.** `method:` is free text and `none yet` is a
   legal value. The datadump template ships method-agnostic on purpose — its shape came from
   one person's grounded-theory axial coding, and requiring *that* of anyone else produces
   filled-in headings with nothing learned. Try `| E-002 | airtable | ... |` and watch it
   pass: the kinds listed in `EVIDENCE.md` are the ones the script knows how to *check*, not
   the ones it allows.
2. **An owner is mandatory.** Setting this up is the research owner's job and the form is
   theirs to choose, so the register has to name them. An unowned pointer is one nobody
   maintains.
3. **The agent is forbidden from doing it for you.** Read
   `.claude/skills/ux-onboard/SKILL.md` — on exit 28 it is explicitly barred from copying
   the template, filling a row, picking a method or naming an owner. An agent that
   scaffolds a plausible datadump has produced a file that reads as research and contains
   none, which is worse than the empty state it replaced. Same rule as an unfilled judgment
   slot: human or empty, never drafted.

**undo:** `cp -R ../skeleton-backup/. .`

---

## When you're done

```bash
cd .. && rm -rf skeleton-backup
```

## What to tell me afterwards

The useful feedback isn't "it worked." It's:

- Which exercise's output was **confusing** — where you couldn't tell what the script wanted
- Whether any of these felt like **busywork** rather than a real guard
- Whether exercise 6 landed, or whether it reads as an excuse for the rest not working
- Anything you tried that **should** have been caught and wasn't
