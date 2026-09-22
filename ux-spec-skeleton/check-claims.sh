#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# check-claims.sh — a linter for user/business claims, with a secondary-dive
# suggester bolted to the flags.
#
# WHY THIS IS A LINTER AND NOT A GATE
#
# Beth Nam's research.md says the thing out loud: "validate_findings.py checks the
# records. Nothing automatically checks the prose generated from them." Her rules are
# documented lint rules with no linter behind them, and her reading-evidence.md "Red
# flags" section is, read literally, a rule list — eleven items, each mechanically
# checkable, written as advice to a human because there was nothing to run them.
#
# So this is a linter in the ordinary sense, and it inherits a linter's honesty:
#   - it checks FORM, never truth. Her own limit applies verbatim — "it does not judge
#     whether a sample was adequate, a question was leading, or a claim was falsifiable.
#     That is the human reviewer's job at the gate."
#   - it is GAMEABLE. Tag everything [A] and it goes quiet. That is why the structured
#     ceiling check in check-gates.sh runs alongside it rather than instead of it.
#   - a noisy linter gets switched off, so only near-zero-false-positive rules are
#     errors here. The judgment-adjacent ones are warnings and say so.
#
# THE SUGGESTER
#
# A flag that says "no finding cited" is true and useless. It makes promotion a context
# switch into another tool, which means promotion does not happen — which is how 95
# machine-readable assumptions and a 55-row abductive analysis ended up with no
# findings.yaml row behind any of them.
#
# So every unsupported claim gets candidates from the corpus attached. Promotion becomes
# one step.
#
# POINTERS, NEVER CONTENT — a hard rule, not a preference.
# The suggester returns a path, a line number and a locating fragment. It must never pull
# participant material into the repo. Two reasons, and they agree:
#   1. GDPR purpose limitation. Interview data is consent-scoped to the purpose it was
#      gathered for. "It was reachable" is not scope.
#   2. Beth Nam's own rule: "Structured fields live only in findings.yaml; full evidence
#      only on the Confluence study page. Link both, paste neither, or they drift."
# For a Condens or Confluence source that means the URL and nothing else, ever.
# ---------------------------------------------------------------------------
set -u

FAIL=0
ERRORS=0
WARNS=0

[ -f project.conf ] && . ./project.conf

FINDINGS="${FINDINGS_FILE:-findings.yaml}"
CORPUS="${CORPUS_PATHS:-}"

CLAIM_FILES=""
for f in ux.md vision.md design.md; do
  [ -f "$f" ] && CLAIM_FILES="$CLAIM_FILES $f"
done
for f in specs/*/ux.md specs/*/vision.md specs/*/design.md; do
  [ -f "$f" ] && CLAIM_FILES="$CLAIM_FILES $f"
done

echo "claim lint — $(echo $CLAIM_FILES | wc -w | tr -d ' ') file(s) · findings: $FINDINGS"
echo

# ---- helpers --------------------------------------------------------------

# Every finding_id in the findings file, one per line.
known_findings() {
  [ -f "$FINDINGS" ] || return 0
  grep -oE '^[[:space:]]*-[[:space:]]*finding_id:[[:space:]]*[A-Za-z0-9_.-]+' "$FINDINGS" 2>/dev/null \
    | sed 's/.*finding_id:[[:space:]]*//'
}

