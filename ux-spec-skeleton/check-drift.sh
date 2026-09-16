#!/bin/bash
# check-drift.sh — is this file still true about the sources it was built from?
#
# THE DEFECT THIS EXISTS TO CATCH IS A HAND-TYPED WORD. A gate file declares
# `drift: FRESH | STALE` in its frontmatter and `built_from:` a list of sources.
# Both are typed by a person. Nothing recomputes them, so `drift: FRESH` means
# "someone believed this was current on the day they typed it" — which is
# indistinguishable, to every later reader, from "this was verified." A file that
# asserts its own freshness and is wrong is worse than one that says nothing,
# because the assertion is what stops the next person checking.
#
# Found live on 2026-09-16 in the project this skeleton was extracted from: a
# ux.md carried a hand-typed `drift: STALE` and a hand-typed `reconciled_at:`
# date, with no code anywhere that computed either. Same class as a grep-verified
# ratio nobody grepped.
#
# HOW IT COMPUTES. Every path in `built_from:` is hashed and compared to its row
# in MANIFEST.md:
#
#     FRESH     hash matches the manifest            -> pass
#     STALE     hash differs — the source moved      -> warn  (exit 18)
#     CONFLICT  source is gone from disk, or is not  -> block (exit 19)
#               registered in the manifest at all
#
# "Not in the manifest" is CONFLICT, not a skip. An unregistered source cannot be
# shown to be current, and "I could not check" must never present as "fine."
#
# THE TIME-DIMENSION TWIN. A ticked acceptance criterion is a claim that something
# was true when it was ticked. If the corpus underneath has since moved, the tick
# is stale evidence wearing a checkmark. So: any STALE or missing source, in a file
# that has ticked criteria, escalates STALE -> CONFLICT.
#
#   HONEST LIMIT, stated because the script cannot do better yet: this escalation
#   is FILE-level, not criterion-level. Criteria carry `traces_to:` pointing at
#   SECTIONS (§N, ds:N.N, UXI-##), not at source files, so there is no way to ask
#   "which criteria depended on THIS source." Until the schema carries a
#   criterion->source link, one moved source taints every tick in the file. That
#   is deliberately over-broad rather than silently under-broad.
#
# WHY THE LIE GETS ITS OWN EXIT CODE. `drift:` typed FRESH while the computation
# says STALE or CONFLICT exits 22, above both. Sources moving is normal and
# expected. A file misrepresenting its own state is a different kind of problem
# and should not be reported in the same breath as routine staleness.
#
# Exit codes:
#     0   FRESH — every source hashes to its manifest row, and `drift:` agrees
#     5   BROKEN — cannot evaluate: no MANIFEST.md, no rows in it, or no
#         `built_from:` to check. Suite-wide "cannot evaluate" code (EXIT-CODES.md).
#    18   STALE — at least one source has moved since it was registered
#    19   CONFLICT — a source is missing or unregistered, or staleness landed under
#         ticked criteria. Blocks.
# PRECEDENCE, AND WHY IT IS THE POINT: 22 outranks 19 outranks 18. So declaring
# `drift: STALE` honestly when sources are stale exits 18 and only WARNS, while
# declaring FRESH in the same situation exits 22 and FAILS THE BUILD. The ordering
# is an incentive gradient: telling the truth about your own staleness is
# mechanically cheaper than being optimistic about it. That is deliberate, and it
# is the only part of this script that changes behaviour rather than detecting it.
#
# Consequence worth knowing: while every file ships declaring `drift: FRESH`, most
# real degradation surfaces as 22 rather than 18/19. Codes 18 and 19 appear once a
# file declares its staleness honestly, or when `drift:` is absent.
#
#    22   DRIFT MISDECLARED — `drift:` claims a state better than the computed one.
#         The file is wrong about itself. Fix the field, not the script.
#
# Usage:
#     ./check-drift.sh                  check the gate files named in project.conf
#     ./check-drift.sh FILE [FILE...]   check these files instead

set -uo pipefail
cd "$(dirname "$0")"
[ -f project.conf ] && . ./project.conf
MANIFEST="${MANIFEST:-MANIFEST.md}"

if command -v sha256sum >/dev/null 2>&1; then HASH="sha256sum"
elif command -v shasum    >/dev/null 2>&1; then HASH="shasum -a 256"
else echo "BROKEN — no sha256sum or shasum on PATH; cannot hash anything."; exit 5; fi
hash_of() { $HASH "$1" 2>/dev/null | awk '{print substr($1,1,12)}'; }

if [ ! -f "$MANIFEST" ]; then
  echo "BROKEN — $MANIFEST not found."
  echo "The manifest is the only record of what each source hashed to when it was"
  echo "registered. Without it there is nothing to compare against, and 'no drift"
  echo "detected' would mean 'no drift computed'. Create it from the template."
  exit 5
fi

# manifest rows: | id | shelf | path | hash | feeds | maturity | added_at |
MROWS=$(grep -E '^\|[[:space:]]*S-[0-9]+' "$MANIFEST" || true)
NROWS=$(printf '%s' "$MROWS" | grep -c . || true)
manifest_hash() {
  printf '%s\n' "$MROWS" | awk -F'|' -v want="$1" '
    { gsub(/^[ \t]+|[ \t]+$/,"",$4); gsub(/^[ \t]+|[ \t]+$/,"",$5)
      if ($4==want) { print $5; exit } }'
}

TARGETS=(); if [ "$#" -gt 0 ]; then TARGETS=("$@")
else for f in "${GATE_1:-}" "${GATE_2:-}" "${GATE_3:-}"; do [ -n "$f" ] && TARGETS+=("$f"); done; fi

echo "======================================================================"
echo "SOURCE DRIFT — computed, not declared"
echo "======================================================================"
echo "manifest: $MANIFEST · $NROWS registered source(s) · hash: $HASH"

