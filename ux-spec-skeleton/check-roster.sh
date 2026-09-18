#!/bin/bash
# check-roster.sh — is the kickoff's own output actually filled in?
#
# CONSOLIDATED 2026-09-18 from a short-lived separate skeleton (ux-kickoff-skeleton)
# built the same day, then folded back in here on the reasoning that one repo with
# fourteen scripts beats two repos that both look half-finished. This is the ONLY
# script this repo gained from that detour — the others (check-gates.sh,
# check-blocked.sh) were copies of what already existed here.
#
# THE GAP THIS CLOSES. check-evidence.sh established that a location and an owner
# are mandatory for research, a method is not. This script asks the same question
# one level up: before any gate content exists, does this project know who is
# accountable for what, and where a disagreement goes?
#
# A cognitive walkthrough of a UX kickoff (2026-09-18) found the roster and RACI
# genuinely change mid-meeting — assignments get corrected, doubled cells get
# named, an escalation path gets chosen — and none of that has anywhere to live
# until it is written down. This is that place, and this is the check that it was
# actually written rather than left as placeholders.
#
# WHAT THIS DOES NOT DO. It cannot tell you the RACI is CORRECT — only that every
# slot has a real name in it rather than a placeholder or a function. Whether one
# person should be R and A on the same area with no independent check is a
# judgment call for the room, not something a script can rule on.
#
# Exit codes:
#   0   ROSTER, ACCOUNTABLE_OWNER, RESEARCH_OWNER and ESCALATION_PATH all name a
#       real person; RISK_FUNCTION is either named or explicitly UNASSIGNED
#   3   project.conf missing, or ROSTER is empty/unparsable — SHARED with
#       check-blocked.sh/check-risk.py's "the register is missing" meaning, not a
#       collision: "nothing to check" is never a pass in either script.
#   33  a required field is a placeholder, a function, or blank

[ -f ./project.conf ] && . ./project.conf

FAIL=0

is_name() {
  local v
  v=$(printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//')
  [ -z "$v" ] && return 1
  case "$v" in *‹*|*›*) return 1 ;; esac
  case "$v" in
    # QUOTED ON PURPOSE. `?` and `???` are glob patterns in a bare case statement,
    # not literal characters — unquoted, `?` matches any 1-character value. This
    # exact bug rejected every 3-letter name in ux-spec-skeleton's check-evidence.sh
    # until a cold-onboarding run caught it 2026-09-18. Fixed here from the start.
    unassigned|unowned|tbd|tba|n/a|na|none|nobody|'-'|'—'|'?'|'??'|'???') return 1 ;;
    ux|uxr|research|researcher|"the researcher"|"research team"|"ux team"|"ux research") return 1 ;;
    design|"design team"|product|"product team"|eng|engineering|"eng team"|qa|ops) return 1 ;;
    team|"the team"|everyone|all|us|we|someone|anyone|"whoever"|"whoever is free") return 1 ;;
  esac
  return 0
}

echo "======================================================================"
echo "ROSTER & RACI — has the kickoff's own output been written down?"
echo "======================================================================"

if [ ! -f project.conf ]; then
  echo "BROKEN — project.conf not found."
  exit 3
fi

# PROCESS_TIER=skinny means this project's RACI/escalation lives outside this
# repo, on purpose (see README-SKINNY.md). Reporting BLOCKED here would nag a
# team for an answer they've deliberately placed elsewhere.
if [ "${PROCESS_TIER:-full}" = "skinny" ]; then
  echo "not applicable — PROCESS_TIER=skinny. This project's RACI and escalation"
  echo "path live outside this repo. See README-SKINNY.md if that was not the"
  echo "intent — the default is \"full\" for a reason."
  exit 0
fi

if [ -z "${ROSTER+x}" ] || [ "${#ROSTER[@]}" -eq 0 ]; then
  echo "BROKEN — ROSTER is empty or unset in project.conf."
  echo ""
  echo "Reporting 0 here would mean 'I checked nothing and found nothing wrong.'"
  echo "Add at least one line — NAME | ROLE | PRODUCT-RACI | DESIGN-RACI |"
  echo "RESEARCH-RACI | ENGINEERING-RACI — before this can say anything."
  exit 3
