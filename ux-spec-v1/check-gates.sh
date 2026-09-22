#!/bin/bash
# check-gates.sh — a mechanical gate check, not a vibe check.
# Run this before /speckit-plan or /speckit-implement. If it exits 1, stop.
#
# MAIN+MINI EXTENSION (2026-09-21): the upstream ux-spec-skeleton version of this
# script only ever checked three hardcoded root files (ux.md, vision.md, design.md)
# and had no idea a project could split Gate 1 into a main ux.md plus per-feature
# mini docs (kind: mini, parent: <main>, listed in the main's mini_docs:). That
# meant a mini's acceptance criteria were honesty-only — nothing ever failed a
# build over them. This version adds that awareness for Gate 1 specifically; Gates
# 2 and 3 (vision.md, design.md) are unchanged and still single-file.
#
# Gate 1 now passes only when ALL of these hold:
#   - the root ux.md itself passes (same as before)
#   - every path in ux.md's own mini_docs: list exists, declares kind: mini, and
#     declares parent: pointing back at ux.md
#   - every such mini passes the same acceptance-criteria check as a root gate file
#   - no specs/*/ux.md exists that ux.md's mini_docs: list doesn't know about
#     (an ORPHAN mini — untracked, so nothing above it can vouch for it)

FAIL=0

check_file() {
  local file="$1"
  local gate="$2"

  if [ ! -f "$file" ]; then
    echo "BLOCKED — Gate $gate: $file does not exist."
    FAIL=1
    return
  fi

  # The heading may carry a section number once a gate file grows into a real
  # document ("## 9. Acceptance Criteria"). Anchoring on the bare string made
  # this awk match nothing and report a confident PASS — a false green, which is
  # worse than a false red. Caught 2026-09-11 when design.md gained §§1-8.
  local pat='/^## +([0-9]+\. +)?Acceptance Criteria/'
  unchecked=$(awk "$pat"'{flag=1; next} /^## /{flag=0} flag && /^- \[ \]/{c++} END{print c+0}' "$file")
  total=$(awk "$pat"'{flag=1; next} /^## /{flag=0} flag && /^- \[[ x]\]/{c++} END{print c+0}' "$file")

  if [ "$total" -eq 0 ]; then
    echo "BLOCKED — Gate $gate: $file has no parsable acceptance criteria."
    echo "         Expected a '## Acceptance Criteria' heading (a leading section"
    echo "         number is fine) followed by '- [ ]' / '- [x]' rows. Zero rows"
    echo "         is reported as a failure on purpose: an unparsable gate file"
    echo "         would otherwise pass silently."
    FAIL=1
    return
  fi

  # ---- REGIME-AWARE CRITERIA (2026-09-21) ---------------------------------
  #
  # Until today this function failed a gate if ANY criterion was unticked. That
  # is "follow the acceptance criteria to the letter," and at the start of a
  # project it is wrong in a way that costs you the whole method: a gate that
  # refuses unfinished work does not produce finished work, it produces work
  # that lives somewhere else, in a document nobody checks. Which is where all
  # of this was before.
  #
  # So the gate no longer asks "is this finished." It asks "is this honest about
  # not being finished." `confidence_regime` is how a document says where it is,
  # and the script holds it to THAT standard instead of a fixed one.
  #
  #   PROCEED           every criterion must tick — you have claimed it is done
  #   PROCEED-FLAGGED   unticked criteria FLAG and pass — early work, named as such
  #   PROCEED-PARTIAL   criteria named in machine_behavior block; the rest flag
  #   BLOCKED           fails, because the document itself says do not build
  #   missing           FAILS — and this is the point. Not the unticked boxes:
  #                     the refusal to say where you are. An undeclared document
  #                     reads as finished to anyone downstream.
  #
  # `proceed_because` is required alongside any PROCEED* value. That is not a
  # formality — it is the named human permission to work on imperfect evidence,
  # and §9b's rule is explicit that without it the cautious default is BLOCKED.
  local regime because behavior
  regime="$(frontmatter_scalar "confidence_regime" "$file")"
  because="$(frontmatter_scalar "proceed_because" "$file")"
  behavior="$(frontmatter_scalar "machine_behavior" "$file")"

  if [ -z "$regime" ]; then
    echo "BLOCKED — Gate $gate: $file declares no confidence_regime."
    echo "         $unchecked of $total criteria are unticked, which may be completely fine —"
    echo "         but nothing here says so, and an undeclared document reads as finished to"
    echo "         whoever builds on it. Set confidence_regime (PROCEED / PROCEED-FLAGGED /"
    echo "         PROCEED-PARTIAL / BLOCKED) plus proceed_because. Unfinished is allowed."
    echo "         Silent about being unfinished is not."
    FAIL=1
    return
  fi

  case "$regime" in
    PROCEED|PROCEED-FLAGGED|PROCEED-PARTIAL)
      if [ -z "$because" ]; then
        echo "BLOCKED — Gate $gate: $file is $regime with no proceed_because."
        echo "         proceed_because is the named permission to work on imperfect evidence."
        echo "         Without it the honest default is BLOCKED, so that is how this reads."
        FAIL=1
        return
      fi ;;
  esac

  case "$regime" in
    BLOCKED)
      echo "BLOCKED — Gate $gate: $file declares confidence_regime: BLOCKED."
      echo "         This is the file doing its job, not failing it — it is naming a decision"
      echo "         a human owes before anyone builds. ${because:+Because: $because}"
      echo "         ($unchecked of $total criteria unticked, which follows from the above.)"
      FAIL=1
      ;;

    PROCEED)
      if [ "$unchecked" -gt 0 ]; then
        echo "BLOCKED — Gate $gate: $file is PROCEED with $unchecked of $total criteria unticked."
        echo "         PROCEED claims the work is done. Either tick them, or drop to"
        echo "         PROCEED-FLAGGED and say what is still open."
        FAIL=1
      else
        echo "PASS — Gate $gate: $file (PROCEED · $total of $total checked)."
      fi
      ;;

    PROCEED-FLAGGED)
      if [ "$unchecked" -gt 0 ]; then
        echo "PASS — Gate $gate: $file (PROCEED-FLAGGED · $((total-unchecked)) of $total checked)."
        echo "       $unchecked criteria open and declared. Not a blocker: this document says"
        echo "       it is provisional, so outputs it feeds must not be claimed as validated."
      else
        echo "PASS — Gate $gate: $file (PROCEED-FLAGGED · $total of $total checked)."
        echo "       All criteria tick while still flagged — consider whether this is PROCEED now."
      fi
      ;;

    PROCEED-PARTIAL)
      if [ -z "$behavior" ]; then
        echo "BLOCKED — Gate $gate: $file is PROCEED-PARTIAL with no machine_behavior."
        echo "         PROCEED-PARTIAL means some named things proceed and some gate. Without"
        echo "         machine_behavior naming which, it is indistinguishable from a wish."
        FAIL=1
        return
      fi
      # A criterion is gating if its id is named anywhere in the frontmatter.
      local gating=0 open_ids
      open_ids=$(awk '/^## +([0-9]+\. +)?Acceptance Criteria/{f=1;next} /^## /{f=0}
                      f && /^- \[ \]/{ if (match($0, /[A-Z]+[0-9]*-[0-9]+/)) print substr($0, RSTART, RLENGTH) }' "$file")
      local fm; fm=$(awk '/^---[[:space:]]*$/{fm++; if(fm==2)exit; next} fm==1' "$file")
      local blockers=""
      for cid in $open_ids; do
        if echo "$fm" | grep -q "$cid"; then gating=$((gating+1)); blockers="$blockers $cid"; fi
      done
      if [ "$gating" -gt 0 ]; then
        echo "BLOCKED — Gate $gate: $file is PROCEED-PARTIAL and $gating named-gating"
        echo "         criteri$([ "$gating" -eq 1 ] && echo on || echo a) still unticked:$blockers"
        FAIL=1
      else
        echo "PASS — Gate $gate: $file (PROCEED-PARTIAL · $unchecked of $total open, none gating)."
      fi
      ;;

    *)
      echo "BLOCKED — Gate $gate: $file has confidence_regime: '$regime', which is not one of"
      echo "         PROCEED / PROCEED-FLAGGED / PROCEED-PARTIAL / BLOCKED."
      FAIL=1
      ;;
  esac
}

