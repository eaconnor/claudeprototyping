#!/bin/bash
# check-blocked.sh — reads OPEN.md and reports what kind of stuck we are in.
#
# Exists because "blocked" is not one state. An agent that cannot tell a decision
# only a human can make from evidence nobody has gathered will either stall on
# something it could research, or — much worse — quietly guess at something that
# was never its call.
#
# Exit codes are the interface:
#   0  no human blockers        — research gaps may exist; proceed flagged
#   2  blocked on a human       — STOP and ask the named owner. Do not infer.
#   3  OPEN.md missing/unparsable — a missing register is a failure, not a skip
#
# Deliberately distinct from check-gates.sh's exit 1, so a caller can tell
# "a gate box is unticked" from "a person owes us an answer."

FILE="OPEN.md"

# ---- owner indirection, so a shipped register carries no real names ---------
#
# A row may name a SLOT instead of a person: `→ RESEARCH_OWNER`. The slot is
# resolved against project.conf here, so the template ships anonymous and each
# project's own kickoff answers decide who actually owes the decision.
#
# This does NOT weaken the rule below that an owner must be a person. It is the
# opposite: a bare function name ("research", "design", "the team") stays
# rejected, because it routes to nobody and cannot be resolved to anybody. A
# slot reference resolves to exactly one named person, or to UNASSIGNED — and
# UNASSIGNED then reports as unowned, which is the honest answer rather than a
# function name standing in for one.
[ -f "project.conf" ] && . ./project.conf 2>/dev/null

resolve_owner() {
  local o="$1"
  o="${o#→ }"; o="${o#-> }"
  case "$o" in
    ACCOUNTABLE_OWNER) echo "${ACCOUNTABLE_OWNER:-UNASSIGNED} (via ACCOUNTABLE_OWNER)" ;;
    RESEARCH_OWNER)    echo "${RESEARCH_OWNER:-UNASSIGNED} (via RESEARCH_OWNER)" ;;
    RISK_FUNCTION)     echo "${RISK_FUNCTION:-UNASSIGNED} (via RISK_FUNCTION)" ;;
    ESCALATION_PATH)   echo "${ESCALATION_PATH:-UNASSIGNED} (via ESCALATION_PATH)" ;;
    *)                 echo "$1" ;;
  esac
}

# ---- revisit dates: an honest unknown still has to expire -------------------
#
# UNASSIGNED is a legal answer. A row that can never age is not.
#
# Every other absence in this toolkit is time-bounded — a finding past its
# `review_by:` decays, drift is recomputed against a hash. Open rows had no
# clock at all, so a decision nobody made read identically on day 1 and day 130.
# That is the failure this register exists to catch and was itself committing:
# one unowned row rode five documents for thirteen days while every check
# reported it, unchanged, as simply "open".
#
# Pushing a date out is allowed. It is an edit to a dated field in a tracked
# file, which leaves a trace — and a visible override is the legitimate move
# here, where silence is not.
TODAY=$(date +%F)
days_between() { # $1 = earlier YYYY-MM-DD → whole days until today
  local t e
  t=$(date -j -f %Y-%m-%d "$TODAY" +%s 2>/dev/null) || return 1
  e=$(date -j -f %Y-%m-%d "$1" +%s 2>/dev/null)     || return 1
  echo $(( (t - e) / 86400 ))
}

if [ ! -f "$FILE" ]; then
  echo "BLOCKED — $FILE does not exist. A missing register is not an empty register."
  exit 3
fi

# Rows live between '## Open rows' and the next '## '. Skip the header and the
# |---|---| separator. Field 2 is id, field 3 is kind.
rows=$(awk -F'|' '
  /^## Open rows/{flag=1; next}
  /^## /{flag=0}
  flag && /^\|/ && $2 !~ /^ *id *$/ && $2 !~ /^ *-+ *$/ && $3 !~ /^ *-+ *$/ {print}
' "$FILE")

if [ -z "$rows" ]; then
  echo "BLOCKED — no parsable rows found under '## Open rows' in $FILE."
  exit 3
fi

trim() { echo "$1" | sed 's/^ *//; s/ *$//'; }

human=0; research=0; accepted=0; unknown=0
human_lines=""
unowned=0
undated=0; overdue=0; undated_lines=""; overdue_lines=""

while IFS= read -r line; do
  [ -z "$line" ] && continue
  id=$(trim "$(echo "$line" | awk -F'|' '{print $2}')")
  kind=$(trim "$(echo "$line" | awk -F'|' '{print $3}')")
  q=$(trim "$(echo "$line" | awk -F'|' '{print $4}')")
  owner=$(trim "$(echo "$line" | awk -F'|' '{print $5}')")
  owner=$(resolve_owner "$owner")
  revisit=$(trim "$(echo "$line" | awk -F'|' '{print $8}')")

  # Only a PENDING row needs a clock. An ACCEPTED row is a decision already
  # taken and recorded — "carried until a build exists" is a complete answer,
  # not something to chase.
  case "$kind" in
    HUMAN|RESEARCH)
      case "$revisit" in
        ""|*‹*|*›*|TBD|tbd|n/a|N/A|-|—)
          undated=$((undated+1))
          undated_lines="${undated_lines}  [$id] no revisit date
