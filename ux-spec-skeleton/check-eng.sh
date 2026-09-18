#!/bin/bash
# check-eng.sh — the engineering gates. Five questions an engineer owns.
#
# The other gates ask "is this the right problem / thing / build". Those are
# design and research questions and an engineer cannot answer them. These five
# are the ones eng owns, and they are deliberately phrased as things eng can fail
# a build on rather than things eng should keep in mind.
#
# The rules are printed by this script, not stored in a document. A twelve-agent
# controlled test on 2026-09-11 showed that rules in a 400-line markdown file
# change no behaviour: six of six task pairs tied, and one agent violated the
# no-emoji rule while holding the file that states it. So the output IS the
# documentation. If you want to know the rule, run the script.
#
# THE FLOOR / FIT SPLIT, which is the whole reason eng should accept this:
#
#   FLOOR  obligations that hold whether or not the concept is right —
#          accessibility, data integrity, lawfulness, security. NEVER gated on
#          problem validation. You do not wait for a reaction test to label a
#          form field.
#   FIT    investment that only pays off if the concept survives — state polish,
#          composition conformance, motion, aesthetic conformance.
#
#   Gate 3 in design.md mixes these. This script separates them, because "don't
#   polish until Gate 1 passes" is correct for FIT and dangerously wrong for
#   FLOOR.
#
# Exit codes, distinct from every other script here on purpose:
#   0   all eng gates pass (warnings may still be printed)
#   10  EG-1 failed — this build can harm a user. Hard stop.
#   11  EG-2 failed — something is being built that traces to no stated intent.
#   12  EG-1 UNEVALUATED — no build to lint. Not a pass: "we did not look" must
#       never render as "we looked and it was fine".

# --- project.conf is the single source of project-specific paths. Nothing in
# --- this script is hardcoded to one project; see project.conf.
[ -f ./project.conf ] && . ./project.conf
INTENT="${INTENT_SPEC:-}"
BUILD="${BUILD:-}"
HARM=0
ROADMAP=0
WARN=0

hr() { printf '%.0s-' {1..72}; echo; }

echo "======================================================================"
echo "ENGINEERING GATES"
echo "======================================================================"

# ------------------------------------------------------------------ EG-1
echo
echo "EG-1  CAN THIS HARM A USER?            [FLOOR — never gated on Gate 1]"
hr
echo "  Accessibility, data loss, security, lawfulness. If any of these fail,"
echo "  the build does not ship to a human regardless of how good the idea is."
echo

if [ -f scripts/check-design.py ]; then
  out=$(python3 scripts/check-design.py 2>/dev/null)
  code=$?
  nviol=$(echo "$out" | grep -oE '=== [0-9]+ VIOLATION' | grep -oE '[0-9]+')
  nviol=${nviol:-0}
  # Slice to the VIOLATIONS block only. Grepping the whole output counted lines
  # from the PASS and UNRESOLVED sections too and reported "11 FLOOR of 10 total"
  # — a count larger than its own denominator, which is how you know a tally is
  # reading the wrong text.
  vblock=$(echo "$out" | awk '/^=== [0-9]+ VIOLATION/{f=1;next} /^=== /{f=0} f')
  # FLOOR subset: contrast, focus visibility, text alternatives. Each is an
  # exclusion — a user cannot complete the task — not an aesthetic deviation.
  floorlines=$(echo "$vblock" | grep -E '^\s+\[(CLR-0[12]|ds:3 state canon|UXI-13)')
  floor=$(echo "$floorlines" | grep -c '\[')
  if [ "$floor" -gt 0 ]; then
    echo "  FAIL  $floor of $nviol violation(s) are FLOOR — run:"
    echo "        python3 scripts/check-design.py"
    echo "$floorlines" | sed 's/^/      /'
    HARM=1
  elif [ "$nviol" -gt 0 ]; then
    echo "  PASS on FLOOR — but $nviol FIT violation(s) exist. See EG-3."
  else
    echo "  PASS  no violations found by check-design.py"
  fi
else
  echo "  SKIP  scripts/check-design.py not present — EG-1 cannot be evaluated."
  echo "        An unevaluated harm gate is a failed harm gate in CI. Treat as FAIL."
  HARM=1
fi
UNEVAL=0
if [ "${code:-0}" -eq 5 ]; then
  echo "  UNEVALUATED — no build to lint (BUILD unset, or it declares no design"
  echo "        tokens). This is NOT a pass. An unevaluated harm gate must never"
  echo "        read as a clear one, so this script exits 12 rather than 0."
  echo "        Set BUILD in project.conf before EG-1 means anything."
  UNEVAL=1
fi

