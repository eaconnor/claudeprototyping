# Next Steps — Band Protocol + Prototyping Tool

**Sorted by: unblocked first, Beth-decision-required last.**

---

## Unblocked — any Claude session can execute

### 1 · Apply SKILL-DIFF.md to SKILL.md

**What:** 9 additions from `briefs/handoffs/claude-acp-v1-skill-extension-2026-05-28/SKILL-DIFF.md`
**Where:** `.claude/skills/prototype/SKILL.md` (currently 769 lines → ~1,000 after)
**How:** Tell Claude "apply the SKILL-DIFF.md additions to SKILL.md" + point to the packet
**Time estimate:** ~30 min, one session
**Risk:** Low. Additions are additive — nothing in the existing skill gets deleted except two targeted replacements (mode-toggle paragraph, multi-page pattern paragraph)

**Priority: high.** Every hi-fi prototype request until this is done requires Claude to re-derive patterns from acp-v1 source.

### 2 · Verify the `data-go` cross-page link pattern is in the skill

COMPONENT-INVENTORY.md item 13 (`data-go` delegated click handler) is documented there but was not included in SKILL-DIFF.md additions. It's a small pattern (3-4 lines in the skill) worth adding to the Multi-page section of Addition 7.

**How:** While applying the SKILL-DIFF, add `data-go` pattern to the hi-fi multi-page section.

---

## Beth decision required before Claude can execute

### 3 · Component extraction strategy

See HANDOFF.md Call 2. Recommendation is C (document contract, flexible implementation) now and B (extract to shared file) when the second hi-fi prototype lands. No Claude work needed until Beth decides.

### 4 · `<apx-council>` custom element

See HANDOFF.md Call 3. Requires a full build session. Only start if Beth wants the component-based pattern — otherwise inline stays canonical and Addition 9 from SKILL-DIFF is skipped.

---

## On Beth's radar (not urgent, not for Claude)

These are from the Nicole session and touch the prototyping tool's domain — worth knowing:

- **5-MSP segment selection** — affects what seed data looks like in future hi-fi prototypes
- **Backstage visibility model** — affects the Audit Trail page design pattern (always/on-demand/incident-only)
- **Trust-ledger verifiability** — affects the Value Ledger component and what "auditable" means visually

Nicole resolves these. The skill absorbs them when they're decided.

---

## If starting a new session to continue this work

1. Open `briefs/handoffs/beth-band-prototyping-2026-05-28/CLAUDE.md`
2. Read `HANDOFF.md` for current state
3. Start with Next Step 1 (apply SKILL-DIFF.md) unless Beth says otherwise
4. The Raj Claude packet at `../claude-acp-v1-skill-extension-2026-05-28/` is your primary reference

---

Lucy holds the clipboard.
