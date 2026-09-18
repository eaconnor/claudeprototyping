#!/bin/bash
# check-skills.sh — every registered skill resolves to a skill that exists.
#
# WHAT THIS EXISTS TO CATCH: a registry entry naming a capability that is not on
# disk. A skills registry is a promise that reads exactly like a working one when
# it is broken, because nothing dereferences it until the moment it is needed —
# and at that moment the agent does not error, it improvises. That is the whole
# failure: a missing skill degrades to a fluent guess rather than a stop.
#
# TWO REGISTRIES, BOTH LINTED. They fail differently and both failures are live:
#
#   1. .specify/extensions.yml `command:` names  ->  .claude/skills/<name>/SKILL.md
#      This is LINK 3 of the constitution's enforcement chain. A mandatory hook
#      whose skill is absent is not a gate, it is a line of YAML. This was broken
#      in the repo this skeleton came from: `check-open` was registered
#      optional:false in all three hook slots with no check-open skill anywhere in
#      the tree. Found by hand on 2026-09-16 — one hand-check too many, hence this
#      script.
#
#   2. a gate file's `skills:` frontmatter block  ->  .claude/skills/<n>/SKILL.md
#                                                 or .claude/agents/<n>.md
#      The ux.md schema declares which skill serves each section/gate. A markdown
#      file cannot execute anything: it declares, and the AGENT GATE tells the
#      reading agent to invoke. If the declared name is wrong, the agent generates
#      the section from scratch instead — silently, and with no marker saying so.
#
# WHY A REGISTRY IS ALLOWED TO BE EMPTY BUT NOT ALLOWED TO BE WRONG. A borrowing
# team ships `skills:` empty on purpose; the coach falls back to its built-in
# method guides and everything works. Empty is a supported state and passes. A
# name that does not resolve is never a supported state.
#
# Exit codes:
#     0   every registered name resolves (or every registry is legitimately empty)
#     5   BROKEN — cannot evaluate: no registry found to lint at all. Suite-wide
#         "cannot evaluate" code (see EXIT-CODES.md). Reporting "all names resolve"
#         when no names were READ is the false green this guards.
#    21   a registered name does not resolve to a skill or agent on disk
#
# Usage:
#     ./check-skills.sh                 lint extensions.yml + the gate files in project.conf
#     ./check-skills.sh FILE [FILE...]  also lint the `skills:` block of each FILE
#                                       (FILE may live outside this repo)
#     SKILLS_ROOT=/path/to/project ./check-skills.sh FILE
#                                       resolve names against another project's
#                                       .claude/ — use when FILE is borrowed

set -uo pipefail
# Resolve argument paths against the CALLER's cwd before cd-ing to the repo root, so
# `./check-skills.sh ../briefs/foo.md` works. Without this, a relative arg silently reports
# "not found" from the wrong directory, which reads identically to a real missing file.
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
# SKILLS_ROOT lets you lint a file that belongs to a DIFFERENT project against
# that project's own skills, instead of this repo's. Without it, every name in a
# borrowed file reports MISSING for the boring reason that it lives elsewhere —
# which would bury the one name that is genuinely absent. Defaults to this repo.
SKILLS_ROOT="${SKILLS_ROOT:-.}"
SKILLS_DIR="$SKILLS_ROOT/.claude/skills"
AGENTS_DIR="$SKILLS_ROOT/.claude/agents"

RESOLVED=0; UNRESOLVED=0; REGISTRIES=0; NOT_FOUND=0
declare -a FAILURES=()

resolve() {                                   # $1 name, $2 where it was registered
  local name="$1" src="$2"
  [ -z "$name" ] && return 0
  if [ -f "$SKILLS_DIR/$name/SKILL.md" ] || [ -f "$AGENTS_DIR/$name.md" ]; then
    RESOLVED=$((RESOLVED+1))
  else
    UNRESOLVED=$((UNRESOLVED+1))
    FAILURES+=("$name|$src")
  fi
}

echo "======================================================================"
echo "SKILL REGISTRY LINT — does every declared capability exist on disk?"
echo "======================================================================"

# ---- registry 1: extensions.yml hook commands (enforcement link 3) ----
# extensions.yml describes THIS repo's hooks, so it is only meaningful to lint
# against THIS repo's skills. When SKILLS_ROOT points elsewhere the caller is
# linting a borrowed file, and reporting this repo's own hooks as missing would be
# two false reds — the fastest way to teach someone to ignore a script.
EXT=".specify/extensions.yml"
if [ "$SKILLS_ROOT" != "." ]; then
  echo ""
  echo "-- $EXT  (skipped: SKILLS_ROOT is overridden, these hooks are not that project's)"
  EXT=""