# Lines that are NOT prose claims: fenced code, table rows, and lines where the tag is
# backticked. That last one is the discriminator that matters — a legend or a meta-note
# writes `[R]` in backticks; a real claim writes it bare. Without it this rule fires on
# every legend table in the repo, which is how a linter earns its way into .lintignore.
strip_noncaims() {
  awk '
    # Frontmatter is machine config, not a prose claim. Reading it as one produced two
    # false warnings on the first run (work_type:, research_posture: in a specs/ ux.md)
    # and fed the suggester garbage terms off a YAML value. Skip to the closing fence.
    NR == 1 && /^---[[:space:]]*$/ { infm = 1; next }
    infm && /^---[[:space:]]*$/ { infm = 0; next }
    infm { next }
    /^[[:space:]]*```/ { infence = !infence; next }
    infence { next }
    /\|/ { next }
    { print NR "\t" $0 }
  ' "$1"
}

report_error() { echo "  ERROR $1"; ERRORS=$((ERRORS+1)); FAIL=1; }
report_warn()  { echo "  warn  $1"; WARNS=$((WARNS+1)); }

# ---- the suggester --------------------------------------------------------
# Pull content words off the claim, rank corpus files by how many of them match, print
# the best three as pointers.
suggest() {
  local claim="$1"
  [ -z "$CORPUS" ] && return 0

  local terms
  terms=$(echo "$claim" \
    | tr '[:upper:]' '[:lower:]' \
    | sed -e 's/\[[^]]*\]//g' -e 's/`[^`]*`//g' -e "s/[^a-z0-9 -]/ /g" \
    | tr ' ' '\n' \
    | awk 'length($0) > 5' \
    | grep -vwE 'should|would|could|because|before|other|these|those|which|there|their|about|while|where|after|every|being|users|useful' \
    | sort -u | head -4)
  [ -z "$terms" ] && return 0

  local hits="" p
  for p in $CORPUS; do
    [ -e "$p" ] || continue
    local t
    for t in $terms; do
      grep -rilF --include='*.md' --include='*.yaml' -- "$t" "$p" 2>/dev/null
    done
  done > /tmp/_cc_hits.$$ 2>/dev/null

  hits=$(sort /tmp/_cc_hits.$$ 2>/dev/null | uniq -c | sort -rn | awk '$1>1' | head -3)
  rm -f /tmp/_cc_hits.$$

  if [ -n "$hits" ]; then
    echo "        corpus candidates (pointers only — promote one, or mark it [A] deliberately):"
    echo "$hits" | while read -r n path; do
      # PARTICIPANT MATERIAL GETS A PATH AND NOTHING ELSE.
      # The first run of this printed a line of Craig Fisher's interview transcript as a
      # "locating fragment" — which is participant data, consent-scoped to the purpose it
      # was gathered for, lifted into a build log. A fragment is content. The rule in this
      # file's own header said pointers only and the implementation broke it immediately,
      # which is worth leaving recorded: the safe default has to be in the code, not in a
      # comment above it.
      case "$path" in
        *transcript*|*interview*|*participant*|*session*|*condens*|*Condens*)
          echo "          · $path  [${n} term(s) matched] — participant material, path only"
          continue ;;
      esac
      local frag
      frag=$(grep -m1 -inF -- "$(echo $terms | cut -d' ' -f1)" "$path" 2>/dev/null | head -1 | cut -c1-96)
      echo "          · $path  [${n} term(s) matched]"
      [ -n "$frag" ] && echo "            ${frag}"
    done
    echo "        terms: $(echo $terms | tr '\n' ' ')"
  fi
}

# ---------------------------------------------------------------------------
# RULE 1 — a cited finding id that does not resolve.
# Her red flag: "a finding ID you cannot find in findings.yaml."
# A dangling citation is worse than none: it reads as checked.
# LIMIT: only detects rests_on: values and F-### / FND-### style cites. A bare keyword
# slug sitting in prose is not distinguishable from an ordinary hyphenated phrase, so
# this rule cannot see it. Stated rather than silently skipped.
# ---------------------------------------------------------------------------
echo "1. cited finding ids resolve"
KNOWN=$(known_findings)
r1=0
for f in $CLAIM_FILES; do
  while IFS=: read -r ln val; do
    [ -z "${val:-}" ] && continue
    id=$(echo "$val" | sed -e 's/.*rests_on:[[:space:]]*//' -e 's/[[:space:]]*$//' | tr -d '`"'"'")
    [ -z "$id" ] && continue
    if ! echo "$KNOWN" | grep -qx -- "$id"; then
      report_error "$f:$ln — rests_on: '$id' does not resolve in $FINDINGS."
      r1=$((r1+1))
    fi
  done <<EOF