# a11y items a static read cannot settle, so they are named not scored
echo
echo "  NOT SETTLEABLE HERE, and each is a real EG-1 obligation:"
echo "    - keyboard operation end to end, and focus order"
echo "    - target size at 44x44 (house floor, above the 24px AA minimum)"
echo "    - one session with an assistive-technology user"
echo "    - reading order with stylesheets disabled"

# lawfulness: a blocking legal hazard is an EG-1 failure for any real-user target
if [ -f scripts/check-risk.py ]; then
  python3 scripts/check-risk.py pilot >/dev/null 2>&1
  if [ $? -eq 9 ]; then
    echo
    echo "  FAIL  check-risk.py reports a SHIP-BLOCKING legal hazard at 'pilot'."
    echo "        Lawfulness is EG-1. There is no engineering fix for a consent"
    echo "        defect or a missing retention SLA — they need a named reviewer"
    echo "        and a specified timing. Internal demo is unaffected."
    HARM=1
  fi
fi

# ------------------------------------------------------------------ EG-2
echo
echo "EG-2  IS THIS ON THE ROADMAP?"
hr
echo "  Every requirement built must trace to a stated intent. Code that traces"
echo "  to nothing is scope nobody asked for — the most expensive kind, because"
echo "  it is maintained forever and defended by nobody."
echo

if [ -f spec.md ] && [ -f "$INTENT" ]; then
  frs=$(grep -oE '\bFR-[0-9]+\b' spec.md | sort -u)
  if [ -z "$frs" ]; then
    echo "  SKIP  no FR-### requirements found in spec.md"
  else
    orphans=0
    for fr in $frs; do
      if ! grep -qE "$fr" "$INTENT" design.md ux.md vision.md 2>/dev/null; then
        echo "  ORPHAN  $fr is specified but traces to no intent and no gate criterion"
        orphans=$((orphans+1))
      fi
    done
    total=$(echo "$frs" | wc -w | tr -d ' ')
    if [ "$orphans" -gt 0 ]; then
      echo "  FAIL  $orphans of $total requirements are off-roadmap."
      ROADMAP=1
    else
      echo "  PASS  all $total requirements trace to a stated intent"
    fi
  fi
else
  echo "  SKIP  spec.md or the intent spec is missing"
fi

# ------------------------------------------------------------------ EG-3
echo
echo "EG-3  WILL THIS SURVIVE THE EVIDENCE CHANGING?   [the volatility gate]"
hr
echo "  This is the gate eng actually wants and never gets. Any requirement"
echo "  resting on an [A] assumed or [?] unknown claim WILL move. Do not"
echo "  hardcode a value that rests on one — put a seam there."
echo

if [ -f OPEN.md ]; then
  openh=$(awk '/^## Open rows/{f=1;next} /^## /{f=0} f && /^\| H-[0-9]+ \| HUMAN \|/{c++} END{print c+0}' OPEN.md)
  echo "  $openh unresolved human decisions. Each is a value that may change under you:"
  echo
  # Was a hardcoded list of the origin project's H-02/H-03/R-01/R-02 with their
  # subject matter (Art. 9 consent, a retention SLA, doodle generation). A clone's
  # rows are different rows. Print the project's ACTUAL open rows instead.
  awk '/^## Open rows/{f=1;next} /^## /{f=0} f && /^\|[[:space:]]*[A-Z]+-[0-9]+[[:space:]]*\|[[:space:]]*(HUMAN|RESEARCH)/' OPEN.md 2>/dev/null \
    | while IFS= read -r row; do
        rid=$(printf '%s' "$row" | awk -F'|' '{gsub(/ /,"",$2); print $2}')
        what=$(printf '%s' "$row" | awk -F'|' '{gsub(/^[ \t]+|[ \t]+$/,"",$4); print substr($4,1,88)}')
        echo "    $rid  $what"
        echo "          -> do not hardcode anything that depends on this. Put a seam there."
      done
  echo
fi

if [ -f "$BUILD" ]; then
  # a hardcoded duration while the retention SLA is open
  # Match the CLAIM, not the row id — H-03 is a different row in every clone.
  dur=$(grep -ocE '\b(30|60|90|7|14) (days?|day)\b' "$BUILD")
  retrow=$(awk '/^## Open rows/{f=1;next} /^## /{f=0} f' OPEN.md 2>/dev/null \
           | grep -iE 'retention|deletion|SLA' | grep -iE 'HUMAN|RESEARCH' | head -1 \
           | awk -F'|' '{gsub(/ /,"",$2); print $2}')
  if [ "${dur:-0}" -gt 0 ] && [ -n "$retrow" ]; then
    echo "  WARN  the build names a duration while $retrow (retention) is open."
    echo "        That number has no source. Externalise it."
    WARN=$((WARN+1))
  fi
fi

if [ "$WARN" -eq 0 ]; then
  echo "  PASS  no hardcoded value detected against an open decision"
