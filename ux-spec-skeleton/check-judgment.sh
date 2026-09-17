#!/bin/bash
# check-judgment.sh — does this file's plan->execute authorization contract hang together?
#
# WHAT THIS IS FOR. A brief or gate file carries three frontmatter fields that together form
# a contract between an expensive judgment pass and a cheap execution pass:
#
#     confidence_regime:  PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED
#     proceed_because:    the human's one-sentence authorization
#     machine_behavior:   the directive set the execute phase runs against
#
# The plan phase writes them. The execute phase obeys them. Until this script, NOTHING read
# any of the three — all were `documentary`, which is to say decoration that reads exactly
# like enforcement.
#
# THE RISK IT GUARDS. A cheap execute pass that meets an unfilled judgment slot and fills it
# fluently instead of stopping. That is the constitution's rule: an unfilled slot is `[?]`,
# never a license to draft. A person cannot police that by reading; a script can police
# whether the authorization to proceed was ever actually granted, and whether it came with
# the constraints that keep unfilled things visibly unfilled.
#
# WHAT IT CANNOT DO — READ THIS BEFORE TRUSTING AN EXIT CODE. It cannot detect authorship.
# No script can tell whether a human or an agent typed the contents of a slot. Exit 23 does
# NOT mean "an AI filled this in"; it means "this file carries unfilled judgment and does not
# tell the execute phase to keep it that way." Same class of check as check-drift.sh catching
# a `drift: FRESH` that computes STALE: it audits a file's claims about itself.
#
# HOW J-1 WAS TUNED, AND WHY IT IS DELIBERATELY WEAK. The first design was "permissive regime
# + unfilled judgment slot = contradiction." Run against the real corpus that flags ~20 files
# that are correct by design — carrying unfilled slots under PROCEED-FLAGGED is the NORM, not
# an error. Checked what the known-good files actually do: none of them names its own markers.
# briefs/context/acp-ux.md carries `[0% Claude — fill this in]` plus three `[PENDING]`
# variants and its machine_behavior is only `surface [CS:] tags visibly · do not claim
# validation · treat §7 as unscored until a real grep pass runs`. What makes that correct is
# not per-marker bookkeeping — it is that the directives PRESERVE PROVISIONALITY generally.
# So J-1 asks the weaker, true question: does machine_behavior carry any constraint at all
# that stops the execute phase treating unfilled things as settled? A file with markers whose
# directives are purely permissive (`build · fidelity = Tier 3`) is the real defect.
# Over-broad and tuned against real files beats narrow and silently wrong.
#
# Exit codes:
#     0   the contract is coherent
#     5   BROKEN — cannot evaluate: no contract fields found in any target. Suite-wide
#         "cannot evaluate" code (EXIT-CODES.md). Reporting a clean contract when no contract
#         was READ is the false green this guards.
#    23   J-1 · unfilled judgment slots with no provisionality-preserving directive
#    24   J-2/J-3 · authorization incoherence — a permissive regime with no human
#         authorization, or a BLOCKED file handing out build instructions anyway
#    25   J-5 · under-specified regime — PROCEED-PARTIAL declared with nothing named as
#         gated. (J-4 also lived here until 2026-09-17; it is now an INFO note that does
#         not affect the exit code UNLESS project.conf sets J4_MODE=warn, which is an
#         onboarding choice. See the J-4 block for the evidence behind the default.)
#         Formerly: under-specified regime — declared, but missing the constraints its own
#         regime is defined by
#
# Usage:
#     ./check-judgment.sh                 the gate files named in project.conf
#     ./check-judgment.sh FILE [FILE...]  these files instead (may live outside this repo)

set -uo pipefail
# Resolve argument paths against the CALLER's cwd before cd-ing to the repo root, so
# `./check-judgment.sh ../briefs/foo.md` works. Without this, relative args silently report
# "not found" from the wrong directory — which reads identically to a real missing file.
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

# ---- the marker families, verified against the real corpus -------------------
# `\[0% ` covers the [0% Claude]/[0% Beth]/[0% AI] families and every tail variant, and also
# covers the ⟡ sigil, which never appears except paired with a [0% Beth] slot.
# `\[PENDING` requires the BRACKET: WAIVERS.md uses backticked `PENDING` as a waiver status
# and must not collide. ⟨VERIFY⟩ is U+27E8/27E9 — NOT the ‹› guillemets (U+2039/203A) used by
# generic template placeholders. ‹NOT-BUILT›/‹NOT-NAMED› are build-state, not judgment slots.
MARKERS='\[0% [^]]*\]|⟨VERIFY[^⟩]*⟩|\[PENDING[^]]*\]|‹0% AI[^›]*›'

# ---- directive families (substring, case-insensitive, prefix-match not equality) ----
# "do not claim validation" has many non-identical tails in the corpus, so never equality-match.
PRESERVING='do not claim|do not silently resolve|do not assume|do not upgrade|do not restore|never upgraded|rather than upgrading|rather than softening|surface|provisional|unscored|leave|stay|tier 1|directional|honest state'
AFFIRMATIVE='build|proceeds|ship|render|implement'
NEGATION='do not|do NOT|never|no '