fi

echo "Roster (${#ROSTER[@]} row(s)):"
n_ok=0; n_bad=0
for row in "${ROSTER[@]}"; do
  name=$(printf '%s' "$row" | awk -F'|' '{gsub(/^[ \t]+|[ \t]+$/,"",$1); print $1}')
  role=$(printf '%s' "$row" | awk -F'|' '{gsub(/^[ \t]+|[ \t]+$/,"",$2); print $2}')
  if is_name "$name" && [ -n "$role" ] && [[ ! "$role" == *"‹"* ]]; then
    printf '   ok      %-20s %s\n' "$name" "$role"
    n_ok=$((n_ok+1))
  else
    printf '   BLOCKED %-20s no real name, or no stated project role\n' "${name:-<blank>}"
    n_bad=$((n_bad+1)); FAIL=1
  fi
done
echo ""

if [ "$n_bad" -gt 0 ]; then
  echo "$n_bad of $((n_ok+n_bad)) roster row(s) are placeholders — a name and a"
  echo "stated project role are both required. RACI cells may legitimately be"
  echo "blank; the person and their role may not."
fi

echo "Required project-level fields:"
for pair in "ACCOUNTABLE_OWNER:${ACCOUNTABLE_OWNER:-}" "RESEARCH_OWNER:${RESEARCH_OWNER:-}" "ESCALATION_PATH:${ESCALATION_PATH:-}"; do
  field="${pair%%:*}"; val="${pair#*:}"
  if is_name "$val"; then
    printf '   ok      %-18s %s\n' "$field" "$val"
  else
    printf '   BLOCKED %-18s "%s" is not a real person\n' "$field" "$val"
    FAIL=1
  fi
done

# RISK_FUNCTION is the one field where UNASSIGNED is legal — it becomes a HUMAN row
# in OPEN.md rather than a hard block here, matching ux-spec-skeleton's own pattern
# of not gating on a field until the action that needs it actually arrives.
rf="${RISK_FUNCTION:-}"
rf_norm=$(printf '%s' "$rf" | tr '[:upper:]' '[:lower:]')
if [ "$rf_norm" = "unassigned" ] || [ -z "$rf" ]; then
  printf '   NOTED   %-18s UNASSIGNED — legal for now; becomes an OPEN.md HUMAN row\n' "RISK_FUNCTION"
  printf '           the moment a T3 signature is actually needed\n'
elif is_name "$rf"; then
  printf '   ok      %-18s %s\n' "RISK_FUNCTION" "$rf"
else
  printf '   BLOCKED %-18s "%s" is a placeholder, not a name and not UNASSIGNED\n' "RISK_FUNCTION" "$rf"
  FAIL=1
fi

echo ""
tested="${ESCALATION_PATH_TESTED:-false}"
if [ "$tested" = "false" ]; then
  echo "NOTE — ESCALATION_PATH_TESTED is false. Naming an escalation path is not the"
  echo "same as it working. Treat the first real conflict that goes through it as"
  echo "also a test of whether it holds, and flip this once it has."
fi

eb="${EVIDENCE_BASIS:-}"
case "$eb" in
  HYPOTHESES) echo "NOTE — EVIDENCE_BASIS: HYPOTHESES. Legitimate at kickoff. FLOOR invariants" ;;
  FINDINGS|MIXED) : ;;
  *) echo "BROKEN — EVIDENCE_BASIS is '$eb', expected HYPOTHESES | FINDINGS | MIXED."; FAIL=1 ;;
esac
if [ "$eb" = "HYPOTHESES" ]; then
  echo "        (accessibility, data integrity, lawfulness, security) still apply —"
  echo "        this field never gates them."
fi

echo ""
echo "----------------------------------------------------------------------"
if [ "$FAIL" -eq 1 ]; then
  echo "BLOCKED — one or more roster/RACI fields is a placeholder rather than an"
  echo "answer. This is not a quality judgment on the RACI itself, only on whether"
  echo "it was actually written down."
  exit 33
fi
echo "Roster and RACI are filled. This says nothing about whether they are RIGHT —"
echo "only a room of real people can judge that."
exit 0