# Pull a documentary frontmatter field's value(s). Handles both a scalar
# ("field: value") and a YAML list ("field:\n  - a\n  - b"), same style as
# check-drift.sh's built_from: parser.
frontmatter_scalar() {
  awk -v key="$1" '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && $0 ~ "^"key":" {
      sub("^"key":[[:space:]]*", "")
      sub(/[[:space:]]*#.*$/, "")
      gsub(/^[[:space:]]+|[[:space:]]+$/, "")
      print
      exit
    }' "$2"
}

frontmatter_list() {
  awk -v key="$1" '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && $0 ~ "^"key":" { inb=1; next }
    fm==1 && inb && /^[^[:space:]#]/ { inb=0 }
    fm==1 && inb && /^[[:space:]]*-[[:space:]]*/ {
      sub(/^[[:space:]]*-[[:space:]]*/, "")
      sub(/[[:space:]]*#.*$/, "")
      sub(/[[:space:]]+$/, "")
      if (length($0)) print
    }' "$2"
}

# ---- EVIDENCE DIALOGUE (added 2026-09-21) ----------------------------------
#
# Why this exists. Gate 1 could already tell you a claim was tagged `[R]`. It
# could not tell you WHICH research, whether that research actually supports the
# strength being claimed, or whether the person writing the claim agrees with the
# finding underneath it. So on 2026-09-21 a claim reading "no user research
# exists" shipped in this repo tagged `[R]`, sourced to a read of one directory,
# and nothing objected. The research existed. It was three clicks away and
# unreachable from here.
#
# The fix is not a better tag. It is a link that can FAIL.
#
# Division of labour, and it is not negotiable:
#   findings.yaml  — owned by Research. Holds the evidence, its claim_type, its
#                    population_fidelity, and its confidence grade. Graded by a
#                    named researcher; validated by their own validate_findings.py.
#                    THIS SCRIPT NEVER WRITES, GRADES, OR OVERRIDES A FINDING.
#   ux.md          — owned by whoever writes the problem. Holds the claim, the
#                    pointer, and a STANCE toward the finding.
#
# This script computes CEILINGS (mechanical, from claim_type + population_fidelity)
# and compares them to what the document asserts. It never proposes a grade. The
# ceiling is arithmetic; the grade inside it is judgment.
#
# Ceilings, from the Research Evidence Layer's own tables:
#   observed_behavior → HIGH   inferred → MEDIUM
#   stated_attitude   → MEDIUM recommended → LOW
#   population_fidelity of proxy / internal / none caps the whole thing at LOW,
#   whatever the claim_type says. Lowest ceiling governs.
#
# WHAT FAILS, AND WHY SO LITTLE OF IT.
#
# An earlier version of this function failed four different things. That was
# wrong, and the reason matters more than the fix.
#
# Findings are not consumed by this repo — they are INTERPRETED, here and in
# vision.md. Both halves improve over time: the evidence gets better as we gather
# more, and the interpretation gets better as we understand people better. The
# point of putting any of this in a repo is to let imperfect work exist where
# engineering and product can see it, and then let new evidence and new
# interpretation update what they're doing. A gate that refuses imperfect work
# defeats that — the work just moves back out to a document nobody checks.
#
# So exactly one thing fails:
#
#   OVERCLAIMING — asserted_at above the method's ceiling, or above the finding's
#   own grade. This is the only error that damages someone else, because a
#   downstream team building on a claim stronger than its evidence cannot see the
#   gap from where they stand. It is not imperfect work; it is work
#   misrepresenting itself.
#
# Everything else FLAGS and exits 0. This is the imperfect-work lane and it is
# load-bearing, not a concession:
#
#   - an interpretation with no finding under it yet  → normal at the start
#   - a finding past its review_by                    → confidence decays
#   - a finding re-graded or superseded since this link was written → DRIFT:
#     the interpretation is now behind its evidence and someone should revisit it
#
# That last one is what makes this a loop rather than a snapshot, and it needs
# `inherited_on:` — the date the interpretation was reconciled with the finding.
# Without a date, a finding that moved looks identical to one that didn't.
#
# One more failure, and it is about dialogue rather than evidence:
#
#   A `stance: disputes` whose CONTESTED row in OPEN.md has no `handling:`
#   pointer. Disagreeing with a finding is legitimate and frequently correct —
#   the person closest to the problem often knows something the study didn't
#   reach. What cannot happen is the disagreement going nowhere. The requirement
#   is NOT that the conflict is resolved; it is that it is being handled
#   somewhere nameable — a meeting, a chat, a thread. A contradiction with a
#   conversation attached is work in progress. A contradiction with nothing
#   attached is how the loop breaks without anyone noticing.
#
# `stance: disputes` is the dialogue, and it is the one field the commit-time
# gate on the research side has no slot for — that gate asks "does your label
# match the evidence," which assumes the finding is right.

# ISO-date less-than. `[ "$a" \< "$b" ]` is a bashism that errors under zsh, and
# this script gets sourced in both. awk does string compare in either.
date_lt() { [ -n "$1" ] && [ -n "$2" ] && awk -v a="$1" -v b="$2" 'BEGIN{exit !(a<b)}'; }

conf_rank() {
  case "$(echo "$1" | tr '[:upper:]' '[:lower:]')" in
    high) echo 3 ;; medium) echo 2 ;; low) echo 1 ;; *) echo 0 ;;
  esac
}