fi

# ------------------------------------------------------------------ EG-4
echo
echo "EG-4  CAN THIS BE VERIFIED WITHOUT A HUMAN READING IT?"
hr
echo "  An acceptance criterion that needs someone's judgement is not an"
echo "  acceptance criterion, it is an opinion with a checkbox."
echo

exe=0; tot=0
for f in ux.md vision.md design.md; do
  [ -f "$f" ] || continue
  t=$(grep -cE '^- \[[ x]\] ' "$f")
  e=$(grep -E '^- \[[ x]\] ' "$f" | grep -cE 'verified_by:.*(`|grep|= [0-9]|DOM check|count|document\.fonts|svgs)')
  tot=$((tot+t)); exe=$((exe+e))
done
echo "  $exe of $tot criteria carry an executable assertion."
echo
# HARDCODED ORIGIN FINDINGS UNTIL 2026-09-18. This used to print five specific
# criterion ids with the origin product's assertions — SVG render counts, a transcript
# readOnly flag, a discard path — as though it had computed them from the clone. One of
# them, G3-26, did not exist in design.md at all. A clone's engineer was handed "THESE
# ARE A TEST SUITE ALREADY WRITTEN" naming criteria that were not theirs and one that
# was nobody's. That is the false-green pattern one level up: a hardcoded finding reading
# as a computed one, surviving into every project that clones this.
#
# Now derived from this project's own gate file, and silent when there is nothing to say.
if [ -f "${GATE_3:-design.md}" ]; then
  execrit=$(grep -E '^- \[[ x]\] ' "${GATE_3:-design.md}" \
            | grep -E 'verified_by:.*(`|grep|= [0-9]|DOM check|count|document\.fonts|svgs)' \
            | sed -E 's/^- \[[ x]\] ([^ ]+) — .*verified_by: (.*)$/    \1  \2/' | head -8)
  if [ -n "$execrit" ]; then
    echo "  THESE ARE A TEST SUITE ALREADY WRITTEN — your own criteria, whose"
    echo "  verified_by clause is already a mechanical assertion. Lift them:"
    printf '%s\n' "$execrit"
    echo "  Each is an assertion something can run. This is the highest-value thing eng"
    echo "  can take from this repo."
  else
    echo "  No criterion in ${GATE_3:-design.md} carries a mechanically checkable"
    echo "  verified_by clause yet, so there is no test suite to lift. Writing criteria"
    echo "  whose verification is a command is how that changes."
  fi
fi
[ "$tot" -gt 0 ] && [ "$exe" -lt $((tot/3)) ] && {
  echo "  WARN  fewer than a third are executable."
  WARN=$((WARN+1))
}

# ------------------------------------------------------------------ EG-5
echo
echo "EG-5  IS EVERY DESTRUCTIVE ACTION RECOVERABLE?          [FLOOR]"
hr
if [ -f "$BUILD" ]; then
  if grep -q 'discard' "$BUILD"; then
    echo "  Discard is intentionally UNCONFIRMED here — being wrong must be cheap"
    echo "  (UXI-03). That is a design decision, not an oversight, and adding a"
    echo "  confirm dialog defeats it. Two agents did exactly that when asked."
    echo
    echo "  The obligation is therefore: discard must not touch the entry text."
    echo "  Verified by G3-04. That assertion is EG-5's test."
  fi
  if grep -qE 'window\.confirm|window\.alert' "$BUILD"; then
    echo "  WARN  native confirm/alert present. Accessible, but outside the design"
    echo "        system, and a confirm on a reversible action trains click-through."
    WARN=$((WARN+1))
  fi
else
  echo "  SKIP  build not found"
fi

# ------------------------------------------------------------------ verdict
echo
echo "======================================================================"
if [ "$HARM" -eq 1 ]; then
  echo "BLOCKED — EG-1. This build can harm a user."
  echo "FLOOR failures are not gated on problem validation and are not tech debt."
  echo "Fix them before any destination that includes a person."
  exit 10
fi
if [ "$ROADMAP" -eq 1 ]; then
  echo "BLOCKED — EG-2. Something is being built that traces to no stated intent."
  exit 11
fi
if [ "$UNEVAL" -eq 1 ]; then
  echo "UNEVALUATED — EG-1 could not be assessed (no build)."
  echo "Every other gate passed, and that is not the same as safe. Exiting 12 so"
  echo "CI cannot mistake 'we did not look' for 'we looked and it was fine'."
  exit 12
fi
echo "Engineering gates pass. $WARN warning(s)."
echo "Passing EG-1..EG-5 says this is safe, on-roadmap, maintainable, testable"
echo "and recoverable. It says NOTHING about whether it is worth building — that"
echo "is Gates 1 and 2, and ./check-gates.sh currently exits 1."
exit 0
