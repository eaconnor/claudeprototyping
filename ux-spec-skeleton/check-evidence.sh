#!/bin/bash
# check-evidence.sh — does this project have anywhere that evidence actually lives?
#
# THIS IS THE ONBOARDING GATE, AND WHAT IT REQUIRES IS NARROWER THAN IT FIRST LOOKS.
# The naive version of "make UX mandatory" requires a method: do a datadump, run a
# study, code your interviews. That version fails for a reason worth writing down:
#
#   - a team whose research already lives in a Condens repository with a tag taxonomy
#     does not need a datadump file, and requiring one produces a decorative artifact
#   - the datadump shape this skeleton ships as a template came from grounded-theory
#     axial coding, which is one person's method. Requiring it of anyone else is
#     theatre — they will fill in the headings and nothing will have been learned
#
# So the mandatory thing is NOT a method and NOT a file. It is: SOMEWHERE IS NAMED,
# AND IT RESOLVES. `method:` in EVIDENCE.md is free text, and `none yet` is a legal
# value — a visible gap beats a fabricated process.
#
# WHAT COUNTS AS SET UP. A row whose kind is `template` does NOT count. Shipping with
# a pointer at the blank template is the state every fresh clone starts in, and
# treating it as satisfied would make this gate green on day one for every project
# that had done nothing. That is the false-green pattern this suite exists to kill.
#
# THE SPLIT THAT KEEPS THIS HONEST. Kinds divide into two groups:
#
#   RESOLVABLE   local-file, local-dir, template   the path is on disk; we check it
#   DECLARED     condens, confluence, jira, repo   we cannot check it from CI
#
# A `condens` row is a perfectly good answer — arguably a better one than a local
# file, since a research repository outlives a project. But this script runs without
# credentials and will not pretend otherwise: declared rows are counted separately and
# labelled, never folded into a number that reads like verification. Making an API
# call here was considered and rejected — a check that passes only when someone's
# token is valid fails for reasons unrelated to what it measures, and teams learn to
# ignore it. The honest limit is stated in EVIDENCE.md and printed in the output.
#
# Exit codes:
#     0   at least one evidence home is set up, and every resolvable locator resolves
#     5   cannot evaluate — EVIDENCE.md missing or no parsable rows
#    28   NOT SET UP — no evidence home beyond the blank template. Onboarding is
#         incomplete. This is the state a fresh clone ships in, on purpose.
#    29   BROKEN LOCATOR — a row names a local path that is not there
#
# Usage:
#     ./check-evidence.sh              check EVIDENCE.md
#     ./check-evidence.sh FILE         check a different register