fi
if [ -n "$EXT" ] && [ -f "$EXT" ]; then
  REGISTRIES=$((REGISTRIES+1))
  echo ""
  echo "-- $EXT (hook commands · enforcement link 3)"
  while IFS= read -r name; do
    resolve "$name" "$EXT"
    if [ -f "$SKILLS_DIR/$name/SKILL.md" ]; then echo "   ok      $name"
    else echo "   MISSING $name   <- registered as a mandatory hook, no skill on disk"; fi
  done < <(grep -E '^[[:space:]]*command:' "$EXT" | sed -E 's/.*command:[[:space:]]*//' | tr -d '"' | sort -u)
fi

# ---- registry 2: `skills:` frontmatter blocks ----
lint_frontmatter() {
  local file="$1"
  if [ ! -f "$file" ]; then
    # A file the caller NAMED and we could not read is a failure, not a skip. Reporting
    # "0 unresolved" for a file that was never opened is a false green — the exact class
    # this suite exists to catch. Found in this script's own behaviour, 2026-09-17.
    echo "   BROKEN — named but not found: $file"
    NOT_FOUND=$((NOT_FOUND+1)); return 0
  fi
  # the skills: block runs until the next top-level (column-0) frontmatter key
  local names
  names=$(awk '
    /^---[[:space:]]*$/ { fm++; if (fm==2) exit; next }
    fm==1 && /^skills:[[:space:]]*$/ { inblock=1; next }
    fm==1 && inblock && /^[^[:space:]#]/ { inblock=0 }
    fm==1 && inblock { print }
  ' "$file" \
    | sed -E 's/#.*$//' \
    | grep -E '^[[:space:]]+[A-Za-z0-9_]+:' \
    | sed -E 's/^[[:space:]]*[A-Za-z0-9_]+:[[:space:]]*//' \
    | tr '·,' '\n\n' \
    | sed -E 's#^[[:space:]]*/?##; s/[[:space:]]+\(.*$//; s/[[:space:]]*$//' \
    | grep -vE '^$' | sort -u)
  [ -z "$names" ] && { echo "   (empty registry — supported state, passes)"; return 0; }
  REGISTRIES=$((REGISTRIES+1))
  while IFS= read -r name; do
    resolve "$name" "$file"
    if [ -f "$SKILLS_DIR/$name/SKILL.md" ] || [ -f "$AGENTS_DIR/$name.md" ]; then echo "   ok      $name"
    else echo "   MISSING $name   <- declared in skills:, not on disk"; fi
  done <<< "$names"
}

for f in "${GATE_1:-}" "${GATE_2:-}" "${GATE_3:-}" "${ARGS[@]:-}"; do
  [ -z "$f" ] && continue
  echo ""; echo "-- $f (skills: frontmatter)"
  lint_frontmatter "$f"
done

# ---- verdict ----
echo ""
echo "----------------------------------------------------------------------"
if [ "$NOT_FOUND" -gt 0 ]; then
  echo "BROKEN — $NOT_FOUND file(s) were named on the command line but could not be read."
  echo "Nothing was linted for them. This exits non-zero rather than reporting a clean"
  echo "result for a file that was never opened."
  exit 5
fi
if [ "$REGISTRIES" -eq 0 ]; then
  echo "BROKEN — no registry was found to lint."
  echo "Neither $EXT nor any named file carried a readable registry. Reporting"
  echo "'all names resolve' when no name was read is a false green, so this fails."
  echo "Check GATE_1/2/3 in project.conf, or pass a file explicitly."
  exit 5
fi
echo "$REGISTRIES registr(ies) linted · $RESOLVED resolved · $UNRESOLVED unresolved"
if [ "$UNRESOLVED" -gt 0 ]; then
  echo ""
  echo "UNRESOLVED — $UNRESOLVED registered name(s) do not exist on disk:"
  for f in "${FAILURES[@]}"; do
    echo "   $(echo "$f" | cut -d'|' -f1)   registered in $(echo "$f" | cut -d'|' -f2)"
  done
  echo ""
  echo "Either build the skill, or remove the registration. Leaving it is the"
  echo "worst of the three: an agent reading that registry will believe the"
  echo "capability exists and improvise when it does not answer."
  exit 21
fi
echo "OK — every registered name resolves."
exit 0
