# EVIDENCE.md — where this project's evidence actually lives

`MANIFEST.md` registers **individual sources** and hashes them. This file registers
**homes**: the places evidence comes from at all. A project can have a perfect manifest
and still have no answer to "where would I look for what customers said?" — that is what
this register is for, and it is the first thing UX onboarding sets up.

**Onboarding requires a row here, with an owner. It does not require a method, and it does
not require a particular tool.** The distinction is
load-bearing. Requiring "do a datadump" of a team that has a Condens repository and a
tagging taxonomy would be busywork; requiring axial coding of anyone who does not already
do axial coding would be theatre. What is mandatory is that *somewhere* is named, and that
it resolves. How you make sense of what is there is yours.

## The register

`resolves` is computed by `./check-evidence.sh`, never typed. See the limit note below.

| id | kind | locator | method | owner | resolves |
|---|---|---|---|---|---|
| E-001 | template | `templates/DATADUMP.template.md` | *(unset — copy this and fill it in)* | unassigned | — |

### Columns

- **kind** — free text, like `method`. The values below are the ones `check-evidence.sh`
  knows how to *check*, not the ones it permits. If your evidence lives in an Airtable, a
  shared drive, a notebook or a tool nobody here has heard of, write that — it is recorded
  as `declared` and trusted. A gate that dictated the tool would be dictating method.
- **locator** — a repo-relative path, a URL, or a workspace/project identifier.
- **method** — free text. What you actually do with this evidence. `none yet` is a legal
  and useful value; it is visible, which is the point. An empty cell is not the same thing.
- **owner** — a person, and **required**. `unassigned` is the state a fresh clone ships in,
  and a register whose every row is unowned counts as **not set up** (exit 28). Setting this
  up is the job of whoever is assigned to research on the project; the register has to say
  who that is, or the pointer is one nobody maintains.

### Kinds

| kind | locator looks like | checkable here? |
|---|---|---|
| `local-file` | `briefs/datadump-2026-09-17.md` | **yes** — path must exist |
| `local-dir` | `scout_input/` | **yes** — directory must exist and be non-empty |
| `template` | `templates/DATADUMP.template.md` | **yes** — but counts as *not yet set up* |
| `condens` | `nable` or a project URL | declared only — see limit |
| `confluence` | `space/ADL` | declared only |
| `jira` | `project = FSN` | declared only |
| `repo` | `github.com/org/repo` | declared only |
| *anything else* | whatever the research owner uses | declared only — **not an error** |

## Starting from nothing — the two paths

**Path A — you have research but no structure for it.** Copy the template, fill the
`method:` field with what you genuinely do, and register the result as `local-file`:

```bash
cp templates/DATADUMP.template.md briefs/datadump-$(date +%F).md
```

The template's own header explains why `method:` is free text rather than a menu. Its
shape came from a grounded-theory axial-coding pass, but every structural element in it —
name your method, name who coded it and in which reasoning mode, point at the raw material,
name what your cut dropped, leave the interpretive slot empty — is method-independent.

**Path B — your evidence already lives in a research repository.** Register the connector
and skip the template entirely. A `condens` row with a real workspace and a stated method
is a *better* answer than a datadump file, not a worse one:

| id | kind | locator | method | owner | resolves |
|---|---|---|---|---|---|
| E-002 | condens | `nable` | tagged highlights, rolled up by Tag Group | ‹name› | declared |

## Honest limit — why half of these can only be declared

`check-evidence.sh` runs in CI with no credentials. It can confirm a path exists on disk;
it **cannot** confirm a Condens workspace, Confluence space or Jira project exists, or that
you can reach it, or that anything is in it. Those rows are reported as `declared` and
counted separately from `resolved`, and the script says so in its output rather than
implying coverage it does not have.

This is deliberately not papered over with an API call. A check that passes only when
someone's token happens to be valid is a check that fails for reasons unrelated to the
thing it claims to measure, and teams learn to ignore it.

**What follows from that:** a project whose every evidence row is `declared` has satisfied
onboarding mechanically while possibly having nothing at all. The countermeasure is a
person — `RITUALS.md` — not a stricter script.