# Pull one field out of one finding block in a findings.yaml. Blocks start at
# "- finding_id: <id>" and run until the next one.
finding_field() {
  awk -v want="$1" -v key="$2" '
    /^[[:space:]]*-[[:space:]]*finding_id:[[:space:]]*/ {
      line=$0; sub(/^[[:space:]]*-[[:space:]]*finding_id:[[:space:]]*/, "", line)
      gsub(/["\047[:space:]]/, "", line)
      inb = (line == want); next
    }
    inb && $0 ~ "^[[:space:]]*"key":" {
      sub("^[[:space:]]*"key":[[:space:]]*", "")
      sub(/[[:space:]]*#.*$/, ""); gsub(/^["\047]|["\047]$/, "")
      gsub(/^[[:space:]]+|[[:space:]]+$/, ""); print; exit
    }' "$3"
}

check_evidence_dialogue() {
  local file="$1" gate="$2"
  grep -q '^##[[:space:]]*Evidence' "$file" 2>/dev/null || return 0

  local findings
  findings="$(frontmatter_scalar "findings" "$file")"
  [ -z "$findings" ] && findings="findings.yaml"

  if [ ! -f "$findings" ]; then
    echo "BLOCKED — Gate $gate: $file has an '## Evidence' section but its findings file"
    echo "          ('$findings') does not exist. An evidence section pointing at nothing is"
    echo "          worse than none — it reads as checked. Set 'findings:' in frontmatter, or"
    echo "          remove the section and carry the gap as a RESEARCH row in OPEN.md."
    FAIL=1
    return
  fi

  # One record per entry: id, rests_on, asserted_at, stance.
  local rows
  rows=$(awk '
    /^##[[:space:]]*Evidence/ { inev=1; next }
    /^##[[:space:]]/ && inev { inev=0 }
    !inev { next }
    /^-[[:space:]]*\[[ xX]\][[:space:]]*/ {
      if (id != "") print id "|" rests "|" asserted "|" stance "|" inherited "|" handling
      line=$0
      sub(/^-[[:space:]]*\[[ xX]\][[:space:]]*/, "", line)
      split(line, p, "·"); id=p[1]
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", id)
      rests=""; asserted=""; stance=""; inherited=""; handling=""; next
    }
    /rests_on:/     { v=$0; sub(/.*rests_on:[[:space:]]*/, "", v);     gsub(/[[:space:]]/, "", v); rests=v }
    /asserted_at:/  { v=$0; sub(/.*asserted_at:[[:space:]]*/, "", v);  gsub(/[[:space:]]/, "", v); asserted=v }
    /stance:/       { v=$0; sub(/.*stance:[[:space:]]*/, "", v);       gsub(/[[:space:]]/, "", v); stance=v }
    /inherited_on:/ { v=$0; sub(/.*inherited_on:[[:space:]]*/, "", v); gsub(/[[:space:]]/, "", v); inherited=v }
    /handling:/     { v=$0; sub(/.*handling:[[:space:]]*/, "", v); gsub(/^[[:space:]]+|[[:space:]]+$/, "", v); handling=v }
    END { if (id != "") print id "|" rests "|" asserted "|" stance "|" inherited "|" handling }
  ' "$file")

  [ -z "$rows" ] && return 0

  # A findings file that EXISTS but parses to nothing is not an empty evidence base.
  # It is a broken one, and it used to degrade into per-row "not in findings" FLAGS —
  # so a gate file overclaiming on every single link printed "no overclaiming. 5 flag(s)"
  # and exited 0. Reproduced 2026-09-22 by replacing findings.yaml with `findings: []`
  # under an ux.md that genuinely overclaims. An empty findings.yaml is a legal state
  # on its own (see the header of the shipped one); an empty findings.yaml underneath
  # documents that cite it by id is a parse failure wearing a clean bill of health.
  #
  # Note the parse count below is NOT `$(grep -c … || echo 0)`. grep -c prints "0" AND
  # exits 1 when it matches nothing, so the `||` fires too and the substitution becomes
  # the two-line string "0\n0" — which makes `[ … -eq 0 ]` fail with "integer expression
  # expected" on stderr and take the FALSE branch. That is this same check failing open
  # on its first draft, in the same way it exists to prevent. Caught 2026-09-22 only
  # because the reproduction it was written for still printed the old output.
  local parsed_rows
  parsed_rows=$(grep -cE '^[[:space:]]*-?[[:space:]]*finding_id:' "$findings" 2>/dev/null | tr -dc '0-9')
  [ -z "$parsed_rows" ] && parsed_rows=0
  if [ "$parsed_rows" -eq 0 ]; then
    echo "BLOCKED — Gate $gate: $file cites findings by id, but no finding_id: rows could be"
    echo "          parsed out of $findings. Every rests_on: here is dangling, so NOTHING in"
    echo "          this file has been checked against anything. This is reported as a block"
    echo "          rather than as per-row flags because an unparsable evidence base makes the"
    echo "          whole check vacuous, and a vacuous check that prints 'no overclaiming' is"
    echo "          worse than no check. If the evidence base is genuinely empty, the links"
    echo "          citing it have to go too."
    FAIL=1
    return
  fi

  local n=0 bad=0 flagged=0 today
  today=$(date +%Y-%m-%d)

  while IFS='|' read -r id rests asserted stance inherited handling; do
    [ -z "$id" ] && continue
    n=$((n+1))
    local ar; ar=$(conf_rank "$asserted")

    # FLAG (not fail): an interpretation with nothing under it yet. This is the
    # normal state of early work and the whole reason imperfect work lives here.
    if [ "$rests" = "—" ] || [ "$rests" = "-" ] || [ -z "$rests" ]; then
      echo "  flag $id — no finding under it yet${asserted:+ (reads as $asserted)}. Fine for now;"
      echo "       it means anyone building on this is building on an interpretation."
      flagged=$((flagged+1)); continue
    fi

    local ctype fid grade f_status review fieldwork superseded
    ctype=$(finding_field "$rests" "claim_type" "$findings")
    fid=$(finding_field "$rests" "population_fidelity" "$findings")
    grade=$(finding_field "$rests" "confidence" "$findings")
    f_status=$(finding_field "$rests" "status" "$findings")
    review=$(finding_field "$rests" "review_by" "$findings")
    fieldwork=$(finding_field "$rests" "fieldwork_date" "$findings")
    superseded=$(finding_field "$rests" "superseded_by" "$findings")

    if [ -z "$ctype" ] && [ -z "$grade" ]; then
      echo "  flag $id — rests_on: $rests, which is not in $findings. Either the finding has"
      echo "       not been written yet, or the id moved. Not fatal, but this link is inert."
      flagged=$((flagged+1)); continue
    fi

    # ---- THE ONLY FAILURES: overclaiming ----------------------------------
    #
    # FAIL CLOSED. NO COMPUTABLE CEILING IS A BLOCKER, NOT A SKIP.
    #
    # This used to end `*) cap=0; capname="" ;;` and then guard the comparison with
    # `[ "$cap" -gt 0 ]`. So ONE TYPO IN THE FIELD THAT SETS THE CEILING DISABLED THE
    # CEILING. `claim_type: STATED-ATTITUDE` (hyphen, not underscore) → cap=0 → the
    # overclaim comparison was guarded out → `asserted_at: HIGH` passed in silence.
    # Reproduced 2026-09-22: E-03's genuine FAIL vanished from the output entirely when
    # a single underscore was changed to a hyphen.
    #
    # Worse, the ungraded-finding branch below then printed "Checked against its
    # computed $capname ceiling only, WHICH IT RESPECTS" with $capname empty — a
    # sentence asserting the check passed, in the one message a reader uses to decide
    # the row is fine. That is a false green in prose, which this script's own comments
    # (:36, and the drop-detector note further down) call worse than a false red.
    #
    # Same treatment for the other two fields the arithmetic depends on. An unparsable
    # assertion used to rank 0 and therefore never exceed anything — an invalid value
    # was treated as the weakest possible claim, when it is in fact an unknown claim.
    local cap capname
    case "$(echo "$ctype" | tr '[:upper:]' '[:lower:]')" in
      observed_behavior) cap=3; capname=HIGH ;;
      inferred|stated_attitude) cap=2; capname=MEDIUM ;;
      recommended) cap=1; capname=LOW ;;
      "") echo "BLOCKED $id — $rests has no claim_type, so no ceiling can be computed and"
          echo "        nothing here can be checked. An unchecked claim must not read as a"
          echo "        checked one. Set claim_type: OBSERVED_BEHAVIOR | STATED_ATTITUDE |"
          echo "        INFERRED | RECOMMENDED."
          bad=$((bad+1)); continue ;;
      *)  echo "BLOCKED $id — $rests has claim_type: '$ctype', which is not one of"
          echo "        OBSERVED_BEHAVIOR | STATED_ATTITUDE | INFERRED | RECOMMENDED."
          echo "        This is the field the ceiling is computed from, so an unrecognised"
          echo "        value means there is no ceiling — not a high one. Check the spelling."
          bad=$((bad+1)); continue ;;
    esac
    case "$(echo "$fid" | tr '[:upper:]' '[:lower:]')" in
      proxy|internal|none) if [ "$cap" -gt 1 ]; then cap=1; capname="LOW ($fid fidelity)"; fi ;;
      primary) : ;;
      "") echo "BLOCKED $id — $rests has no population_fidelity. Who the evidence came from"
          echo "        is half the ceiling arithmetic: primary does not lower the cap, and"
          echo "        proxy / internal / none lower it to LOW. Blank is not primary."
          bad=$((bad+1)); continue ;;
      *)  echo "BLOCKED $id — $rests has population_fidelity: '$fid', which is not one of"
          echo "        primary | proxy | internal | none. An unrecognised value silently"
          echo "        skipped the demotion to LOW."
          bad=$((bad+1)); continue ;;
    esac
    case "$(echo "$asserted" | tr '[:upper:]' '[:lower:]')" in
      high|medium|low) : ;;
      *)  echo "BLOCKED $id — asserts '$asserted', which is not HIGH, MEDIUM or LOW."
          echo "        An unparsable assertion used to rank below everything and therefore"
          echo "        never exceed a ceiling. An unknown claim is not a weak claim."
          bad=$((bad+1)); continue ;;
    esac

    if [ "$ar" -gt "$cap" ]; then
      echo "  FAIL $id — asserts $asserted. $rests is $ctype / $fid fidelity, which ceilings"
      echo "       at $capname. Repetition raises scope, not confidence — and someone"
      echo "       downstream cannot see this gap from where they are standing."
      bad=$((bad+1)); continue
    fi

    # An UNGRADED finding has no grade to inherit, so there is nothing to raise above.
    # This branch used to compare against conf_rank("") == 0 and therefore failed every
    # honest entry resting on an ungraded row — 4 false FAILs out of 5 in the
    # 2026-09-21 wiring test, against a findings.yaml whose confidence: fields are
    # deliberately blank because only the researcher of record may fill them.
    # Ungraded is a research to-do, not an overclaim.
    #
    # The sentence below asserts the row respects its ceiling. That is only safe to
    # print because the three enum checks above now BLOCK rather than skip — when this
    # line runs, $capname is guaranteed non-empty and the comparison at :427 actually
    # ran. It previously could print "which it respects" with $capname empty and no
    # comparison performed at all. If you ever re-loosen those checks, delete this
    # sentence in the same commit.
    if [ -z "$grade" ]; then
      echo "  flag $id — $rests has no confidence grade yet, so there is nothing to"
      echo "       inherit. Checked against its computed $capname ceiling only, which it"
      echo "       respects. Only the researcher of record sets the grade — not this script."
      flagged=$((flagged+1))
    elif [ "$ar" -gt "$(conf_rank "$grade")" ]; then
      echo "  FAIL $id — asserts $asserted; $rests is graded $grade by the researcher of"
      echo "       record. An interpretation inherits or lowers. It never raises."
      bad=$((bad+1)); continue
    fi

    # ---- FLAGS: the loop ---------------------------------------------------
    case "$(echo "$f_status" | tr '[:upper:]' '[:lower:]')" in
      stale|retired|superseded)
        echo "  flag $id — $rests is status: $f_status. The evidence moved; this"
        echo "       interpretation has not. Revisit it."
        flagged=$((flagged+1)) ;;
      current|active|""|—|-) : ;;
      *) echo "  flag $id — $rests has status: '$f_status', which this check does not"
         echo "       recognise, so it cannot tell you whether the evidence is still live."
         flagged=$((flagged+1)) ;;
    esac

    [ -n "$superseded" ] && {
      echo "  flag $id — $rests is superseded_by $superseded. Re-read the replacement before"
      echo "       trusting this interpretation."
      flagged=$((flagged+1)); }

    date_lt "$review" "$today" && {
      echo "  flag $id — $rests passed review_by $review. Confidence decays whether or not"
      echo "       anyone re-reads it."
      flagged=$((flagged+1)); }

    # Drift: the interpretation was reconciled BEFORE the data it rests on was
    # collected. Rare but unambiguous when it happens.
    date_lt "$inherited" "$fieldwork" && {
      echo "  flag $id — inherited_on $inherited predates $rests's fieldwork_date $fieldwork."
      echo "       This interpretation was written against older data than the finding holds."
      flagged=$((flagged+1)); }

    [ -z "$inherited" ] && {
      echo "  flag $id — no inherited_on date, so drift is undetectable here. A finding that"
      echo "       was re-graded looks identical to one that never moved."
      flagged=$((flagged+1)); }

    # ---- FAIL: a disagreement going nowhere --------------------------------
    if [ "$stance" = "disputes" ]; then
      # Handling may be declared INLINE on this row, or in a CONTESTED row in
      # OPEN.md. Inline is preferred and deliberately the lighter path: a register
      # you have to open a table to update is a register that goes stale. The
      # intent is that OPEN.md's CONTESTED rows get GENERATED from these lines,
      # not typed twice.
      local row=""
      [ -z "$handling" ] && row=$(grep "CONTESTED" OPEN.md 2>/dev/null | grep "$rests" | grep "handling:")
      if [ -z "$handling" ] && [ -z "$row" ]; then
        echo "  FAIL $id — stance: disputes on $rests with nowhere it is being handled."
        echo "       Disputing a finding is legitimate and often right. What fails is the"
        echo "       dispute going nowhere. Add \`handling:\` on this row — a meeting, a"
        echo "       chat, a thread. It does not have to be resolved. It has to have a"
        echo "       place where it is happening."
        bad=$((bad+1))
      else
        echo "  note $id — disputes $rests · handled at: ${handling:-see OPEN.md}"
      fi
    fi
  done <<< "$rows"

  if [ "$bad" -gt 0 ]; then
    echo "BLOCKED — Gate $gate: $file — $bad overclaim/unhandled-dispute error(s)$([ "$flagged" -gt 0 ] && echo ", plus $flagged flag(s)") across $n link(s)."
    FAIL=1
  elif [ "$flagged" -gt 0 ]; then
    echo "  evidence: $n link(s) checked against $findings — no overclaiming. $flagged flag(s)"
    echo "  above are work-in-progress, not blockers: imperfect interpretation is allowed to"
    echo "  live here, on the condition that it says so."
  else
    echo "  evidence: $n link(s) checked against $findings — all current, none overclaiming."
  fi
}

