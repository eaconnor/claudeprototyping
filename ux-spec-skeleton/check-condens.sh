#!/bin/bash
# check-condens.sh — has the research moved since the claim that rests on it?
#
# THE QUESTION NOTHING ELSE IN THIS SUITE CAN ASK. check-drift.sh hashes files on disk.
# But the strongest evidence in a UX practice does not live on disk — it lives in a
# research repository, and a spec cites it by link. Nothing then notices when the
# artifact behind the link changes, so a synthesis silently becomes a claim about an
# older version of its own source.
#
# RETRACTION, 2026-09-18. This header used to open: "An evidence brief in this
# organisation cites six published Condens artifacts... one had been updated fourteen
# days AFTER the brief was written." That was not true and it is worth leaving the
# correction in place rather than tidying it away. The six artifacts in
# condens-state.tsv came from my own list-published-artifacts call, not from any
# brief; `grep -rl` across the corpus finds zero non-skeleton files citing any of
# them. It was a fabricated grounding sitting in the most persuasive sentence of the
# file — precisely the defect NE-3 exists to catch, committed by the author of NE-3.
#
# WHAT IS ACTUALLY GROUNDED, both verifiable without credentials:
#
#   scout_input/acp-qbr-analyst/condens-nzo-and-preview.md:10 records a brief carrying
#   "90 min → 17.5 min / 80% / 5×" from a Condens report, with the scout's own note
#   that those figures "are NOT in the artifact summary — they live inside the report
#   body, which is JS-gated" — tagged [CS: MEDIUM], kept as [D] not [R], with an
#   action for a human to open the link and verify. That action is a reading
#   assignment. Nothing executed it, and nothing would have noticed if the body's
#   numbers had since moved. That is the gap this script closes.
#
#   The Asset View Evaluation Report presents itself in-body as "**Published date**:
#   2026-06-10" while the API reports updatedAt 2026-09-17 — ninety-nine days apart.
#   A reader citing the published date is unknowingly citing a September version.
#   updatedAt is not visible in the artifact a researcher reads.
#
# WHY THE REGISTER MUST NAME ARTIFACTS, NOT WORKSPACES. `kind: condens` pointing at a
# workspace is unverifiable by construction: a workspace name asserts nothing. A
# published artifact has an id, a name and an updatedAt, so a citation to one is a claim
# that can be checked. That distinction came from reading how a researcher actually
# cites — she cites artifacts. The register was asking for the wrong granularity.
#
# THE TWO HALVES, AND WHY THEY ARE SPLIT
#
#   FETCH   an agent holding the Condens connector lists published artifacts and writes
#           condens-state.tsv. A ritual — it needs a session and credentials.
#   CHECK   this script. No network. Compares what EVIDENCE.md claims against what that
#           file observed, and reports how old the observation is.
#
# Calling the API from here was considered and rejected: a check that passes only when
# somebody's token happens to be valid fails for reasons unrelated to what it measures.
# Split this way, a missing observation reads as "nobody has fetched" — which is a
# finding about the practice, not a broken build.
#
# WHAT IT COMPARES AGAINST. Each gate file declares `reconciled_at:` — the date a human
# last reconciled it. An artifact whose updatedAt is LATER than that is evidence that
# moved after the last human look. That is the whole check.
#
# THE TIMESTAMP IS NOT THE EVIDENCE. This script's first version compared updatedAt
# against reconciled_at and stopped there. That was half a check, and the missing half
# was the important one: a typo fix and a reversed finding both move updatedAt, so
# every result read the same. A check that fires on copy-edits gets muted, and the one
# time it matters it is already muted.
#
# So content, not metadata — the same move check-drift.sh makes for files on disk.
# The fetch half now saves each artifact's text to condens-cache/, a human's
# reconciliation saves the version they signed off to condens-reconciled/, and this
# script compares the two. That yields three outcomes where there were two:
#
#   content byte-identical        ok, EVEN IF updatedAt moved. This alone removes the
#                                 whole false-positive class of a re-publish, a tag
#                                 edit or a permissions change touching the timestamp.
#   content moved, FIGURES equal  prose changed. Exit 32, a warning. Skim it.
#   content moved, FIGURES moved  exit 30. Every downstream claim quoting a number
#                                 from this artifact is now unverified.
#
# WHY FIGURES CARRY THE WEIGHT. The claims a spec draws from this corpus are numeric —
# "CSAT 34%", "SUS 67", "adoption <5%", "4.4/5", "17 moderated interviews". CLAUDE.md's
# 47% rule already requires every ratio, count and stat in a handoff to be
# grep-verified before it ships. A moved figure invalidates that verification; moved
# prose does not. scripts/figures.py defines the set and documents what it discards.
#
# AND IT NOW READS THE DIFF. When figures move, the changed numerals are printed —
# "- 24%  + 42%" — so a human lands on the claim at risk instead of re-reading a
# nine-thousand-word report. The cached files are plain markdown; `diff` them directly.
#
# HONEST LIMITS
#   Without a baseline in condens-reconciled/ it falls back to the old date comparison
#   and says so. Degrading loudly beats going quiet on a project that has not adopted
#   the snapshot ritual yet.
#   FIGURES is deliberately over-broad — a renumbered list can trip it. That trade is
#   priced: a false FIGURES costs ten seconds because the diff is printed.
#   Equal figures do not mean an unchanged finding. "Users trust the data" flipping to
#   "users do not trust the data" moves no numeral. Exit 32 is a warning, not a pass.
#   It cannot see unpublished work. Sessions, highlights and drafts are invisible here —
#   only published artifacts have stable share links.
#   A `condens` (workspace) row is reported, never verified. That is not this script
#   failing; it is the row being the wrong shape.
#
# WHY THE SNAPSHOTS ARE GITIGNORED. condens-cache/ and condens-reconciled/ hold whole
# research reports — participant quotes, named customers, unredacted feedback. Data
# gathered for a research purpose stays in that purpose (CLAUDE.md §10b, purpose
# limitation), so the mechanism travels with this template and the content never does.
#
# Exit codes:
#     0   every registered artifact was observed, and none moved since reconciliation
#     5   cannot evaluate — no registry, no artifact rows, or no observation file
#    30   an artifact's FIGURES moved, or it moved with no content baseline to judge by
#    31   a registered artifact was never observed, or is no longer published
#    32   an artifact's prose moved but every figure held — skim it, do not panic
#
# Usage:
#     ./check-condens.sh                  EVIDENCE.md + condens-state.tsv
#     ./check-condens.sh REG STATE        check these instead

