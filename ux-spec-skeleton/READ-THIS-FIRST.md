# Read this first

You do not need to read anything else to start.

---

## What this is

You already have an Intent Spec: the signed document that says what gets built and what has
to be true to ship it. **Nothing here replaces it.**

This adds the part that sits *upstream* of it — what we actually know about the people we're
building for, and how strong those claims are allowed to be. Right now that lives in
Confluence and Figma, where nothing in the repo can reach it. So when someone in the repo
needs to know who the users are, they guess. Fluently.

Two markdown files in the repo, and a script that checks them.

![How ux.md works with the Intent Spec](assets/ux-and-intent-spec.png)

---

## The two files

| file | the question it answers | who mostly writes it |
|---|---|---|
| `ux.md` | Do we understand the problem? And is this the right thing to build? | design, with research |
| `design.md` | Is this one built right? | engineering and design |

`ux.md` is required. `design.md` is not — but a project with no Gate 3 has to *say* that
rather than just not having one.

---

## What actually changes for you

| if you are | what changes | what doesn't |
|---|---|---|
| **Product** | The options you considered and dropped get written down once, so they stop coming back every quarter | You still own direction. Nothing here decides scope |
| **Engineering** | You can read what the UX claims rest on without asking anyone. Accessibility and design-system rules are in the repo, not in a comment thread | No new approvals. The FLOOR items were always required |
| **Design** | Your reading of the evidence has somewhere to live that isn't a deck | Nobody is grading your work. The script checks claims, not quality |
| **Research** | A claim can't quietly get stronger as it travels. Lower a finding's confidence and everything resting on it flags immediately | You still own every grade. No script sets one |

---

## The one rule worth knowing

**How strong a claim you're allowed to make depends on how the evidence was gathered — not
on how sure anyone feels.**

| what the evidence actually is | strongest claim allowed |
|---|---|
| we watched people do it | HIGH |
| we asked them, and they told us | MEDIUM |
| we worked it out ourselves | MEDIUM |
| somebody recommended it | LOW |

Then: if the people studied weren't the actual users, everything drops to LOW.

**Ten consistent interviews still cap at MEDIUM.** More of the same kind of evidence widens
*who* a claim covers. It doesn't make anyone more certain. That's the whole mechanism.

---

## Your first twenty minutes

```bash
cd examples/alert-digest && ../../check-gates.sh
```

That's a small fictional project that ships with this. It **fails on purpose**:

```
FAIL E-02 — asserts HIGH. overnight-alerts-arrive-in-bulk is STATED_ATTITUDE / primary
     fidelity, which ceilings at MEDIUM.
```

A document claimed HIGH; the evidence underneath it caps at MEDIUM; the check named which
line. Nobody typed that ceiling — it was computed from two fields on the finding.

**If that run comes back clean, something is wrong with your setup.** The failure is the test.

---

## Three things this does not do

- **It does not block you.** A red check is the normal state of honest early work. The gate
  asks *"is this honest about being unfinished?"*, not *"is this finished?"* An unticked box
  is not a failure.
- **It does add one recurring obligation, stated up front rather than discovered later.**
  Everything here is a file and a script *except one thing*: a script can check that a box is
  ticked. It cannot check that the claim written next to it is true. Only a person reading the
  source can. So somebody needs to audit **one claim, picked at random, against its actual
  source** — about fifteen minutes, regularly. Skip it and the rest of this is theatre.

  One named person per sprint, auditing one criterion and writing two lines in `OPEN.md`, is
  enough; a second person initialling it is better, because one unchallenged reading is the
  failure this whole thing is about, one level up. Some teams do it in a short fortnightly
  review instead. The audit is the requirement — the meeting is just one way to get it, and
  neither version has been run yet, so treat both as a proposal rather than a process.
- **It does not replace the Intent Spec, Spec Kit, or your workflow.** It bolts on. And
  honestly: in your real repository it is **not wired in yet.** That connection is the thing
  we want you to test.

---

## If you want more

| you're asking | go to |
|---|---|
| "how do I set this up on my project?" | [`QUICKSTART.md`](QUICKSTART.md) — fifteen minutes, one file to edit |
| "a script exited 22 and I don't know what that means" | [`EXIT-CODES.md`](EXIT-CODES.md) — one code per kind of problem |
| "who's supposed to do what, and what can't be automated?" | [`ROLES.md`](ROLES.md) |
| "a check is red and we need to ship anyway" | [`WAIVERS.md`](WAIVERS.md) — signatures block the action, never the person |
| "I want to drive every script by hand once" | [`TRY-IT.md`](TRY-IT.md) |
| "I'm maintaining the toolkit itself" | [`START-HERE.md`](START-HERE.md) — the deeper version of this page |

There are more documents in here than that. You don't need them, and the fact that there
are eleven of them is a known problem being fixed — see `TOOLKIT-OPEN.md`.

Questions, gaps, and things that don't make sense are more useful to us than a clean trial.
If a sentence here only makes sense to the person who wrote it, that's a bug — say so.
