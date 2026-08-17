# Adlumin Proto-personas deck — filing note

**Filed:** 2026-07-30
**Source file:** `Adlumin proto-personas.pptx` (from Downloads, provided by Beth; distributed by Lewis per the [SME interview](joe-lewis-julian-interview-2026-07.md) follow-up-task list — "Personas Work Distribution: Send a copy of the personas work, including pain points list, to all meeting participants.")
**Datadump shelf:** User evidence (personas) — **content not machine-readable, see caveat below**

---

## What's in the deck

- Slides 1–4: intro / methodology (text-extractable).
- Slides 5–9: "Proto-persona 1" through "Proto-persona 5" — each slide has only a title placeholder plus **one embedded picture**. No editable text.

## Extraction caveat [CS: VERIFIED — mechanical fact, not a judgment call]

Attempted extraction via `python-pptx` twice, including a shape-type-aware and table-aware pass. Confirmed: the five proto-persona slides carry their content as **flattened images**, not text, tables, or native shapes. python-pptx cannot recover text from a PICTURE shape. No further automated extraction is possible without:
- manual visual inspection of each slide image, or
- Beth/Lewis supplying the original source document the images were exported from.

**This deck is filed as a pointer, not as extracted content.** The five proto-personas' actual substance (names, pain points, quotes) is **not** captured anywhere in this datadump yet — that gap is the research brief, not a blocker, per the "missing artifact → make it" rule in [datadump-spec-model.md](../datadump-spec-model.md#1b-two-shelves-in-the-library-locked-2026-07-14).

## What this means for "who — we need an MSP expert person"

Because the pptx personas aren't text-readable, they **cannot** be the source for the "MSP expert person" Beth asked to locate. That answer comes from two other places instead:
- **Nicole's canonical spec** (`FSN-83143`) — USER-001 (MSP Admin, primary creator) is the nearest canonical "expert" role, but it's a builder/creator role, not a deep technical-expert role.
- **The Lewis Persona Explorer** (26-persona library) — contains several genuinely expert-tier MSP/MSSP roles that outrank USER-001 in technical depth: `t3soc` (Senior SOC analyst & threat hunter, T2–3, IR lead), `deteng` (Detection/content engineer), `autoeng` (Centralized-services/automation engineer), `vciso` (vCISO/fractional CISO). See [lewis-persona-library-cast-2026-07.md](lewis-persona-library-cast-2026-07.md) for the full pull and ACP relevance.

## Next step if the pptx content is needed

Ask Lewis/Beth for the original persona-writeup doc (the "pain points list" mentioned in the follow-up tasks) rather than re-attempting pptx image extraction — that's very likely a text source with the actual proto-persona content this deck visualizes.