$(grep -nE 'rests_on:' "$f" 2>/dev/null)
EOF
  while IFS=: read -r ln val; do
    [ -z "${val:-}" ] && continue
    for id in $(echo "$val" | grep -oE '\b(F|FND)-[0-9]{2,}\b'); do
      if ! echo "$KNOWN" | grep -qx -- "$id"; then
        report_error "$f:$ln — cites $id, which does not resolve in $FINDINGS."
        r1=$((r1+1))
      fi
    done
  done <<EOF
$(grep -nE '\b(F|FND)-[0-9]{2,}\b' "$f" 2>/dev/null)
EOF
done
[ "$r1" -eq 0 ] && echo "   ok — every cited id resolves ($(echo "$KNOWN" | grep -c . ) findings known)"
echo

# ---------------------------------------------------------------------------
# RULE 2 — a hedge with no reason behind it.
# Her rule: "weakly backed always carries its reason after a colon. Unexplained
# weakly backed is the same as untagged." Same for [FIT: weak|none], which must carry a
# reason after the comma. An unexplained hedge is the most common way a claim looks
# examined without anyone having examined it.
# ---------------------------------------------------------------------------
echo "2. hedges carry their reason"
r2=0
for f in $CLAIM_FILES; do
  while IFS=: read -r ln rest; do
    [ -z "${rest:-}" ] && continue
    case "$rest" in
      *"weakly backed:"*) ;;
      *"weakly backed"*)
        report_error "$f:$ln — 'weakly backed' with no reason after the colon."
        r2=$((r2+1)) ;;
    esac
  done <<EOF
$(grep -niE 'weakly backed' "$f" 2>/dev/null)
EOF
  while IFS=: read -r ln rest; do
    [ -z "${rest:-}" ] && continue
    if echo "$rest" | grep -qiE '\[FIT:[[:space:]]*(weak|none)[[:space:]]*\]'; then
      report_error "$f:$ln — [FIT: weak|none] with no reason after the comma."
      r2=$((r2+1))
    fi
  done <<EOF
$(grep -niE '\[FIT:' "$f" 2>/dev/null)
EOF
done
[ "$r2" -eq 0 ] && echo "   ok — no unexplained hedges"
echo

# ---------------------------------------------------------------------------
# RULE 3 — a bare [R] or [D] on a load-bearing claim.
# Her AGENT GATE 16: "a bare [R] on a load-bearing claim is incomplete, not neutral."
# [R] covers both "we watched it" and "someone told us", and that difference decides
# whether the sentence may say "users do".
# Backticked tags and table rows are excluded — see strip_noncaims. Verified against
# acp-ux.md, where all four bare [R] are the legend row and two meta-notes, i.e. zero
# real violations. A rule that flagged those would be wrong four times out of four.
# ---------------------------------------------------------------------------
echo "3. no bare [R]/[D] on a claim"
r3=0
for f in $CLAIM_FILES; do
  while IFS=$'\t' read -r ln line; do
    [ -z "${line:-}" ] && continue
    echo "$line" | grep -qE '(^|[^`])\[[RD]\]([^`]|$)' || continue
    [ "$(echo "$line" | wc -c)" -lt 45 ] && continue
    report_warn "$f:$ln — bare [R]/[D]: $(echo "$line" | sed 's/^[[:space:]]*//' | cut -c1-84)"
    r3=$((r3+1))
    suggest "$line"
  done <<EOF
$(strip_noncaims "$f")
EOF
done
[ "$r3" -eq 0 ] && echo "   ok — no bare [R]/[D] on a prose claim"
echo

# ---------------------------------------------------------------------------
# RULE 4 — a percentage next to a single-digit n.
# Her rule: "'4 of 7 participants' is honest. A percentage from single-digit n is how an
# anecdote becomes a metric."
# ---------------------------------------------------------------------------
echo "4. no rates from single-digit n"
r4=0
for f in $CLAIM_FILES; do
  while IFS=: read -r ln rest; do
    [ -z "${rest:-}" ] && continue
    echo "$rest" | grep -qE '[0-9]+(\.[0-9]+)?%' || continue
    if echo "$rest" | grep -qE '\bn[[:space:]]*=[[:space:]]*[1-9]([^0-9]|$)'; then
      report_error "$f:$ln — a percentage beside a single-digit n: $(echo "$rest" | sed 's/^[[:space:]]*//' | cut -c1-72)"
      r4=$((r4+1))
    fi
  done <<EOF
