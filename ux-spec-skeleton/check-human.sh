#!/bin/bash
# check-human.sh — is the human-facing layer still pointing at something real?
#
# THE PROBLEM THIS SOLVES IS NOT THE ONE IT LOOKS LIKE. The obvious idea is to
# GENERATE the human-readable doc from the machine-readable one. That idea is
# wrong, and the corpus this skeleton was extracted from proves it: the two live
# `<name>.README.md` files there contain "what you can do alone versus what you
# route," "the two axes people conflate," and a named escalation chain. None of
# that is derivable from the spine. A generator would either omit the most
# valuable part of the file or overwrite it.
#
# So the human layer stays HAND-WRITTEN, and this script checks the only things
# about it that are mechanically knowable: that it still points at things that
# exist, and that the small block of machine state embedded in it is current.
#
# WHAT WENT WRONG WITHOUT THIS. A README was reported as drifted from its spine on
# 2026-09-17 on the evidence that its mtime was four days older. That is not
# evidence. Reading both files showed nothing in the README had gone false — its
# content was durable orientation, which is exactly the kind of prose that does
# not rot. The real gap was the opposite of the one assumed: the README had no
# machine-state block at all, so a reader who opened only the README could not
# tell whether the spine had moved. Absence of a status block, not staleness of
# prose.
#
# THE CHECKS
#
#   H-1  the spine link resolves               dangling pointer  -> 26
#   H-2  every file it references resolves      dangling pointer  -> 26
#   H-3  every §N it cites exists in the spine  dangling pointer  -> 26
#   H-4  the STATUS fence is present and matches recomputed state -> 27
#
# H-1..H-3 are one kind of defect — the README sends a human somewhere that is not
# there — and share exit 26. H-4 is a different kind: regenerable, so it warns.
# Grouping by kind rather than by rule matches the rest of the suite.
#
# THE FENCE HAS NO TIMESTAMP, DELIBERATELY. Its content is a pure function of the
# spine's frontmatter and tick counts. Put a generated-at date inside it and every
# run reports stale, which trains everyone to ignore the script — the same failure
# mode as an over-inflated never-event list.
#
# HONEST LIMITS
#
#   IT DOES NOT CHECK COUNT CLAIMS, AND THE REASON IS A CAUGHT MISTAKE. The first
#   design had it compare numeric assertions ("26 moments") against the spine. In
#   testing, that check fired on a real pair: the README said "26 moments", the
#   spine appeared to say "12 moments". The README was RIGHT — the spine read "26
#   service moments across 7 stages (... Live Meeting x 12 moments ...)", and 12
#   was one stage's subtotal. The regex missed the real number because of a word
#   in the middle, and 12 was a different quantity entirely. A check that turns
#   correct prose into a build failure is worse than no check. Numeric claims are
#   REPORTED side by side under INFO for a human to compare, and never judged.
#
#   IT CANNOT TELL WHETHER THE PROSE IS STILL TRUE. "How eng should read this
#   file" can become wrong without a single broken reference. Only a person who
#   knows the work can detect that, which is what RITUALS.md exists for.
#
# Exit codes:
#     0   every reference resolves and the fence is current
#     5   cannot evaluate — no README pair found, or a named file could not be read
#    26   a reference is dangling: missing spine, missing file, or missing section
#    27   the STATUS fence is absent or does not match the recomputed state
#
# Usage:
#     ./check-human.sh                    check every <name>.README.md beside its spine
#     ./check-human.sh FILE [FILE...]     check these READMEs instead
#     ./check-human.sh --write            rewrite each STATUS fence in place, then exit 0