" ;;
        [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9])
          age=$(days_between "$revisit") || age=""
          if [ -n "$age" ] && [ "$age" -gt 0 ]; then
            overdue=$((overdue+1))
            overdue_lines="${overdue_lines}  [$id] ${age} day(s) past $revisit · owner: ${owner}
" ;
          fi ;;
        *)
          undated=$((undated+1))
          undated_lines="${undated_lines}  [$id] revisit '$revisit' is not a YYYY-MM-DD date
" ;;
      esac ;;
  esac
  # AN UNNAMED OWNER AND A PLACEHOLDER OWNER ARE THE SAME THING. `${owner:-UNASSIGNED}`
  # caught the empty cell but not `‹you›`, which is what the skeleton ships — so a row
  # owned by a template placeholder printed as though it had a real owner, in the one
  # script whose whole job is "a person owes you an answer." Found 2026-09-18 while
  # setting up a real project: two rows read `owner: ‹you›` and nothing objected.
  # check-evidence.sh already refuses non-names; the rule was enforced in one register
  # out of five.
  case "$owner" in
    ""|unassigned|UNASSIGNED|unowned|tbd|TBD|n/a|N/A|none|-|—|*‹*|*›*|    ux|UX|research|Research|design|Design|product|Product|team|"the team"|everyone|you|You)
      owner="UNASSIGNED" ;;
  esac
  case "$kind" in
    HUMAN)    human=$((human+1))
              # count only HUMAN rows: the message below says "row(s) above", and only
              # HUMAN rows are printed above it. Counting every kind made it claim 3
              # when 2 were listed — a small lie, in a script about accountability.
              [ "$owner" = "UNASSIGNED" ] && unowned=$((unowned+1))
              human_lines="${human_lines}  [$id] owner: ${owner}
      $q
" ;;
    RESEARCH) research=$((research+1)) ;;
    ACCEPTED) accepted=$((accepted+1)) ;;
    *)        unknown=$((unknown+1)); echo "WARNING — row $id has unrecognised kind '$kind' (expected HUMAN/RESEARCH/ACCEPTED)." ;;
  esac
done <<< "$rows"

total=$((human+research+accepted+unknown))

echo "OPEN.md — $total open rows: $human HUMAN · $research RESEARCH · $accepted ACCEPTED$([ "$unknown" -gt 0 ] && echo " · $unknown UNRECOGNISED")"
echo ""

report_ageing() {
  [ "$overdue" -eq 0 ] && [ "$undated" -eq 0 ] && return 0
  echo ""
  if [ "$overdue" -gt 0 ]; then
    echo "PAST ITS REVISIT DATE — $overdue row(s). Somebody said they would come back to"
    echo "these and has not:"
    echo ""
    printf '%s' "$overdue_lines"
    echo ""
    echo "  Overdue is not the same as unresolved. These were parked deliberately, with"
    echo "  a date attached, and the date has passed — so the parking is no longer a"
    echo "  decision, it is a habit. Either resolve it, or move the date and leave the"
    echo "  trace. Moving it is legitimate; letting it sit undated is what is not."
  fi
  if [ "$undated" -gt 0 ]; then
    echo ""
    echo "NO REVISIT DATE — $undated pending row(s) cannot age:"
    echo ""
    printf '%s' "$undated_lines"
    echo ""
    echo "  An undated row reads the same on day 1 and day 130, so nothing can tell a"
    echo "  fresh unknown from an abandoned one. UNASSIGNED is a legal answer; a row"
    echo "  that can never expire is not. Put a date in the revisit column — it is a"
    echo "  guess about when this will be worth chasing, not a commitment."
  fi
}

if [ "$human" -gt 0 ]; then
  echo "BLOCKED ON A HUMAN — $human decision(s) that no amount of research resolves:"
  echo ""
  printf '%s' "$human_lines"
  echo "Do not infer these, do not pick a sensible default, do not proceed provisionally."
  echo "Ask the named owner. If the owner is UNASSIGNED, that is itself the first question."
  if [ "$unowned" -gt 0 ]; then
    echo ""
    echo "  $unowned row(s) above have no named owner — either blank, a template"
    echo "  placeholder, or a function rather than a person. A decision routed to"
    echo "  \"design\" or to \"you\" is routed to nobody, and it will sit here. Naming"
    echo "  the person is cheaper than the row is."
  fi
  report_ageing
  exit 2
fi

if [ "$research" -gt 0 ]; then
  echo "No human decisions outstanding. $research research gap(s) remain —"
  echo "may proceed flagged, must not claim validation."
fi


report_ageing
echo ""
echo "Clear of human blockers."
exit 0