# ---- OWNER vs RESEARCH CHECK (2026-09-21) ----------------------------------
#
# These were one field, and that was wrong. Who WROTE a gate file and who
# CHECKED ITS EVIDENCE are different jobs, and either person can legitimately be
# a researcher, a designer, a PM, or the only person on the project. The thing
# that must be invariant is not the job title of the owner — it is that the
# evidence got checked by someone, and that the file says who.
#
# Three states, following the toolkit's founding rule: block on the absence of a
# QUESTION, never on the absence of an ANSWER.
#
#   field absent          → FAIL. Nobody was ever asked. This is the only failure.
#   placeholder/UNASSIGNED → flag. Asked, honestly unanswered. Work continues.
#   owner == research_check → note. Entirely legal and normal at small team size.
#                            Said out loud because it means nothing independent
#                            checked the evidence — a known risk on the record
#                            rather than an invisible one.
check_owner_and_check() {
  local file="$1" gate="$2"
  local owner rc
  owner="$(frontmatter_scalar "owner" "$file")"
  rc="$(frontmatter_scalar "research_check" "$file")"

  if ! awk '/^---[[:space:]]*$/{fm++; if(fm==2)exit; next} fm==1' "$file" | grep -q "^research_check:"; then
    echo "BLOCKED — Gate $gate: $file has no research_check: field at all."
    echo "         Who wrote this and who checked its evidence are different jobs. Add the"
    echo "         field. UNASSIGNED is a legal answer; a missing question is not. If you"
    echo "         checked your own evidence, write your own name — the file will then say"
    echo "         plainly that nothing independent checked it, which is the honest state."
    FAIL=1
    return
  fi

  local placeholder=0
  case "$rc" in
    ""|unassigned|UNASSIGNED|tbd|TBD|n/a|N/A|none|-|—|*‹*|*›*|ux|UX|research|Research|design|Design|product|Product|team|"the team"|everyone) placeholder=1 ;;
  esac

  if [ "$placeholder" -eq 1 ]; then
    echo "  flag $file — research_check is unassigned or a function rather than a person."
    echo "       Nothing has checked the evidence in this file. Not a blocker; it does mean"
    echo "       anyone reading it is reading one person's unreviewed reading of the sources."
  elif [ -n "$owner" ] && [ "$owner" = "$rc" ]; then
    echo "  note $file — owner and research_check are the same person ($rc). Legal and"
    echo "       normal at this size. Recorded because it means no independent check exists"
    echo "       on the evidence here."
  fi
}