set -uo pipefail
ORIG_PWD="$PWD"
ARGS=()
for a in "$@"; do case "$a" in /*) ARGS+=("$a");; *) ARGS+=("$ORIG_PWD/$a");; esac; done
cd "$(dirname "$0")"
[ -f project.conf ] && . ./project.conf

REG="${ARGS[0]:-${EVIDENCE:-EVIDENCE.md}}"
STATE="${ARGS[1]:-condens-state.tsv}"

echo "======================================================================"
echo "RESEARCH DRIFT — has the evidence moved under the claim?"
echo "======================================================================"

if [ ! -f "$REG" ]; then
  echo "BROKEN — $REG not found."; exit 5
fi

ROWS=$(awk '/^## The register/{f=1;next} f && /^## /{f=0} f' "$REG" \
       | grep -E '^\|[[:space:]]*E-[0-9]+' | grep -E '\|[[:space:]]*condens-artifact[[:space:]]*\|' || true)
NROWS=$(printf '%s' "$ROWS" | grep -c . || true)

if [ "$NROWS" -eq 0 ]; then
  echo "BROKEN — no 'condens-artifact' rows in $REG."
  echo ""
  echo "This is not a pass. Either this project's evidence genuinely does not live in a"
  echo "research repository, or it does and nobody has registered which artifacts the"
  echo "claims rest on. A 'condens' row naming only a workspace does not count — see"
  echo "the granularity note in EVIDENCE.md."
  exit 5
fi

if [ ! -f "$STATE" ]; then
  echo "BROKEN — $STATE not found, so $NROWS registered artifact(s) cannot be checked."
  echo ""
  echo "An agent with the Condens connector has to write it. Until then this reports"
  echo "'not checked' rather than 'fine' — the observation step is part of the loop,"
  echo "and skipping it is a finding about the practice, not a script error."
  exit 5
fi

FETCHED=$(grep -m1 '^# fetched_at:' "$STATE" | sed 's/^# fetched_at:[[:space:]]*//')
echo "observation: $STATE · fetched_at ${FETCHED:-UNSTATED}"

# How stale is the observation itself?
OBS_AGE_NOTE=""
if [ -n "$FETCHED" ]; then
  now=$(date -u +%s)
  then_=$(date -u -j -f "%Y-%m-%dT%H:%M:%SZ" "$FETCHED" +%s 2>/dev/null \
          || date -u -d "$FETCHED" +%s 2>/dev/null || echo "")
  if [ -n "$then_" ]; then
    days=$(( (now - then_) / 86400 ))
    echo "             observation is $days day(s) old"
    [ "$days" -gt 30 ] && OBS_AGE_NOTE="the observation itself is $days days old — re-run the fetch before trusting a clean result"
  fi
fi