$(grep -nE '%' "$f" 2>/dev/null)
EOF
done
[ "$r4" -eq 0 ] && echo "   ok — no single-digit-n rates"
echo

# ---------------------------------------------------------------------------
# RULE 5 — an Evidence Basis block with the uncomfortable half removed.
# Her rule: the "Not covered" line "is mandatory even when short, and is the highest-value
# line in the block." Her red flag for its absence: "someone removed the uncomfortable
# part." A block listing only what exists hides the shape of what does not.
# ---------------------------------------------------------------------------
echo "5. Evidence Basis blocks state their absences"
r5=0
for f in $CLAIM_FILES; do
  grep -qiE 'evidence basis' "$f" 2>/dev/null || continue
  start=$(grep -niE 'evidence basis' "$f" | head -1 | cut -d: -f1)
  if ! sed -n "${start},$((start+40))p" "$f" | grep -qiE 'not covered'; then
    report_error "$f:$start — 'Evidence basis' block with no 'Not covered' line."
    r5=$((r5+1))
  fi
done
[ "$r5" -eq 0 ] && echo "   ok — every Evidence Basis block names its absences"
echo

# ---------------------------------------------------------------------------
# RULE 6 — a confidence grade with nobody's name against it.
# Her rule: "An agent that emits a confidence value has substituted itself for the
# reviewer." Authorship is not reliably knowable from a file, so this checks the thing
# that is: a grade must carry who set it. A graded row with no name is either an agent's
# work or an unattributable human's, and those need the same treatment.
# ---------------------------------------------------------------------------
echo "6. every grade carries the name of whoever set it"
r6=0
if [ -f "$FINDINGS" ]; then
  while read -r fid; do
    [ -z "$fid" ] && continue
    conf=$(awk -v want="$fid" '
      /^[[:space:]]*-[[:space:]]*finding_id:/ { inb = ($0 ~ want); next }
      inb && /^[[:space:]]*confidence:/ {
        sub(/^[[:space:]]*confidence:[[:space:]]*/, ""); sub(/[[:space:]]*#.*$/, "")
        gsub(/^[[:space:]]+|[[:space:]]+$/, ""); print; exit }
    ' "$FINDINGS")
    [ -z "$conf" ] && continue
    setter=$(awk -v want="$fid" '
      /^[[:space:]]*-[[:space:]]*finding_id:/ { inb = ($0 ~ want); next }
      inb && /^[[:space:]]*confidence_set_by:/ {
        sub(/^[[:space:]]*confidence_set_by:[[:space:]]*/, ""); sub(/[[:space:]]*#.*$/, "")
        gsub(/^[[:space:]]+|[[:space:]]+$/, ""); print; exit }
    ' "$FINDINGS")
    if [ -z "$setter" ]; then
      report_error "$FINDINGS — $fid is graded $conf with no confidence_set_by:. A grade is a human judgment and needs a name."
      r6=$((r6+1))
    fi
  done <<EOF
$(known_findings)
EOF
fi
[ "$r6" -eq 0 ] && echo "   ok — no ungrounded grades (ungraded rows are fine; they flag in check-gates.sh)"
echo

# ---- close ----------------------------------------------------------------
echo "---"
if [ -z "$CORPUS" ]; then
  echo "suggester OFF — CORPUS_PATHS is empty in project.conf. Set it to the directories"
  echo "holding your source material and every unsupported claim gets candidates attached."
fi
echo "$ERRORS error(s) · $WARNS warning(s)"
echo
echo "This linter checks FORM, not truth. It cannot tell you whether a sample was"
echo "adequate, a question was leading, or a claim was falsifiable — that is the"
echo "reviewer's job, and clearing these is what makes room for it."

[ "$FAIL" -eq 1 ] && exit 1
exit 0
