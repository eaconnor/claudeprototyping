# Vertesia — try it yourself (5 min)

We put the real Technica EBR runbook into Vertesia to see what happens. Two things broke in an
interesting way. Click through and see for yourself — nothing here is destructive, it's a shared
draft in the N-able/MSP project.

## What we built

One Vertesia **Interaction** — a live, running version of `ebr-coworker.runbook.technica.md` — that
takes a runbook step + connector status + a specific finding, and is supposed to produce a
Chooser-ready risk-register entry.

**Open it:** https://cloud.us1.vertesia.io/studio/interactions/6a9e89cd17dd79a2f6181b78

## What happened when we ran it

1. **Hit "Run" → it 404s.** The run actually starts anyway (check the "Agent Runs" tab, it's real) —
   the *redirect* after submit is just broken. Don't trust the 404 page; go find the run in Agent Runs.
2. **The run itself failed both times** — a real Claude-on-Vertex config error:
   `temperature may only be set to 1 when thinking is enabled`. We fixed the field
   (Configuration → Environment → Temperature: 0.2 → 1), saved, confirmed it saved, re-ran —
   **exact same failure.** Best guess: `Run` executes against a *published* version, not the live
   draft, and this Interaction has never been published. Untested — we stopped before publishing
   because that locks/versions the Interaction for everyone else using this shared project.

**Failed run #1:** https://cloud.us1.vertesia.io/studio/interactions/6a9e89cd17dd79a2f6181b78 → Agent Runs tab → `~6c599585`
**Failed run #2 (after the fix):** same Interaction → Agent Runs tab → `~63bfe2c0`

## The more interesting finding

Separately, Vertesia's own **Studio Assistant** (the chat-with-tool-calls copilot in the Interaction
editor) proposed running a script that reads an API token, with an "Ask for approval" toggle that
showed the *mechanism* (script name, tool call) instead of the *consequence* (what it touches, that
it uses a credential). Real quote from whoever was driving it: *"I'm definitely approving things
where I don't know what they are."* That's the exact failure the EBR coworker's own Chooser step
exists to prevent — now visible in the tool we're building it on top of.

**Also worth a look — Task Inbox**, a different Vertesia screen, closer to what a real approval
screen should feel like (plain task title, a form, a Submit button):
https://cloud.us1.vertesia.io/store/tasks

## Dashboards — the good approval card

Asked Studio Assistant to build and save a dashboard against the existing `MspTenantHierarchy` data
(168 orgs). It worked end-to-end: queried the data, previewed a Vega-Lite chart, then asked for
approval — this time naming the actual consequence ("Approve Data: Create Dashboard: MSP Tenant
Hierarchy Overview?"), not just a mechanism. Approved once, and the dashboard is real — see
**Data → MspTenantHierarchy → Dashboards → MSP Tenant Hierarchy Overview** in Studio. One quirk: the
dashboard list shows "Panels: 0 / Last Rendered: Never" even once it's fully built — open it, don't
trust the list.

## Full writeup

Three briefs in the repo, most detail-first-to-summary-last:
- `briefs/ebr-vertesia-concept-test-plan-2026-09-07.md` — the plan this test came from
- `briefs/ebr-vertesia-ux-mapping-2026-09-07.md` — which Vertesia object maps to which EBR coworker screen, incl. the approval-gate incident
- `briefs/vertesia-api-capability-map-2026-09-07.md` — the full API surface (267 endpoints), if you want to know what's possible before building

## If you want to poke at it further

- Try publishing the Interaction and re-running — if that fixes the temperature error, it confirms
  the draft-vs-published theory above. Flag back what you find either way.
- Try running the same Interaction with a different `runbook_part` value (must match exactly:
  `Part A — Wire the connectors` / `Part B — Load the real Technica source` / `Part C — Run the cycle` /
  `Part D — Definition of done / verification` / `Known opens / triage` — note the em dash, a plain
  hyphen gets rejected).