# ---- CRITERIA INHERITANCE (2026-09-21) -------------------------------------
#
# Two different kinds of criteria live in these files and conflating them was
# making one of them impossible to check:
#
#   `## Acceptance Criteria`     — the per-gate house rubric (G1-xx, G2-xx,
#                                  G3-xx). "Did we do the Gate 1 job properly."
#                                  Gate-specific by design. NOT inherited.
#   `## UX Acceptance Criteria`  — what the PRODUCT must actually do (UXI-##).
#                                  Authored in ux.md, and must travel forward
#                                  through vision.md and into design.md.
#
# The rule: a UX criterion is INHERITED FORWARD AND NEVER DROPPED. ux.md → 
# vision.md → design.md, each gate free to add its own but not to lose one.
#
# Why this fails rather than flags: a dropped criterion is invisible. Unticked is
# visible and fine — you can always carry a criterion forward unticked, so there
# is no legitimate reason to drop one. A real user need silently disappearing
# between the problem and the build is the most expensive failure this toolkit
# exists to catch, and it is trivially detectable.
ux_criteria_ids() {
  awk '/^##[[:space:]]*UX Acceptance Criteria/{f=1; next} /^##[[:space:]]/{f=0}
       f && /^-[[:space:]]*\[[ xX]\]/ { if (match($0, /UXI-[0-9]+/)) print substr($0, RSTART, RLENGTH) }' "$1" 2>/dev/null | sort -u
}

# Does any of this actually connect to the Intent Spec? Before 2026-09-21, no:
# check-gates.sh never read INTENT_SPEC, no gate file carried traces_to:, and
# check-trace.sh (which resolves UXI-## against the spec's §5) is not part of the
# skinny tier at all. The Intent Spec was named in project.conf and read by
# nothing.
#
# This closes it for skinny, without needing check-trace.sh: every UXI-## used as
# a UX acceptance criterion is resolved against the §5 Requirements table of the
# file named by INTENT_SPEC. Same id space, one canonical home.
#
#   INTENT_SPEC empty          → skip. Legitimate pre-spec phase, not a failure.
#   INTENT_SPEC names a file
#     that does not exist      → FAIL. Broken config pointer.
#   id not found in that file  → flag. The spec row may not be authored yet;
#                                imperfect work is allowed, invisible links are not.
check_intent_spec_resolution() {
  local ids="$1"
  local spec; spec="$(configured_gate "INTENT_SPEC" "")"
  if [ -z "$spec" ]; then
    echo "  flag criteria: INTENT_SPEC is empty in project.conf, so no UXI-## id can be"
    echo "       resolved to a canonical requirement. Pre-spec phase — legal, and it means"
    echo "       these ids are local to these files only."
    return
  fi
  if [ ! -f "$spec" ]; then
    echo "BLOCKED — criteria: INTENT_SPEC names '$spec', which does not exist. A named"
    echo "         pointer that does not resolve is worse than an empty one."
    FAIL=1
    return
  fi
  local missing=""
  for id in $ids; do
    grep -qE "\|[[:space:]]*${id}[[:space:]]*\|" "$spec" || missing="$missing $id"
  done
  if [ -n "$missing" ]; then
    echo "  flag criteria: not in $spec §5 Requirements:$missing"
    echo "       Either the spec row is not authored yet, or the id was invented here. §5 is"
    echo "       the canonical home for UXI-## and the only place check-trace.sh resolves"
    echo "       them — add rows at the END, never renumber, or a traced criterion breaks."
  else
    echo "  criteria: every UXI-## resolves to a row in $spec §5."
  fi
}

