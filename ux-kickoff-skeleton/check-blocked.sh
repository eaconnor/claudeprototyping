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

while IFS= read -r line; do
  [ -z "$line" ] && continue
  id=$(trim "$(echo "$line" | awk -F'|' '{print $2}')")
  kind=$(trim "$(echo "$line" | awk -F'|' '{print $3}')")
  q=$(trim "$(echo "$line" | awk -F'|' '{print $4}')")
  owner=$(trim "$(echo "$line" | awk -F'|' '{print $5}')")
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
  exit 2
fi

if [ "$research" -gt 0 ]; then
  echo "No human decisions outstanding. $research research gap(s) remain —"
  echo "may proceed flagged, must not claim validation."
fi

echo "Clear of human blockers."
exit 0
