# MANIFEST.md — the source register

Every source any gate file claims to be `built_from:` has a row here, with the hash
it had when it was registered. **Read by `./check-drift.sh`, which is why the table
format is strict.** This is the fifth register, alongside `OPEN.md`, `HAZARDS.md`,
`VALUE.md` and `WAIVERS.md` — same rule as all four: it is data, not prose.

**What this file is for.** A `drift: FRESH` field in a ux.md is a hand-typed word.
This register is what makes it computable: hash the sources, compare, and let the
script say whether the word is true. A source that is not registered here cannot be
shown to be current, and `check-drift.sh` reports that as CONFLICT rather than
skipping it — "I could not check" must never present as "fine."

## Shelves

The shelf says what *kind* of knowledge a source is, because that decides how much
weight a claim built on it can carry.

| shelf | what lives there |
|---|---|
| `primary` | We generated it: interview transcripts, session recordings, telemetry, our own studies |
| `internal` | Our organisation wrote it: specs, tickets, strategy docs, roadmaps |
| `market` | Someone outside wrote it: analyst reports, competitor material, vendor docs, press |
| `academic` | Peer-reviewed or standards-body: papers, ISO/WCAG, textbooks |
| `derived` | **Output of an AI session** — a synthesis, a summary, a generated brief |

**The `derived` shelf is not optional and not a formality.** Shelving an AI session's
output as `primary` or `market` is how a hallucination becomes a citation: it enters
the corpus wearing the authority of the shelf it was filed on, and three documents
later nobody can tell it was generated. A `derived` source may be cited, but a claim
resting only on `derived` rows has no independent grounding and must be tagged `[A]`
or `[?]`, never `[R]`/`[D]`.

## Maturity

| value | means |
|---|---|
| `raw` | Landed, not yet read against anything |
| `read` | Someone has read it and knows what is in it |
| `cited` | At least one gate criterion or claim rests on it |
| `retired` | Superseded. Row stays — never delete a source that a tick once relied on |

## Rows

`hash` is the first 12 hex characters of the sha256 of the file **as registered**.
Recompute with `shasum -a 256 <path> | cut -c1-12` (or `sha256sum`).
`feeds` names which gate file(s) or criteria depend on it.

| id | shelf | path | hash | feeds | maturity | added_at |
|---|---|---|---|---|---|---|
| S-001 | internal | .specify/memory/constitution.md | eac34bbcc34b | ux.md · design.md | cited | 2026-09-16 |

<!-- Add a row per source. To register or re-register one:

       shasum -a 256 path/to/source | cut -c1-12

     then paste the result into the hash column. That is the whole ritual — and it
     is the point: the number in this table was produced by a command, not by a
     person's confidence about whether the file had changed.

     PLACEHOLDER is a deliberate poison value. It will never match a real hash, so
     ./check-drift.sh reports the row STALE until someone actually runs the command.
     A skeleton that shipped with plausible-looking hashes would ship green and
     prove nothing. -->