# ---------------------------------------------------------------------------
# evidence_basis — the document-level claim, checked against its own rows.
#
# §5 carries this rule in prose: "If evidence_basis: above is HYPOTHESES, every row
# here should be tagged [A]." Nothing read it. Prose is not wiring — a rule with no
# check is a rule that holds until the first person in a hurry.
#
# The division of labour is the same one used for confidence ceilings: the script
# COMPUTES what the rows add up to, and a human DECLARES the field. §5's own
# frontmatter says so explicitly — evidence_basis_stated_by: "the author's own name —
# a self-assessment, not an audit". So this check never writes the value. It says what
# the rows compute to and leaves the field alone.
#
# Which direction fails, and why only one of them:
#   declared STRONGER than the rows compute  → FAIL. The header tells a reader there is
#       evidence the rows do not carry. That is a reader-facing overclaim, and it is the
#       one thing this whole apparatus exists to stop.
#   declared WEAKER than the rows compute    → flag. Under-claiming is safe. It usually
#       means the value was set at kickoff and never revisited after research landed.
#   still a ‹placeholder›                    → flag, with the computed value offered.
#       Present-but-unfilled flags; that matches check_owner_and_check.
basis_rank() { case "$1" in HYPOTHESES) echo 1 ;; MIXED) echo 2 ;; FINDINGS) echo 3 ;; *) echo 0 ;; esac; }

check_evidence_basis() {
  local spec; spec="$(configured_gate "INTENT_SPEC" "")"
  [ -n "$spec" ] && [ -f "$spec" ] || return 0

  local declared; declared=$(awk -F': *' '/^evidence_basis:/{print $2; exit}' "$spec" | tr -d '"'"'"' \r')

  # Tally the basis column of §5's Requirements table only. Placeholder cells
  # (‹…› or <…>) are not counted — an unauthored row is not a weak row.
  local strong weak
  strong=$(awk -F'|' '/^###[[:space:]]*Requirements/{f=1; next} f && /^###[[:space:]]/{exit}
       f && $2 ~ /UXI-[0-9]+/ && $4 ~ /\[(R|D)\]/ {n++} END{print n+0}' "$spec")
  weak=$(awk -F'|' '/^###[[:space:]]*Requirements/{f=1; next} f && /^###[[:space:]]/{exit}
       f && $2 ~ /UXI-[0-9]+/ && $4 ~ /\[(A|\?)\]/ {n++} END{print n+0}' "$spec")

  if [ "$strong" -eq 0 ] && [ "$weak" -eq 0 ]; then
    echo "  evidence_basis: §5 Requirements has no tagged rows yet, so there is nothing"
    echo "       to compute it against. Legitimate pre-spec phase."
    return
  fi

  local computed
  if   [ "$strong" -gt 0 ] && [ "$weak" -eq 0 ]; then computed="FINDINGS"
  elif [ "$strong" -eq 0 ] && [ "$weak" -gt 0 ]; then computed="HYPOTHESES"
  else computed="MIXED"; fi

  local counts="$strong sourced ([R]/[D]) + $weak unsourced ([A]/[?])"

  case "$declared" in
    HYPOTHESES|MIXED|FINDINGS) ;;
    *)
      echo "  flag evidence_basis: still a placeholder in $spec, so a reader has no stated"
      echo "       basis for §5 at all. Its rows compute to $computed — $counts."
      echo "       This field is a self-assessment and needs a human name against it"
      echo "       (evidence_basis_stated_by:); the script will not fill either one."
      return ;;
  esac

  local dr cr; dr=$(basis_rank "$declared"); cr=$(basis_rank "$computed")
  if [ "$dr" -gt "$cr" ]; then
    echo "BLOCKED — evidence_basis: $spec declares $declared, but its §5 rows compute to"
    echo "         $computed — $counts. The header claims more evidence than the rows"
    echo "         carry, and a reader who trusts the header cannot see that from where"
    echo "         they are standing. Either the field is wrong or a row's basis tag is."
    FAIL=1
  elif [ "$dr" -lt "$cr" ]; then
    echo "  flag evidence_basis: $spec declares $declared; its §5 rows compute to $computed"
    echo "       — $counts. Under-claiming, so not a blocker. Usually means the field was"
    echo "       set at kickoff and not revisited after evidence landed."
  else
    echo "  evidence_basis: $declared, and §5's rows agree — $counts."
  fi
}

check_criteria_inheritance() {
  # GATE FILENAMES COME FROM project.conf, NOT FROM THIS SCRIPT.
  #
  # They used to be hardcoded here — `[ -f "ux.md" ]` and `for stage in vision.md
  # design.md` — while check_optional_gate read GATE_2/GATE_3 from config. So the two
  # halves of the same script disagreed about which files exist. Rename or merge a gate
  # file and this function greps for a filename that is gone: `[ -f ]` returns false,
  # the function returns 0, and the drop-detector goes SILENT while every other check
  # keeps printing. A detector that vanishes on a rename is worse than no detector,
  # because the output still looks complete. Same class as the vacuous-pass bug below.
  local g1 g2 g3
  g1="$(configured_gate GATE_1 ux.md)"
  g2="$(configured_gate GATE_2 "")"   # no vision.md default — merged into Gate 1, 2026-09-22
  g3="$(configured_gate GATE_3 design.md)"

  [ -f "$g1" ] || return 0
  local origin; origin=$(ux_criteria_ids "$g1")
  if [ -z "$origin" ]; then
    # SAY SO. This used to `return 0` in silence, and the silence was the bug: the
    # ux-spec-skeleton shipped with no '## UX Acceptance Criteria' section at all, so
    # in the one repo every adopter copies, the drop-detector could not fire and said
    # nothing about it. A check that is structurally unable to run must report that it
    # did not run — "no output" is indistinguishable from "no problem", which is the
    # failure mode this whole script is built against. Found 2026-09-22.
    echo "  note criteria: $g1 has no '## UX Acceptance Criteria' section carrying UXI-## ids,"
    echo "       so there is nothing to carry forward and the drop-detector did NOT run. This"
    echo "       is the normal state before the Intent Spec's §5 requirements are wired back"
    echo "       into the gate files — it is reported rather than skipped so you can tell the"
    echo "       difference between 'nothing dropped' and 'nothing checked'."
    return 0
  fi

  # Build the downstream stage list from config, skipping any file that IS the origin.
  # A project that merges Gate 1 and Gate 2 into one file points GATE_1 and GATE_2 at
  # the same path, and a file cannot inherit from itself — counting it would report a
  # trivially true pass. Dedupe rather than assume three distinct files.
  local stages="" s
  for s in "$g2" "$g3"; do
    [ -n "$s" ] || continue
    case " $g1 $stages " in *" $s "*) continue ;; esac
    stages="$stages $s"
  done

  # The required set ACCUMULATES and never shrinks. A stage that drops a criterion
  # does not get to redefine what the next stage owes.
  #
  # It used to shrink: prev_ids was reassigned to whatever the stage actually carried,
  # so the first drop emptied the required set and every stage after it passed against
  # nothing — while printing the ORIGIN's count, because $total was computed once from
  # ux.md and never recomputed. In the 2026-09-21 wiring test, vision.md dropped all 9
  # criteria and design.md, which carries none either, reported "carries all 9 UX
  # criteria from vision.md". Both halves were false. A drop-detector that reports a
  # vacuous pass is worse than no detector, because it is trusted.
  local required="$origin" stage
  for stage in $stages; do
    local total; total=$(echo "$required" | wc -w | tr -d ' ')
    if [ ! -f "$stage" ]; then
      echo "  flag criteria: $stage does not exist, so $total UX criteri$([ "$total" -eq 1 ] && echo on || echo a)"
      echo "       required by the chain cannot be carried forward yet."
      continue
    fi
    local here; here=$(ux_criteria_ids "$stage")
    local missing=""
    for id in $required; do
      echo "$here" | grep -qx "$id" || missing="$missing $id"
    done
    if [ -n "$missing" ]; then
      local n; n=$(echo $missing | wc -w | tr -d ' ')
      echo "BLOCKED — criteria inheritance: $stage is missing $n of $total UX criteri$([ "$total" -eq 1 ] && echo on || echo a) the chain requires:$missing"
      echo "         Carry them forward — unticked is fine and often correct. Dropping one"
      echo "         removes a user need from the chain without anyone deciding to."
      FAIL=1
    else
      echo "  criteria: $stage carries all $total UX criteri$([ "$total" -eq 1 ] && echo on || echo a) the chain requires."
    fi
    # Additions made at this stage are owed by every stage after it.
    required=$(printf '%s\n%s\n' "$required" "$here" | grep -v '^[[:space:]]*$' | sort -u)
  done

  # Resolve against §5 AFTER accumulating, not before — design.md legitimately adds
  # build-level ids (accessibility, APEX) that ux.md never authored, and those need a
  # canonical §5 row exactly as much as the inherited ones do. Resolving only ux.md's
  # ids let every downstream addition bypass §5 unnoticed: the 2026-09-21 wiring test
  # added UXI-11/12/13 at design.md with no §5 row and the check reported that every
  # UXI-## resolved. §5 is canonical or it isn't.
  check_intent_spec_resolution "$required"
}