set -uo pipefail
ORIG_PWD="$PWD"
WRITE=0
ARGS=()
for a in "$@"; do
  case "$a" in
    --write) WRITE=1 ;;
    /*)      ARGS+=("$a") ;;
    *)       ARGS+=("$ORIG_PWD/$a") ;;
  esac
done
cd "$(dirname "$0")"
[ -f project.conf ] && . ./project.conf

BEGIN='<!-- BEGIN STATUS -->'
END='<!-- END STATUS -->'

# ---------------------------------------------------------------- spine helpers
fm_field() {  # fm_field <file> <field>  — frontmatter only, comments stripped
  awk -v want="$2" '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && $0 ~ "^"want":" {
      sub("^"want":[[:space:]]*",""); sub(/[[:space:]]*#.*$/,""); sub(/[[:space:]]+$/,"")
      print; exit }' "$1"
}

compute_status() {  # compute_status <spine_path> — the fence body, pure function of the spine
  local sp="$1" dr cr st ticked total markers
  dr=$(fm_field "$sp" drift);              [ -z "$dr" ] && dr="(absent)"
  cr=$(fm_field "$sp" confidence_regime);  [ -z "$cr" ] && cr="(absent)"
  st=$(fm_field "$sp" status);             [ -z "$st" ] && st="(absent)"
  ticked=$(grep -cE '^[[:space:]]*-[[:space:]]*\[[xX]\]' "$sp" || true)
  total=$(grep -cE '^[[:space:]]*-[[:space:]]*\[[ xX]\]' "$sp" || true)
  markers=$(grep -coE '\[0% [^]]*\]|⟨VERIFY[^⟩]*⟩|\[PENDING[^]]*\]|‹0% AI[^›]*›' "$sp" || true)
  echo "**Machine state of [\`$(basename "$sp")\`]($(basename "$sp")) — regenerated, not typed.**"
  echo ""
  echo "| field | value |"
  echo "|---|---|"
  echo "| status | \`$st\` |"
  echo "| confidence_regime | \`$cr\` |"
  echo "| drift | \`$dr\` |"
  echo "| acceptance criteria ticked | $ticked of $total |"
  echo "| unfilled judgment slots | $markers |"
  echo ""
  echo "Regenerate with \`./check-human.sh --write\`. If this block disagrees with the"
  echo "prose below it, the block is right and the prose needs a human."
}

# ---------------------------------------------------------------- find the pairs
TARGETS=()
if [ "${#ARGS[@]}" -gt 0 ]; then TARGETS=("${ARGS[@]}")
else
  while IFS= read -r f; do [ -n "$f" ] && TARGETS+=("$f")
  done < <(find . -maxdepth 2 -name '*.README.md' 2>/dev/null | sed 's|^\./||' | sort)
fi

echo "======================================================================"
echo "HUMAN LAYER — does it still point at anything real?"
echo "======================================================================"

# An empty TARGETS array must not expand under `set -u`. Found 2026-09-17: with no
# README pair on disk this crashed and exited 1 — which is check-gates.sh's code, so
# CI branching on exact codes would have reported a gate failure for a missing file.
# "Cannot evaluate" has its own code for a reason; a crash must not borrow another
# script's meaning.
if [ "${#TARGETS[@]}" -eq 0 ]; then
  echo ""
  echo "BROKEN — found no <name>.README.md anywhere to check."
  echo "Reporting 0 here would mean 'I checked nothing and found nothing wrong.'"
  exit 5
fi

NOT_FOUND=0; PAIRS=0; N_DANGLE=0; N_FENCE=0; WROTE=0
declare -a INFO=()

for rm in "${TARGETS[@]:-}"; do
  if [ ! -f "$rm" ]; then
    echo ""; echo "-- $rm"; echo "   BROKEN — named but not found"
    NOT_FOUND=$((NOT_FOUND+1)); continue
  fi
  echo ""; echo "-- $rm"
  dir=$(dirname "$rm")

  # ------------------------------------------------------------ H-1 spine link
  # The spine is the first local .md the README links to, or <name> minus .README.
  spine=$(grep -oE '\]\([^)]+\.md\)' "$rm" | head -1 | sed 's/^](//; s/)$//')
  if [ -z "$spine" ]; then
    base=$(basename "$rm" .README.md)
    for cand in "$dir/$base.md" "$dir/$base.ux.md"; do
      [ -f "$cand" ] && spine="$(basename "$cand")" && break
    done
  fi
  if [ -z "$spine" ]; then
    echo "   H-1 DANGLING — no spine link found, and no <name>.md beside it."
    N_DANGLE=$((N_DANGLE+1)); continue
  fi
  spine_path="$dir/$spine"
  if [ ! -f "$spine_path" ]; then
    echo "   H-1 DANGLING — spine link points at '$spine', which does not exist."
    N_DANGLE=$((N_DANGLE+1)); continue
  fi
  echo "   spine: $spine_path"
  PAIRS=$((PAIRS+1))

  # ------------------------------------------------- H-2 referenced files exist
  h2=0
  while IFS= read -r ref; do
    [ -z "$ref" ] && continue
    case "$ref" in http*|mailto*|\#*) continue ;; esac
    ref_clean="${ref%%#*}"
    [ -z "$ref_clean" ] && continue
    if [ ! -e "$dir/$ref_clean" ]; then
      echo "   H-2 DANGLING — references '$ref_clean', which does not exist."
      h2=$((h2+1))
    fi
  done < <(grep -oE '\]\([^)]+\)' "$rm" | sed 's/^](//; s/)$//' | sort -u)
  [ "$h2" -eq 0 ] && echo "   H-2 ok — every referenced path resolves"
  N_DANGLE=$((N_DANGLE+h2))

  # --------------------------------------------- H-3 cited sections exist
  h3=0
  while IFS= read -r sec; do
    [ -z "$sec" ] && continue
    if ! grep -qE "^#+[[:space:]]*$sec\." "$spine_path"; then
      echo "   H-3 DANGLING — cites §$sec, but the spine has no section $sec."
      h3=$((h3+1))
    fi
  done < <(grep -oE '§[0-9]+' "$rm" | tr -d '§' | sort -un)
  [ "$h3" -eq 0 ] && echo "   H-3 ok — every cited section exists in the spine"
  N_DANGLE=$((N_DANGLE+h3))

  # ------------------------------------------------------ H-4 the status fence
  want=$(compute_status "$spine_path")
  if ! grep -qF "$BEGIN" "$rm"; then
    if [ "$WRITE" -eq 1 ]; then
      { echo "$BEGIN"; echo ""; echo "$want"; echo ""; echo "$END"; echo ""; cat "$rm"; } > "$rm.tmp" \
        && mv "$rm.tmp" "$rm"
      echo "   H-4 written — STATUS fence inserted at the top"
      WROTE=$((WROTE+1))
    else
      echo "   H-4 ABSENT — no STATUS fence. A reader of this file alone cannot tell"
      echo "       whether the spine has moved. Run with --write to insert one."
      N_FENCE=$((N_FENCE+1))
    fi
  else
    got=$(awk -v b="$BEGIN" -v e="$END" '
      index($0,b){f=1;next} index($0,e){f=0} f' "$rm" | sed '/^[[:space:]]*$/d')
    wantc=$(printf '%s\n' "$want" | sed '/^[[:space:]]*$/d')
    if [ "$got" = "$wantc" ]; then
      echo "   H-4 ok — STATUS fence matches the spine"
    elif [ "$WRITE" -eq 1 ]; then
      python3 - "$rm" "$BEGIN" "$END" <<'PY' "$want"
import io,sys
p,b,e = sys.argv[1],sys.argv[2],sys.argv[3]; body=sys.argv[4]
s=io.open(p,encoding='utf-8').read()
i=s.index(b)+len(b); j=s.index(e)
io.open(p,'w',encoding='utf-8').write(s[:i]+"\n\n"+body+"\n\n"+s[j:])
PY
      echo "   H-4 rewritten — STATUS fence refreshed from the spine"
      WROTE=$((WROTE+1))
    else
      echo "   H-4 STALE — the STATUS fence does not match the spine's current state."
      echo "       Run with --write to refresh it. Diff:"
      diff <(printf '%s\n' "$got") <(printf '%s\n' "$wantc") 2>/dev/null \
        | sed 's/^/         /' | head -12
      N_FENCE=$((N_FENCE+1))
    fi
  fi

  # ---------------------------------------------- INFO: numbers, never judged
  nums=$(grep -oE '\b[0-9]{1,4} [a-z][a-z-]+' "$rm" | sort -u | head -6 | tr '\n' ';')
  [ -n "$nums" ] && INFO+=("$rm asserts: $nums")
done

echo ""
echo "----------------------------------------------------------------------"
if [ "$NOT_FOUND" -gt 0 ]; then
  echo "BROKEN — $NOT_FOUND file(s) named on the command line could not be read."
  echo "A file the caller named and we could not open is a failure, not a skip."
  exit 5
fi
if [ "$PAIRS" -eq 0 ] && [ "$N_DANGLE" -eq 0 ]; then
  echo "BROKEN — found no <name>.README.md paired with a spine."
  echo "Reporting 0 here would mean 'I checked nothing and found nothing wrong.'"
  exit 5
fi
echo "$PAIRS pair(s) checked · $N_DANGLE dangling reference(s) · $N_FENCE stale/absent fence(s)"
if [ "${#INFO[@]}" -gt 0 ]; then
  echo ""
  echo "INFO — numeric claims in the human layer, NOT verified (see header):"
  for i in "${INFO[@]}"; do echo "   - $i"; done
  echo "   Compare these against the spine yourself. A script that guessed here"
  echo "   turned a correct README into a build failure once already."
fi
echo ""
if [ "$WROTE" -gt 0 ]; then echo "WROTE — $WROTE fence(s) regenerated. Re-run without --write to verify."; exit 0; fi
if [ "$N_DANGLE" -gt 0 ]; then
  echo "DANGLING — $N_DANGLE reference(s) send a human somewhere that is not there."
  exit 26
fi
if [ "$N_FENCE" -gt 0 ]; then
  echo "FENCE STALE — the prose is fine; the machine-state block is not current."
  exit 27
fi
echo "CURRENT — every reference resolves and every fence matches its spine."
exit 0