set -uo pipefail
ORIG_PWD="$PWD"
ARGS=()
for a in "$@"; do
  case "$a" in
    /*) ARGS+=("$a") ;;
    *)  ARGS+=("$ORIG_PWD/$a") ;;
  esac
done
cd "$(dirname "$0")"
[ -f project.conf ] && . ./project.conf

REG="${ARGS[0]:-${EVIDENCE:-EVIDENCE.md}}"

echo "======================================================================"
echo "EVIDENCE HOMES — is there anywhere to look?"
echo "======================================================================"

if [ ! -f "$REG" ]; then
  echo "BROKEN — $REG not found."
  echo "A project with no evidence register has not been onboarded. Copy EVIDENCE.md"
  echo "from the skeleton; it ships with the one template row and nothing else."
  exit 5
fi

# Rows: | E-001 | kind | `locator` | method | owner | resolves |
#
# ANCHORED TO THE SECTION, NOT GREPPED FILE-WIDE. Found 2026-09-17: EVIDENCE.md's own
# prose contains an illustrative `| E-002 | condens | ... |` row showing what a filled
# register looks like. A file-wide grep parsed that example as real data, so a fresh
# skeleton reported "1 evidence home set up" and exited 0 when nothing was set up. A
# documentation example silently became a passing result — the exact false-green class
# this suite exists to catch, and the same shape as the `PROCEED | PROCEED-FLAGGED`
# pipe-enumeration trap already documented in check-judgment.sh.
ROWS=$(awk '/^## The register/{f=1;next} f && /^## /{f=0} f' "$REG" \
       | grep -E '^\|[[:space:]]*E-[0-9]+' || true)
NROWS=$(printf '%s' "$ROWS" | grep -c . || true)
if [ "$NROWS" -eq 0 ]; then
  echo "BROKEN — $REG has no parsable rows (expected '| E-001 | kind | locator | ...')."
  echo "Zero rows is reported as a failure, not as 'no problems found'."
  exit 5
fi

SETUP=0; TEMPLATE=0; DECLARED=0; RESOLVED=0; BROKEN=0; UNOWNED=0; OWNED_SETUP=0
declare -a NOTES=()

field() { printf '%s' "$1" | awk -F'|' -v n="$2" '{gsub(/^[ \t]+|[ \t]+$/,"",$n); gsub(/`/,"",$n); print $n}'; }

while IFS= read -r row; do
  [ -z "$row" ] && continue
  id=$(field "$row" 2); kind=$(field "$row" 3); loc=$(field "$row" 4)
  meth=$(field "$row" 5); owner=$(field "$row" 6)
  [ -z "$id" ] && continue

  # THE OWNER IS THE POINT, NOT A NICETY. Onboarding is the research owner's job to do
  # and their call to make, so the register has to say who that is. A home with a
  # locator and no named person is a pointer nobody maintains.
  OWNED_ROW=1
  case "$owner" in
    ""|unassigned|unowned|tbd|TBD|*‹*)
      OWNED_ROW=0
      # The blank `template` row is unowned BY DEFINITION — it is the placeholder every
      # fresh clone ships with. Counting it made the summary contradict itself ("1 with an
      # owner" alongside "1 row(s) have no owner"), which is the kind of output that
      # teaches people the script is noisy.
      [ "$kind" != "template" ] && UNOWNED=$((UNOWNED+1))
      ;;
  esac

  case "$kind" in
    template)
      printf '   %-7s %-11s %-42s template — NOT set up\n' "$id" "$kind" "$loc"
      TEMPLATE=$((TEMPLATE+1))
      if [ ! -e "$loc" ]; then
        printf '   %-7s BROKEN — template locator does not exist: %s\n' "$id" "$loc"
        BROKEN=$((BROKEN+1))
      fi
      ;;
    local-file)
      if [ -f "$loc" ]; then
        printf '   %-7s %-11s %-42s resolved\n' "$id" "$kind" "$loc"
        RESOLVED=$((RESOLVED+1)); SETUP=$((SETUP+1)); [ "$OWNED_ROW" -eq 1 ] && OWNED_SETUP=$((OWNED_SETUP+1))
      else
        printf '   %-7s %-11s %-42s BROKEN — no such file\n' "$id" "$kind" "$loc"
        BROKEN=$((BROKEN+1))
      fi
      ;;
    local-dir)
      if [ -d "$loc" ] && [ -n "$(ls -A "$loc" 2>/dev/null)" ]; then
        printf '   %-7s %-11s %-42s resolved (%s entries)\n' "$id" "$kind" "$loc" "$(ls -A "$loc" | wc -l | tr -d ' ')"
        RESOLVED=$((RESOLVED+1)); SETUP=$((SETUP+1)); [ "$OWNED_ROW" -eq 1 ] && OWNED_SETUP=$((OWNED_SETUP+1))
      elif [ -d "$loc" ]; then
        printf '   %-7s %-11s %-42s BROKEN — directory is empty\n' "$id" "$kind" "$loc"
        BROKEN=$((BROKEN+1))
      else
        printf '   %-7s %-11s %-42s BROKEN — no such directory\n' "$id" "$kind" "$loc"
        BROKEN=$((BROKEN+1))
      fi
      ;;
    *)
      # OPEN BY DESIGN. The kinds named in EVIDENCE.md are the ones this script knows
      # how to CHECK, not the ones it permits. The person assigned to research decides
      # where their evidence lives — an Airtable, a shared drive, a notebook, a tool
      # nobody here has heard of. A script that rejected those would be dictating
      # method, which is the thing this gate deliberately does not do. Anything not
      # locally resolvable is DECLARED: counted, labelled unverifiable, and trusted.
      printf '   %-7s %-11s %-42s declared (not checkable here)\n' "$id" "$kind" "$loc"
      DECLARED=$((DECLARED+1)); SETUP=$((SETUP+1)); [ "$OWNED_ROW" -eq 1 ] && OWNED_SETUP=$((OWNED_SETUP+1))
      ;;
  esac

  case "$meth" in
    ""|*‹*) NOTES+=("$id: method is unset. 'none yet' is a legal value; blank is not — it reads as an oversight rather than a decision.") ;;
  esac
done <<< "$ROWS"

echo ""
echo "----------------------------------------------------------------------"
echo "$NROWS row(s) · $SETUP set up · $RESOLVED resolved on disk · $DECLARED declared only · $TEMPLATE template · $BROKEN broken"

if [ "$DECLARED" -gt 0 ]; then
  echo ""
  echo "NOTE — $DECLARED row(s) are DECLARED, not verified. This script has no"
  echo "credentials and did not contact Condens, Confluence or Jira. 'declared' means"
  echo "someone wrote down a locator; it does not mean anything is there. See the"
  echo "honest-limit section of EVIDENCE.md."
fi
if [ "$UNOWNED" -gt 0 ]; then
  NOTES+=("$UNOWNED row(s) have no owner. An evidence home with no owner goes stale with nobody noticing.")
fi
if [ "${#NOTES[@]}" -gt 0 ]; then
  echo ""; echo "Notes:"; for n in "${NOTES[@]}"; do echo "   - $n"; done
fi

echo ""
if [ "$BROKEN" -gt 0 ]; then
  echo "BROKEN LOCATOR — $BROKEN row(s) point at something that is not there."
  echo "A register that names a missing path is worse than an empty one: it reads as"
  echo "set up to everyone who does not check."
  exit 29
fi
if [ "$SETUP" -gt 0 ] && [ "$OWNED_SETUP" -eq 0 ]; then
  echo "NOT SET UP — $SETUP evidence home(s) named, but not one has an owner."
  echo ""
  echo "Setting this up is the job of whoever is assigned to research on this project,"
  echo "and the register has to say who that is. Put a name in the owner column of the"
  echo "row you actually rely on. 'unassigned' is the state a fresh clone ships in."
  exit 28
fi
if [ "$SETUP" -eq 0 ]; then
  echo "NOT SET UP — no evidence home beyond the blank template."
  echo ""
  echo "Two ways to fix this, and neither is 'adopt somebody else's method':"
  echo "  A  cp templates/DATADUMP.template.md briefs/datadump-\$(date +%F).md"
  echo "     fill in method: with what you actually do, register it as local-file"
  echo "  B  register where your research already lives — a condens/confluence/jira"
  echo "     row with a stated method is a complete answer, not a lesser one"
  exit 28
fi
echo "SET UP — $SETUP evidence home(s) named, $OWNED_SETUP with an owner."
echo "This says a place exists and was named. It says nothing about whether the"
echo "evidence in it is any good; no script can. That is what RITUALS.md is for."
exit 0