# ---- THE ONE UNCONDITIONAL REQUIREMENT (2026-09-21) ------------------------
#
# Everything else in this script can be declared, flagged, deferred, or skipped.
# This cannot. A project must have a ux.md.
#
# Why this one and not the others. vision.md and design.md are genuinely
# optional for some work — a small change to an existing flow may not need a new
# bet written down, and work with no rendered surface has nothing to hold against
# a design system. Those absences can be real decisions. But there is no kind of
# product work that does not have a problem and some state of knowledge about it,
# and "we never wrote down what problem this solves" is not a decision anyone
# makes on purpose. It is what happens when nobody was asked.
#
# It is also the file every other mechanism hangs off: the evidence links, the
# cast an agent reads instead of inventing, the UX criteria that inherit forward
# into vision.md and design.md. With no ux.md there is nothing to inherit from,
# nothing pointing at the research, and an agent fills the gap confidently — see
# TOOLKIT-OPEN.md for what that costs. (This comment cited 'OPEN.md R-01' until
# 2026-09-22; no such row exists — OPEN.md carries H-03 and A-01, and the toolkit's
# own history moved to TOOLKIT-OPEN.md when the register was split.)
#
# So: hard stop, immediately, before any other check runs. No regime can declare
# past it and no flag softens it.
require_ux_md() {
  [ -f "ux.md" ] && return 0
  echo "BLOCKED — ux.md does not exist. This is the one requirement with no way around it."
  echo ""
  echo "  Every other check here can be deferred, flagged, or declared skipped."
  echo "  This one cannot, for two reasons:"
  echo ""
  echo "  1. All product work has a problem and some state of knowledge about it."
  echo "     Gate 3 (design.md) is legitimately optional for some work."
  echo "     'We never wrote down what problem this solves' is not a decision"
  echo "     anyone makes deliberately — it is what happens when nobody asked."
  echo ""
  echo "  2. Everything else hangs off it. The evidence links live here. The cast"
  echo "     an AI reads instead of inventing one lives here. The UX criteria that"
  echo "     carry forward into design.md are authored here. Without"
  echo "     it there is nothing to inherit and nothing pointing at the research —"
  echo "     which is exactly how seven agents in this repo each invented users"
  echo "     from the permission roles in the code."
  echo ""
  echo "  It does not have to be finished. It has to exist and say where it is."
  echo "  A ux.md with a problem statement, confidence_regime: PROCEED-FLAGGED,"
  echo "  a proceed_because line, an owner, a research_check, and every box"
  echo "  unticked is a completely valid ux.md and will pass this script."
  exit 1
}

# Gate 2 and 3 file names come from project.conf, so a project can legitimately
# declare it has none by leaving the value empty. An EMPTY value is a decision
# and flags; a NAMED file that does not exist is a broken pointer and fails. The
# distinction is the whole point — absence is allowed, silent absence is not.
configured_gate() {
  [ -f "project.conf" ] || { echo "$2"; return; }
  local v
  v=$(grep -E "^${1}=" project.conf | head -1 | sed -E "s/^${1}=//; s/^[\"']//; s/[\"'].*$//")
  echo "$v"
}

# ---- A MERGED GATE FILE IS CHECKED ONCE, NOT ONCE PER GATE -----------------
#
# A project may answer two gates in one document (project.conf pointing GATE_1
# and GATE_2 at the same file). Every check below is per-FILE, so running them
# again under the second gate key re-reads the same frontmatter and reprints the
# same verdict under a different heading.
#
# That is not merely noisy, it is misleading in a specific way: two BLOCKED lines
# citing the same `confidence_regime` read as two independent problems, and the
# error counts double. Someone triaging output would go looking for a second file
# that does not exist. Found immediately on merging vision.md into ux.md,
# 2026-09-22.
#
# The gate coverage is still reported — the file says which gates it answers —
# but the checks run once.
GATES_SEEN=""