TOTAL_SRC=0; N_FRESH=0; N_STALE=0; N_CONFLICT=0; N_LIE=0; FILES_CHECKED=0
declare -a NOTES=()

for file in "${TARGETS[@]}"; do
  [ -f "$file" ] || { echo ""; echo "-- $file"; echo "   (skipped, not found)"; continue; }
  echo ""; echo "-- $file"

  DECLARED=$(awk '/^---[[:space:]]*$/{fm++; if(fm==2)exit; next} fm==1 && /^drift:/{sub(/^drift:[[:space:]]*/,""); sub(/[[:space:]]*#.*$/,""); gsub(/[[:space:]]/,""); print; exit}' "$file")
  SOURCES=$(awk '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && /^built_from:/ { inb=1; next }
    fm==1 && inb && /^[^[:space:]#]/ { inb=0 }
    fm==1 && inb && /^[[:space:]]*-[[:space:]]*/ {
      sub(/^[[:space:]]*-[[:space:]]*/,""); sub(/[[:space:]]*#.*$/,""); sub(/[[:space:]]+$/,"")
      if (length($0)) print
    }' "$file")

  TICKED=$(grep -cE '^[[:space:]]*-[[:space:]]*\[[xX]\]' "$file" || true)

  if [ -z "$SOURCES" ]; then
    echo "   (no built_from: entries — nothing to hash)"
    NOTES+=("$file: no built_from:, drift is unverifiable")
    continue
  fi
  FILES_CHECKED=$((FILES_CHECKED+1))
  FILE_WORST="FRESH"

  while IFS= read -r src; do
    [ -z "$src" ] && continue
    TOTAL_SRC=$((TOTAL_SRC+1))
    if [ ! -f "$src" ]; then
      printf '   CONFLICT  %-58s gone from disk\n' "$src"
      N_CONFLICT=$((N_CONFLICT+1)); FILE_WORST="CONFLICT"; continue
    fi
    want=$(manifest_hash "$src"); got=$(hash_of "$src")
    if [ -z "$want" ]; then
      printf '   CONFLICT  %-58s not in manifest (%s)\n' "$src" "$got"
      N_CONFLICT=$((N_CONFLICT+1)); FILE_WORST="CONFLICT"
    elif [ "$want" = "$got" ]; then
      printf '   fresh     %-58s %s\n' "$src" "$got"
      N_FRESH=$((N_FRESH+1))
    else
      printf '   STALE     %-58s %s -> %s\n' "$src" "$want" "$got"
      N_STALE=$((N_STALE+1))
      [ "$FILE_WORST" = "FRESH" ] && FILE_WORST="STALE"
    fi
  done <<< "$SOURCES"

  # the time-dimension twin: staleness under ticked criteria is a conflict
  if [ "$FILE_WORST" = "STALE" ] && [ "$TICKED" -gt 0 ]; then
    echo "   ^ escalated STALE -> CONFLICT: $TICKED ticked criteri(on/a) in this file were"
    echo "     verified against a corpus that has since moved. File-level, not"
    echo "     criterion-level — see the honest-limit note in this script's header."
    FILE_WORST="CONFLICT"; N_CONFLICT=$((N_CONFLICT+1))
  fi

  # the declared-vs-computed comparison
  rank() { case "$1" in FRESH) echo 0;; STALE) echo 1;; CONFLICT) echo 2;; *) echo -1;; esac; }
  if [ -z "$DECLARED" ]; then
    echo "   drift: (absent) · computed $FILE_WORST"
    NOTES+=("$file: no drift: field — add it, computed $FILE_WORST")
  else
    echo "   drift: $DECLARED (declared) · computed $FILE_WORST"
    if [ "$(rank "$DECLARED")" -ge 0 ] && [ "$(rank "$DECLARED")" -lt "$(rank "$FILE_WORST")" ]; then
      echo "   MISDECLARED — the file claims $DECLARED, the hashes say $FILE_WORST."
      N_LIE=$((N_LIE+1))
      NOTES+=("$file: drift: $DECLARED is wrong — computed $FILE_WORST")
    fi
  fi
done

echo ""
echo "----------------------------------------------------------------------"
if [ "$NROWS" -eq 0 ]; then
  echo "BROKEN — $MANIFEST has no parsable rows (expected '| S-001 | shelf | path | hash | ...')."
  echo "Zero registered sources is reported as a failure, not as 'nothing drifted'."
  exit 5
fi
if [ "$FILES_CHECKED" -eq 0 ]; then
  echo "BROKEN — no file carried a readable built_from: list, so nothing was hashed."
  echo "Reporting FRESH here would mean 'I checked nothing and found nothing wrong.'"
  for n in "${NOTES[@]:-}"; do [ -n "$n" ] && echo "   - $n"; done
  exit 5
fi
echo "$TOTAL_SRC source(s) across $FILES_CHECKED file(s) · $N_FRESH fresh · $N_STALE stale · $N_CONFLICT conflict"
if [ "${#NOTES[@]}" -gt 0 ]; then echo ""; echo "Notes:"; for n in "${NOTES[@]}"; do echo "   - $n"; done; fi
echo ""
if [ "$N_LIE" -gt 0 ];      then echo "DRIFT MISDECLARED — $N_LIE file(s) claim a better state than computed."; exit 22; fi
if [ "$N_CONFLICT" -gt 0 ]; then echo "CONFLICT — blocks. Re-register or restore the sources, then re-run."; exit 19; fi
if [ "$N_STALE" -gt 0 ];    then echo "STALE — warns. Reconcile against the moved sources when you next touch this."; exit 18; fi
echo "FRESH — every source hashes to its manifest row."
exit 0