field() {   # $1 file, $2 key — frontmatter only, strip trailing comment and quotes
  awk -v k="^$2:" '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && $0 ~ k {
      sub(/^[^:]*:[[:space:]]*/,"")
      sub(/[[:space:]]*#.*$/,"")
      gsub(/^"|"$/,"")
      gsub(/^[[:space:]]+|[[:space:]]+$/,"")
      print; exit
    }' "$1"
}

TARGETS=(); if [ "${#ARGS[@]}" -gt 0 ]; then TARGETS=("${ARGS[@]}")
else for f in "${GATE_1:-}" "${GATE_2:-}" "${GATE_3:-}"; do [ -n "$f" ] && TARGETS+=("$f"); done; fi

echo "======================================================================"
echo "JUDGMENT CONTRACT — is the plan->execute authorization coherent?"
echo "======================================================================"

# J4_MODE is an onboarding choice (see project.conf). An unrecognised value falls back
# to the evidence-backed default rather than failing — but says so, because a silently
# ignored config value is how a project thinks it is strict and is not.
J4_MODE="${J4_MODE:-note}"
case "$J4_MODE" in
  note|warn) ;;
  *) echo "   (J4_MODE='$J4_MODE' is not 'note' or 'warn' — falling back to 'note')"
     J4_MODE="note" ;;
esac

NOT_FOUND=0; WITH_CONTRACT=0; N_J1=0; N_INCOHERENT=0; N_UNDERSPEC=0; N_J4_NOTE=0
declare -a FINDINGS=()

for file in "${TARGETS[@]}"; do
  if [ ! -f "$file" ]; then
    # Named but unreadable is a failure, not a skip — see the note in check-skills.sh.
    echo ""; echo "-- $file"; echo "   BROKEN — named but not found"
    NOT_FOUND=$((NOT_FOUND+1)); continue
  fi

  REGIME=$(field "$file" "confidence_regime")
  BECAUSE=$(field "$file" "proceed_because")
  BEHAVIOR=$(field "$file" "machine_behavior")

  # a pipe-enumeration is the schema's own legend, not a value (CLAUDE.md, SKILL.md files)
  case "$REGIME" in *"|"*) REGIME="";; esac

  [ -z "$REGIME" ] && continue
  WITH_CONTRACT=$((WITH_CONTRACT+1))
  echo ""; echo "-- $file"
  echo "   regime: $REGIME"

  MARKS=$(grep -oE "$MARKERS" "$file" 2>/dev/null | sort -u)
  NMARK=$(printf '%s' "$MARKS" | grep -c . || true)
  echo "   unfilled judgment slots: $NMARK$([ "$NMARK" -gt 0 ] && echo "  ($(printf '%s' "$MARKS" | tr '\n' ' ' | cut -c1-90))")"

  PERMISSIVE=0; case "$REGIME" in PROCEED|PROCEED-FLAGGED|PROCEED-PARTIAL) PERMISSIVE=1;; esac

  # ---- J-2 · permissive regime with no human authorization ----
  if [ "$PERMISSIVE" -eq 1 ] && [ -z "$BECAUSE" ]; then
    echo "   J-2 INCOHERENT — regime is $REGIME but proceed_because: is empty."
    echo "        Without the human's authorization the correct default is BLOCKED."
    FINDINGS+=("$file|J-2|$REGIME with empty proceed_because"); N_INCOHERENT=$((N_INCOHERENT+1))
  fi

  # ---- J-3 · BLOCKED file handing out build instructions ----
  if [ "$REGIME" = "BLOCKED" ] && [ -n "$BEHAVIOR" ]; then
    AFFIRM=""
    while IFS= read -r tok; do
      [ -z "$tok" ] && continue
      echo "$tok" | grep -qiE "$NEGATION" && continue
      echo "$tok" | grep -qiE "\b($AFFIRMATIVE)\b" && AFFIRM="$tok"
    done < <(printf '%s' "$BEHAVIOR" | tr '·;,' '\n\n\n')
    if [ -n "$AFFIRM" ]; then
      echo "   J-3 INCOHERENT — regime is BLOCKED but machine_behavior authorizes work:"
      echo "        \"$(echo "$AFFIRM" | cut -c1-70)\""
      FINDINGS+=("$file|J-3|BLOCKED but authorizes work"); N_INCOHERENT=$((N_INCOHERENT+1))
    fi
  fi

  # ---- J-1 · unfilled judgment with nothing preserving its provisionality ----
  if [ "$NMARK" -gt 0 ] && [ "$PERMISSIVE" -eq 1 ]; then
    if printf '%s' "$BEHAVIOR" | grep -qiE "$PRESERVING"; then
      echo "   J-1 ok — $NMARK slot(s) unfilled, and machine_behavior preserves provisionality."
    else
      echo "   J-1 UNACKNOWLEDGED — $NMARK unfilled judgment slot(s), and machine_behavior"
      echo "        carries no directive keeping them provisional. An execute phase reading"
      echo "        this is told to proceed and told nothing about what must stay blank."
      FINDINGS+=("$file|J-1|$NMARK unfilled slot(s), no preserving directive"); N_J1=$((N_J1+1))
    fi
  fi

  # ---- J-4 · PROCEED-FLAGGED without §9b's three named constraints — INFO ONLY ----
  #
  # DEMOTED FROM A WARNING ON 2026-09-17, BY RULING, ON EVIDENCE. It used to raise
  # exit 25. A sweep of the whole corpus found 28 files carrying PROCEED-FLAGGED with
  # a machine_behavior:, of which exactly two lacked all three of §9b's phrasings —
  # and BOTH WERE CORRECT:
  #
  #   "no synthesis presented as settled · slots stay [0% Beth] · selective codes are
  #    PROPOSED, hers to kill"
  #   "written spec only, no HTML this pass · surface every place the schema doesn't
  #    have a field we need · do not claim any of this is committed to their roadmap"
  #
  # Both hold the posture §9b describes — provisional, surfacing, not-claiming — in
  # their own vocabulary. The second even says "do not claim", about roadmap commitment
  # rather than validation. So the check had a 100% false-positive rate against real
  # files, and the ruling was that §9b's three constraints describe a POSTURE, not a
  # required token set.
  #
  # It still prints, because "this file's directives don't obviously encode the regime
  # it declares" is worth a human glance. It no longer affects the exit code, because a
  # check that turns correct files red teaches people to ignore the script — the same
  # failure mode as an inflated never-event list.
  if [ "$REGIME" = "PROCEED-FLAGGED" ]; then
    if ! printf '%s' "$BEHAVIOR" | grep -qiE 'provisional|surface|do not claim|tier 1|unscored'; then
      if [ "$J4_MODE" = "warn" ]; then
        echo "   J-4 UNDER-SPECIFIED — machine_behavior carries none of §9b's three stated"
        echo "        phrasings (mark provisional / surface [CS:] tags / do not claim"
        echo "        validation). Reported as a finding because project.conf sets"
        echo "        J4_MODE=warn."
        FINDINGS+=("$file|J-4|PROCEED-FLAGGED without its defining constraints"); N_UNDERSPEC=$((N_UNDERSPEC+1))
      else
        echo "   J-4 note — machine_behavior carries none of §9b's three stated phrasings"
        echo "        (mark provisional / surface [CS:] tags / do not claim validation)."
        echo "        NOT a finding under J4_MODE=note. Glance, don't fix."
        N_J4_NOTE=$((N_J4_NOTE+1))
      fi
    fi
  fi

  # ---- J-5 · PROCEED-PARTIAL with nothing named as gated ----
  if [ "$REGIME" = "PROCEED-PARTIAL" ]; then
    if ! printf '%s' "$BEHAVIOR" | grep -qiE 'gates on|only|package'; then
      echo "   J-5 UNDER-SPECIFIED — PROCEED-PARTIAL means specific packages proceed and"
      echo "        specific packages gate on named resolution. Nothing here is named."
      FINDINGS+=("$file|J-5|PROCEED-PARTIAL with no named gate"); N_UNDERSPEC=$((N_UNDERSPEC+1))
    fi
  fi