# The reconciliation dates this project claims
RECON=""
# Dedupe the gate list. GATE_1 and GATE_2 legitimately name the SAME file since
# the 2026-09-22 merge of Gate 2 into ux.md, and every script that expanded the trio
# blind collected it twice. Measured: check-drift.sh reported "3 source(s) across
# 3 file(s)" with two files on disk, and each fault in the shared file printed twice.
# Same fault and same fix as the GATES_SEEN guard in check-gates.sh.
_seen=""
for f in "${GATE_1:-ux.md}" "${GATE_2:-}" "${GATE_3:-design.md}"; do
  [ -n "$f" ] && [ -f "$f" ] || continue
  case " $_seen " in *" $f "*) continue ;; esac
  _seen="$_seen $f"
  r=$(awk '/^---[[:space:]]*$/{fm++; if(fm==2)exit; next} fm==1 && /^reconciled_at:/{sub(/^reconciled_at:[[:space:]]*/,""); sub(/[[:space:]]*#.*$/,""); gsub(/[[:space:]]/,""); print; exit}' "$f")
  [ -n "$r" ] || continue
  echo "             $f reconciled_at $r"
  # EARLIEST, not last. Each gate file's criteria rest on this evidence, so the
  # comparison point is the gate that has gone longest without a human look —
  # taking whichever file happened to be read last would hide drift behind a gate
  # someone reconciled yesterday. (This script's first version took the last one.)
  if [ -z "$RECON" ] || [[ "$r" < "$RECON" ]]; then RECON="$r"; fi
done
if [ -z "$RECON" ]; then
  echo ""
  echo "BROKEN — no gate file declares reconciled_at:, so there is no date to compare"
  echo "artifact changes against. Nothing can be said about whether evidence moved"
  echo "since a human last looked."
  exit 5
fi
echo "             comparing against the earliest: $RECON"
echo ""

MOVED=0; UNOBS=0; OK=0; PROSE=0; NOBASE=0
CACHE="${CONDENS_CACHE:-condens-cache}"
BASE="${CONDENS_RECONCILED:-condens-reconciled}"
FIGS="$(dirname "$0")/scripts/figures.py"

while IFS= read -r row; do
  [ -z "$row" ] && continue
  id=$(printf '%s' "$row"  | awk -F'|' '{gsub(/^[ \t]+|[ \t]+$/,"",$2); print $2}')
  loc=$(printf '%s' "$row" | awk -F'|' '{gsub(/^[ \t]+|[ \t]+$/,"",$4); gsub(/`/,"",$4); print $4}')
  obs=$(grep -m1 "^${loc}	" "$STATE" || true)
  if [ -z "$obs" ]; then
    printf '   %-7s %-24s NOT OBSERVED\n' "$id" "$loc"
    echo "           Registered, but absent from the observation. Either nobody has"
    echo "           fetched since it was registered, or it is no longer published."
    UNOBS=$((UNOBS+1)); continue
  fi
  aid=$(printf '%s' "$obs" | cut -f2)
  upd=$(printf '%s' "$obs" | cut -f3)
  nm=$(printf '%s'  "$obs" | cut -f4)
  now_f="$CACHE/$aid.md"
  was_f="$BASE/$aid.md"

  # ---- content tier. Preferred, because it can say what KIND of change happened.
  if [ -f "$now_f" ] && [ -f "$was_f" ] && [ -x "$FIGS" ]; then
    now_sha=$(shasum -a 256 < "$now_f" | cut -d' ' -f1)
    was_sha=$(shasum -a 256 < "$was_f" | cut -d' ' -f1)
    if [ "$now_sha" = "$was_sha" ]; then
      if [[ "${upd:0:10}" > "$RECON" ]]; then
        printf '   %-7s %-24s ok      %s  %s\n' "$id" "$loc" "${upd:0:10}" "$nm"
        echo "           updatedAt moved to ${upd:0:10} but the content is byte-identical to"
        echo "           the reconciled snapshot. Nothing to read. This is the case the"
        echo "           date-only check used to report as drift."
      else
        printf '   %-7s %-24s ok      %s  %s\n' "$id" "$loc" "${upd:0:10}" "$nm"
      fi
      OK=$((OK+1)); continue
    fi
    # Content moved. Which kind?
    nowfig=$(python3 "$FIGS" "$now_f" 2>/dev/null || true)
    wasfig=$(python3 "$FIGS" "$was_f" 2>/dev/null || true)
    if [ -z "$nowfig" ] && [ -z "$wasfig" ]; then
      # Neither side yielded a numeral. Reporting "figures held" here would mean
      # "I compared nothing and found nothing wrong."
      printf '   %-7s %-24s MOVED   %s\n' "$id" "$loc" "${upd:0:10}"
      echo "           \"$nm\""
      echo "           Content changed. Neither version yielded a single numeral, so the"
      echo "           figures comparison says nothing — do not read this as prose-only."
      echo "           diff \"$was_f\" \"$now_f\""
      MOVED=$((MOVED+1)); continue
    fi
    if [ "$nowfig" = "$wasfig" ]; then
      printf '   %-7s %-24s PROSE   %s\n' "$id" "$loc" "${upd:0:10}"
      echo "           \"$nm\""
      echo "           Text changed, every figure held. A skim, not a re-verification —"
      echo "           no stat quoting this artifact has been invalidated. But a finding"
      echo "           can reverse without moving a number, so read the diff:"
      echo "           diff \"$was_f\" \"$now_f\""
      PROSE=$((PROSE+1)); continue
    fi
    printf '   %-7s %-24s FIGURES %s\n' "$id" "$loc" "${upd:0:10}"
    echo "           \"$nm\""
    if [[ ! "${upd:0:10}" > "$RECON" ]]; then
      echo "           The content changed but updatedAt (${upd:0:10}) is NOT later than"
      echo "           reconciled_at ($RECON). The timestamp is not telling the truth here,"
      echo "           so the date-only check would have called this unchanged."
    fi
    echo "           Figures that moved:"
    diff <(printf '%s\n' "$wasfig") <(printf '%s\n' "$nowfig") \
      | grep -E '^[<>]' | sed 's/^</             was/; s/^>/             now/'
    echo "           Every claim quoting a number from this artifact is now unverified."
    echo "           diff \"$was_f\" \"$now_f\""
    MOVED=$((MOVED+1)); continue
  fi

  # ---- date tier. Fallback only, and it says so rather than implying coverage.
  if [[ "${upd:0:10}" > "$RECON" ]]; then
    printf '   %-7s %-24s MOVED   %s\n' "$id" "$loc" "${upd:0:10}"
    echo "           \"$nm\""
    echo "           updated ${upd:0:10}, after this project was last reconciled ($RECON)."
    if [ ! -f "$was_f" ]; then
      echo "           NO CONTENT BASELINE — $was_f does not exist, so this is a date"
      echo "           comparison only and cannot say whether a figure moved or a typo"
      echo "           was fixed. To get that, snapshot what you reconcile:"
      echo "               mkdir -p $BASE && cp $CACHE/$aid.md $was_f"
      NOBASE=$((NOBASE+1))
    elif [ ! -f "$now_f" ]; then
      echo "           NO CACHED CONTENT — $now_f does not exist. The fetch ritual saved"
      echo "           metadata but not text, so only the date could be compared."
      NOBASE=$((NOBASE+1))
    fi
    MOVED=$((MOVED+1))
  else
    printf '   %-7s %-24s ok      %s  %s\n' "$id" "$loc" "${upd:0:10}" "$nm"
    [ -f "$was_f" ] || NOBASE=$((NOBASE+1))
    OK=$((OK+1))
  fi
