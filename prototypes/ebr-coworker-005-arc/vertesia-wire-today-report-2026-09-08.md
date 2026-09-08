# Wiring the EBR Coworker to Vertesia — what's real today

**For:** the team · **Purpose:** if we started wiring this experience to Vertesia's real APIs
tomorrow, what would actually work, in what order, and what would we hit. Not a pitch — a
feasibility read, corrected once already after a critic pass caught real mistakes in the first
version of this chart. See chart: `vertesia_wire_today_readiness` (rendered 2026-09-08).

**Sources, so nothing here is a guess wearing a citation-shaped hat:**
- `/Users/bethconnor/.claude/plans/virtual-munching-rivest.md` — the only *live-tested* claims (Data Store query/mutate against a real store, kill/restore test, live grade-change test)
- `prototypes/ebr-coworker-005-arc/harness-vertesia-mod-2026-09-07.html` — every native/gap badge, corrected after direct schema re-checks
- `prototypes/ebr-coworker-005-arc/critic-vertesia-feasibility-2026-09-07.md` — the critic pass that caught the Approvals mis-framing and two wrong gap claims
- Vertesia's OpenAPI spec (267 endpoints, v1.4.0), read directly this session — not from memory of what Vertesia "probably" supports

---

## The readiness tiers (mirrors the chart)

| Tier | Capability | Evidence |
|---|---|---|
| 🟢 Wire today | Register read (Data Store `query`) | `[CS: VERIFIED]` — live-tested, real network calls, real data |
| 🟢 Wire today | Grade correction (`mutate` + required `message`) | `[CS: VERIFIED]` — live-tested; schema requires `sql`+`message`, message text is "recorded on the resulting data store version" |
| 🟢 Wire today | Chooser include/exclude | `[CS: HIGH]` — same mutate mechanism, live-tested for one write shape, extrapolated to a second (not separately tested) |
| 🟢 Wire today | Audit trail | `[CS: VERIFIED — schema]` — `GET /data/{storeId}/versions` is real; every `mutate` auto-creates a version. Corrected from a wrong "not covered" call in the first pass. |
| 🟢 Wire today | Evidence attachment | `[CS: VERIFIED — schema]` — `/files/upload-url` returns a stable `{url,id,path}`; store it in a text column. Real 2-call pattern, corrected from a wrong "not covered" call. |
| 🟢 Wire today | PDF/DOCX export + custom template | `[CS: VERIFIED — schema]` — `/rendering/jobs` takes inline markdown directly; `template_url`/`template_path` accepts a custom LaTeX/DOCX template. Vertesia's own console has no upload UI for this — irrelevant, because calling the API directly bypasses the console entirely. |
| 🟡 Wire today, test once | Sign-off pause/resume (`human_task`/`answer-task`) | `[CS: HIGH — schema]` — real 3-call sequence (`GET /tasks?assignee=` → `PUT /tasks/{taskId}` → `POST /agents/{runId}/answer-task`), with a documented footgun (don't call `/complete` on a `human_task` node). Never fired end to end. |
| 🟠 Narrower than it looked | Live-editable report copy (`/prompts/{id}/render`) | `[CS: HIGH — schema]` — real, but requires a pre-built Prompt template; renders variables, doesn't take arbitrary free text |
| 🔴 Different problem entirely | Approvals / changeset screen | `[CS: MEDIUM — architectural]` — its audit log, trust levels, and blast-radius grants are sourced to `acp-core`, a different backend. No amount of Vertesia wiring reaches this screen. |
| 🔴 Product decision, not API | Home floor / system map (MSP-wide fleet view) | `[CS: VERIFIED]` — currently hardcoded (`FLOOR`, `FEEDS` arrays). Blocked on deciding MSP-wide vs. per-tenant scope before any table gets designed. |

## Build order

1. **Reuse, don't re-derive.** `serve.py`'s credential-proxy pattern and `.secrets/vertesia-credentials.json.example`'s shape already solve "don't put a bearer token in browser JS."
2. **Register first** — `query` + `mutate`. Check `GET /tables` before writing SQL; the table name won't match the store name (`findings`, not `ebr_risk_register` — learned that the hard way).
3. **Chooser + client report** — same mutate pattern, plus the files-upload-once → `template_url` pattern for a branded PDF.
4. **Spike Sign-off before trusting it.** Build one throwaway Process with a `human_task` node, fire it for real, confirm the 3-call sequence and the `/complete` footgun with your own eyes — not the spec's.
5. **Decide MSP-wide vs. per-tenant** before touching the floor or system map. Wiring data to an undecided-scope screen means building the wrong table shape.
6. **Fork or drop Approvals.** It's not a Vertesia gap — it's a second backend wearing the same screenshot.

## What's actually missing — not "hard," just not done

- **No real credential vault.** The local proxy is fine for one person; the moment anyone else opens the URL it needs real session auth, and that isn't started.
- **No push.** Query/mutate only — permanently a poll-or-refresh model, not a limitation to engineer around.
- **Concurrent edits, untested.** Two people correcting the same finding at once — nobody has checked what `mutate` does there.
- **Evidence images are two calls, not one.** Small plumbing, but it's plumbing someone has to write.
- **`/prompts/render` needs a template authored once**, in Vertesia's own console, before any variable can go "live."

## The one correction worth saying out loud

The first version of this chart called the custom PDF template a hard gap. It isn't — Beth caught it. The console has no upload UI, but the render API takes a template URL directly, so the console limitation never actually blocks Track B. Worth remembering: "no UI for X in Vertesia's console" and "X isn't possible via Vertesia" are different claims, and this session conflated them at least twice before catching it.
