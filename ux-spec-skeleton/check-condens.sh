#!/bin/bash
# check-condens.sh — has the research moved since the claim that rests on it?
#
# THE QUESTION NOTHING ELSE IN THIS SUITE CAN ASK. check-drift.sh hashes files on disk.
# But the strongest evidence in a UX practice does not live on disk — it lives in a
# research repository, and a spec cites it by link. Nothing then notices when the
# artifact behind the link changes, so a synthesis silently becomes a claim about an
# older version of its own source.
#
# FOUND ON THE FIRST RUN, IN REAL MATERIAL. An evidence brief in this organisation cites
# six published Condens artifacts. All six resolved. One — the source behind its lead
# behavioural finding — had been updated fourteen days AFTER the brief was written. The
# finding may well still hold. Nobody had looked, and nothing could have told them to.
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
# HONEST LIMITS
#   It cannot tell whether the change mattered. A typo fix and a reversed finding both
#   move updatedAt. It routes a human to look; it does not read the diff.
#   It cannot see unpublished work. Sessions, highlights and drafts are invisible here —
#   only published artifacts have stable share links.
#   A `condens` (workspace) row is reported, never verified. That is not this script
#   failing; it is the row being the wrong shape.
#
# Exit codes:
#     0   every registered artifact was observed, and none moved since reconciliation
#     5   cannot evaluate — no registry, no artifact rows, or no observation file
#    30   an artifact MOVED after the last reconciliation — a human must look
#    31   a registered artifact was never observed, or is no longer published
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
for f in "${GATE_1:-ux.md}" "${GATE_2:-vision.md}" "${GATE_3:-design.md}"; do
  [ -f "$f" ] || continue
  r=$(awk '/^---[[:space:]]*$/{fm++; if(fm==2)exit; next} fm==1 && /^reconciled_at:/{sub(/^reconciled_at:[[:space:]]*/,""); sub(/[[:space:]]*#.*$/,""); gsub(/[[:space:]]/,""); print; exit}' "$f")
  [ -n "$r" ] && echo "             $f reconciled_at $r" && RECON="$r"
done
if [ -z "$RECON" ]; then
  echo ""
  echo "BROKEN — no gate file declares reconciled_at:, so there is no date to compare"
  echo "artifact changes against. Nothing can be said about whether evidence moved"
  echo "since a human last looked."
  exit 5
fi
echo ""

MOVED=0; UNOBS=0; OK=0
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
  upd=$(printf '%s' "$obs" | cut -f3)
  nm=$(printf '%s'  "$obs" | cut -f4)
  # date-only comparison; both are ISO-8601 so string compare is ordering
  if [[ "${upd:0:10}" > "$RECON" ]]; then
    printf '   %-7s %-24s MOVED   %s\n' "$id" "$loc" "${upd:0:10}"
    echo "           \"$nm\""
    echo "           updated ${upd:0:10}, after this project was last reconciled ($RECON)."
    echo "           A human must read what changed. This script cannot tell a typo fix"
    echo "           from a reversed finding."
    MOVED=$((MOVED+1))
  else
    printf '   %-7s %-24s ok      %s  %s\n' "$id" "$loc" "${upd:0:10}" "$nm"
    OK=$((OK+1))
  fi
done <<< "$ROWS"

echo ""
echo "----------------------------------------------------------------------"
echo "$NROWS registered artifact(s) · $OK unchanged · $MOVED moved · $UNOBS not observed"
[ -n "$OBS_AGE_NOTE" ] && { echo ""; echo "NOTE — $OBS_AGE_NOTE"; }
echo ""
if [ "$UNOBS" -gt 0 ]; then
  echo "NOT OBSERVED — $UNOBS registered artifact(s) could not be checked at all."
  exit 31
fi
if [ "$MOVED" -gt 0 ]; then
  echo "MOVED — $MOVED artifact(s) changed after the last reconciliation."
  echo "Re-read them, then update reconciled_at: to the date you actually did it."
  exit 30
fi
echo "CURRENT — every cited artifact is unchanged since this project was reconciled."
echo ""
echo "Narrow claim: it means no share link has a newer updatedAt than your"
echo "reconciled_at. It does not mean the research still supports the claim — only a"
echo "person reading both can say that."
exit 0