done

echo ""
echo "----------------------------------------------------------------------"
if [ "$NOT_FOUND" -gt 0 ]; then
  echo "BROKEN — $NOT_FOUND file(s) named on the command line could not be read."
  exit 5
fi
if [ "$WITH_CONTRACT" -eq 0 ]; then
  echo "BROKEN — no file carried a readable confidence_regime:, so no contract was checked."
  echo "Reporting a coherent contract here would mean 'I read nothing and found nothing"
  echo "wrong.' Check GATE_1/2/3 in project.conf, or pass a file explicitly."
  exit 5
fi
echo "$WITH_CONTRACT file(s) carry a contract · $N_J1 unacknowledged · $N_INCOHERENT incoherent · $N_UNDERSPEC under-specified · $N_J4_NOTE J-4 note(s) [J4_MODE=$J4_MODE]"
if [ "${#FINDINGS[@]}" -gt 0 ]; then
  echo ""; echo "Findings:"
  for f in "${FINDINGS[@]}"; do
    printf '   %-6s %s\n' "$(echo "$f" | cut -d'|' -f2)" "$(echo "$f" | cut -d'|' -f1) — $(echo "$f" | cut -d'|' -f3)"
  done
fi
echo ""
if [ "$N_INCOHERENT" -gt 0 ]; then echo "INCOHERENT — the authorization contradicts itself. Blocks."; exit 24; fi
if [ "$N_J1" -gt 0 ];        then echo "UNACKNOWLEDGED — unfilled judgment with no directive protecting it. Blocks."; exit 23; fi
if [ "$N_UNDERSPEC" -gt 0 ]; then echo "UNDER-SPECIFIED — PROCEED-PARTIAL declared with nothing named as gated. Warns."; exit 25; fi
echo "OK — every contract checked hangs together."
exit 0