check_optional_gate() {
  local key="$1" default="$2" gate="$3"
  local file; file="$(configured_gate "$key" "$default")"
  if [ -z "$file" ]; then
    echo "  flag Gate $gate: no file configured ($key is empty in project.conf). Recorded as a"
    echo "       deliberate skip. If that is wrong, name the file; if it is right, it should"
    echo "       also be an ACCEPTED row in OPEN.md so the next reader knows it was decided."
    return
  fi
  case " $GATES_SEEN " in
    *" $file "*)
      echo "  note Gate $gate: answered by $file, already checked above under an earlier gate."
      echo "       One document, two gates — a legal merge. Its checks are not re-run, so a"
      echo "       single fault is reported once rather than once per gate it covers."
      return ;;
  esac
  GATES_SEEN="$GATES_SEEN $file"
  check_file "$file" "$gate"

  # Every gate file is an INTERPRETATION of evidence, not just ux.md. That was the
  # original error here: check_evidence_dialogue ran on ux.md alone, so vision.md and
  # design.md could claim anything at all about users and nothing looked.
  #
  # It is backwards, because vision.md is the highest-risk file in the set. A vision is
  # an ADOPTION claim by construction — will they want this, keep it, pay for it — and
  # adoption evidence is the thing we have least of. Under G18, usability evidence cannot
  # answer an adoption question at all. So the file making the least checkable claims was
  # the one with no check, while ux.md, whose claims are mostly about what already
  # happens, carried the only one.
  check_evidence_dialogue "$file" "$gate"

  if ! grep -q '^##[[:space:]]*Evidence' "$file" 2>/dev/null; then
    echo "  flag Gate $gate: $file has no '## Evidence' section, so nothing it claims about"
    echo "       users is resolvable to a finding. This file is an interpretation of"
    echo "       evidence — the same as ux.md, one step further from the raw material."
    echo "       Absent is not the same as none: a section saying 'no findings back this"
    echo "       yet' is an honest state and passes. Silence cannot be told from unchecked."
  fi
}

check_gate1_main_and_minis() {
  local main="ux.md"

  if [ ! -f "$main" ]; then
    echo "BLOCKED — Gate 1 (right problem): $main does not exist."
    FAIL=1
    return
  fi

  check_file "$main" "1 (right problem)"

  local declared_minis
  declared_minis=$(frontmatter_list "mini_docs" "$main")

  # ORPHAN check: any specs/*/ux.md the main file doesn't know about.
  local found_minis orphan_found=0
  found_minis=$(find specs -mindepth 2 -maxdepth 2 -iname "ux.md" 2>/dev/null | sort)
  if [ -n "$found_minis" ]; then
    while IFS= read -r f; do
      [ -z "$f" ] && continue
      if ! printf '%s\n' "$declared_minis" | grep -qxF "$f"; then
        echo "BLOCKED — Gate 1: $f exists but is not listed in $main's mini_docs: — ORPHAN mini, untracked by the spine."
        FAIL=1
        orphan_found=1
      fi
    done <<< "$found_minis"
  fi

  if [ -z "$declared_minis" ]; then
    if [ "$orphan_found" -eq 0 ] && [ -z "$found_minis" ]; then
      echo "PASS — Gate 1: no mini_docs: declared and no specs/*/ux.md found. Single-unit project; $main is Gate 1 in full."
    fi
    return
  fi

  while IFS= read -r mini; do
    [ -z "$mini" ] && continue

    if [ ! -f "$mini" ]; then
      echo "BLOCKED — Gate 1: $main lists $mini in mini_docs: but the file does not exist."
      FAIL=1
      continue
    fi

    local kind parent
    kind=$(frontmatter_scalar "kind" "$mini")
    parent=$(frontmatter_scalar "parent" "$mini")

    if [ "$kind" != "mini" ]; then
      echo "BLOCKED — Gate 1: $mini is listed as a mini_doc but declares kind: ${kind:-<empty>} (expected 'mini')."
      FAIL=1
    fi
    if [ "$parent" != "$main" ]; then
      echo "BLOCKED — Gate 1: $mini declares parent: '${parent:-<empty>}', expected '$main' — mini/spine pointer is broken."
      FAIL=1
    fi

    check_file "$mini" "1 (right problem — mini: $mini)"
  done <<< "$declared_minis"
}

require_ux_md

check_gate1_main_and_minis

# GATE_1's filename comes from config too. It was hardcoded here — `"ux.md"` — so a
# project that renamed its Gate 1 file got the mini-doc check on the real file and the
# evidence check on a file that no longer existed. Registering it in GATES_SEEN is what
# stops a merged Gate 1/Gate 2 file being checked twice below.
GATE1_FILE="$(configured_gate GATE_1 ux.md)"
GATES_SEEN="$GATES_SEEN $GATE1_FILE"
check_evidence_dialogue "$GATE1_FILE" "1 (right problem)"

check_optional_gate "GATE_2" "" "2 (right thing)"   # no vision.md fallback — merged into GATE_1
check_optional_gate "GATE_3" "design.md" "3 (right build)"

# Inline `case` inside $( ) breaks: the `)` terminates the substitution. Caught
# 2026-09-21 by running the script in a bare project.
gate_num_for() {
  # Config-driven. Was three literal filename comparisons, so a renamed gate file was
  # reported under the wrong gate number, and "vision.md" named a file that no longer
  # exists after the 2026-09-22 merge.
  if [ "$1" = "$(configured_gate GATE_1 ux.md)" ]; then echo 1
  elif [ "$1" = "$(configured_gate GATE_2 "")" ]; then echo 2
  else echo 3; fi
}
# Deduped: GATE_1 and GATE_2 normally name the same file, and without this guard the
# merged file had its owner/research_check flags printed twice.
_og_seen=""
for f in "$(configured_gate GATE_1 ux.md)" "$(configured_gate GATE_2 "")" "$(configured_gate GATE_3 design.md)"; do
  [ -n "$f" ] || continue
  case " $_og_seen " in *" $f "*) continue ;; esac
  _og_seen="$_og_seen $f"
  [ -f "$f" ] && check_owner_and_check "$f" "$(gate_num_for "$f")"
done
check_criteria_inheritance
check_evidence_basis

echo ""
if [ "$FAIL" -eq 1 ]; then
  # This line used to read "Fix the unchecked boxes above." Since regimes landed
  # that is usually false — an unticked box is no longer a blocker on its own,
  # and the real cause is one of: a declared BLOCKED regime (a human owes a
  # decision), a missing regime (nobody said where this is), an overclaim, or a
  # dispute with nowhere to go. Telling someone to tick boxes would send them to
  # do the one thing that cannot fix it.
  echo "Blocked. Read the reason above — unticked boxes are not, by themselves, a"
  echo "blocker any more. What blocks is a BLOCKED regime, an undeclared regime, a"
  echo "claim asserted above its evidence, or a dispute with no handling."
  exit 1
fi

# Do not claim Gates 2-3 passed when they were skipped. Same class of small lie
# as the "fix the unchecked boxes" line — this one would tell a reader three
# gates were checked when one project legitimately has only the first.
g2="$(configured_gate GATE_2 "")"; g3="$(configured_gate GATE_3 design.md)"
if [ -z "$g2" ] && [ -z "$g3" ]; then
  echo "Gate 1 passes — main spine and every declared mini. Gates 2-3 declared absent"
  echo "in project.conf; nothing else was checked. Clear to proceed on that basis."
elif [ -z "$g2" ] || [ -z "$g3" ]; then
  echo "Gates pass — main spine, every declared mini, and every gate this project"
  echo "configures. One of Gates 2-3 is declared absent in project.conf."
else
  echo "All gates pass — main spine, every declared mini, and Gates 2-3. Clear to proceed."
fi
exit 0