done <<< "$ROWS"

echo ""
echo "----------------------------------------------------------------------"
echo "$NROWS registered artifact(s) · $OK unchanged · $PROSE prose-only · $MOVED figures/unjudged · $UNOBS not observed"
[ -n "$OBS_AGE_NOTE" ] && { echo ""; echo "NOTE — $OBS_AGE_NOTE"; }
if [ "$NOBASE" -gt 0 ]; then
  echo ""
  echo "NOTE — $NOBASE artifact(s) have no content baseline, so they were judged on"
  echo "updatedAt alone. That cannot distinguish a typo fix from a reversed finding."
fi
echo ""
if [ "$UNOBS" -gt 0 ]; then
  echo "NOT OBSERVED — $UNOBS registered artifact(s) could not be checked at all."
  exit 31
fi
if [ "$MOVED" -gt 0 ]; then
  echo "FIGURES MOVED — $MOVED artifact(s) changed in a way a number depends on, or"
  echo "changed with no baseline to judge by."
  echo "Re-verify every stat you quote from them. Then snapshot what you reconciled"
  echo "and update reconciled_at: to the date you actually did it."
  exit 30
fi
if [ "$PROSE" -gt 0 ]; then
  echo "PROSE MOVED — $PROSE artifact(s) were edited, every figure held."
  echo "No quoted number is invalidated. Read the diffs anyway: a finding can reverse"
  echo "without moving a numeral, and this script cannot see that."
  exit 32
fi
WITHBASE=$((NROWS - NOBASE))
echo "CURRENT — every cited artifact is unchanged since this project was reconciled."
echo ""
if [ "$NOBASE" -gt 0 ]; then
  echo "Narrow claim, and narrower than it looks: $WITHBASE of $NROWS artifact(s) were"
  echo "compared by content and are byte-identical to the reconciled snapshot. The other"
  echo "$NOBASE carry no baseline, so all that is known about them is that updatedAt has"
  echo "not passed reconciled_at. Snapshot them to close that gap."
else
  echo "Narrow claim: the content of each cited artifact is byte-identical to the version"
  echo "a human reconciled."
fi
echo "Either way it does not mean the research still supports the claim — the world moves"
echo "even when the report does not. Only a person can say that."
exit 0
