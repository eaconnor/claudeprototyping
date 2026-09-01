# HaloPSA — ticket ("Fault") and asset schema

Scouted 2026-08-24. Strand 2 of 8.

## Source situation — read this first
HaloPSA's official API docs are served **per tenant** at `https://<tenant>.halopsa.com/apidoc/resources/tickets` and are **JavaScript-rendered**. They 404 or return empty to a plain fetcher. I could not read the authoritative doc directly. [CS: VERIFIED — attempted haloacademy, slrgroup, halo.haloservicedesk; all 404 to fetch]

What follows is drawn from **third-party API wrappers whose parameter lists are copied from the live API**. Treat as HIGH for *field-name existence*, MEDIUM for *semantics*. [WOBBLY — no vendor-primary technical source read]

## ⭐ Strongest usable source
- **covenanttechnologysolutions/halopsa-rest — `TicketsAPI.ts`** — https://github.com/covenanttechnologysolutions/halopsa-rest/blob/master/src/HaloPSA/TicketsAPI.ts [CS: HIGH — exhaustive verbatim parameter list, clearly machine-generated from the API surface]
- `AssetAPI.ts` — https://github.com/covenanttechnologysolutions/halopsa-rest/blob/master/src/HaloPSA/AssetAPI.ts [CS: HIGH]

## The naming convention (this is the load-bearing observation)
Halo uses **lowercase with underscores, inconsistently applied.** Real examples from the parameter list:
`client_id`, `site_id`, `user_id`, `asset_id`, `ticket_id`, `status_id`, `tickettype_id`, `category_1`…`category_4`
but also unseparated: `tickettype`, `assettype`, `awaitinginput`, `dateoccurred`, `closed_only`, `includebreached`, `includeslatimer`
and genuine **typos shipped in the live API**: `invlucebranch`, `inlcludeopenchildcount`, `includuserdepartments`, `pageinate`.
[CS: HIGH — typos are verbatim in the wrapper source; they are strong evidence the list was generated against the real API rather than authored]

## Ticket ("Fault") — field names confirmed present
From a HaloPSA notification-template JSON example (vendor templating syntax `<<ticket^field>>`), the ticket object is shaped:
```json
{
  "ticket": {
    "id": "<<ticket^id>>",
    "summary": "<<ticket^summary>>",
    "details": "<<ticket^details>>",
    "dateoccurred": "<<ticket^dateoccurred>>",
    "dateclosed": "<<ticket^dateclosed>>",
    "status": { "id": "...", "name": "...", "shortname": "..." },
    "tickettype": { "id": "...", "name": "..." },
    "priority": { "id": "<<ticket^priority_id>>", "name": "..." },
    "client_id": "...", "client_name": "...",
    "site_id": "...", "site_name": "...",
    "team": "...",
    "agent": { "id": "...", "name": "..." },
    "organisation_id": "...",
    "department_id": "...",
    "workflow_name": "...",
    "oppcompanyname": "..."
  }
}
```
[CS: MEDIUM — sourced via search snippet of Halo integration/templating docs, not read from a vendor page directly. The *shape* — nested `{id, name}` lookups sitting beside flat `*_id`/`*_name` pairs on the same object — is the reusable observation.]

Note the British spelling `organisation_id`. [CS: HIGH]

## Asset linkage — the question you asked
**It is a foreign key, not free text.**
- `GET /Tickets` accepts `asset_id` as a filter parameter. [CS: HIGH — verbatim in TicketsAPI.ts]
- `GET /Asset` accepts `ticket_id` and `linked_to_ticket`. [CS: HIGH — verbatim in AssetAPI.ts]
- `GET /Tickets` also accepts `includeassetkeyfield`, `includeassettype`, and `search_inventory_number`. [CS: HIGH]

So: tickets carry an asset FK, assets carry a human-facing `inventory_number`, and there is a configurable "asset key field". [CS: HIGH]

## SLA fields
Confirmed parameter names on `GET /Tickets`: `sla`, `includeslaactiondate`, `includeslatimer`, `excludeslacalcs`, `includebreached`. [CS: HIGH]
**[GAP]** I did not confirm the *response* SLA property names (e.g. whether they are `slaid`/`fixbydate`/`responsedate`). Do not invent these. [CS: FABRICATION RISK if guessed]

## Date fields confirmed by name
`dateoccurred`, `dateclosed`, `billing_date`, `startdate`, `enddate`, `startdatetime`, `enddatetime`, `lastupdatefromdate`, `lastupdatetodate`, `calendar_startdate`, `calendar_enddate`, `datesearch`, `utcoffset`. [CS: HIGH]
**[GAP] Date *format* not verified.** Halo exposes a `utcoffset` parameter, which implies stored UTC + client-side offset, but I did not confirm the serialised string format. [CS: LOW on format — flag in the prototype rather than asserting ISO 8601]

## Asset resource — filter/field names (verbatim, AssetAPI.ts)
`assettype_id`, `assetgroup_id`, `client_id`, `site_id`, `user_id`, `inventory_number`, `search_inventory_number_only`, `contract_id`, `supplier_id`, `supplier_contract_id`, `item_id`, `itemstock_id`, `stockbin_id`, `licence_id`, `service_id`, `salesorder_id`, `salesorder_line`, `consignment_id`, `activeinactive`, `includeinactive`, `includeassetfields`, `includechildren`, `includehierarchy`, `includeactivity`, `integration_tenantids`, `integration_type`, `lastupdatefromdate`, `lastupdatetodate`, `include_custom_fields`
[CS: HIGH]

`integration_type` + `integration_tenantids` are the RMM-provenance fields on a Halo asset — relevant to strand 8. [CS: HIGH]

## Underlying database shape (context, not for mock data)
DTC Inc. published a schema dump generated from `INFORMATION_SCHEMA.COLUMNS`:
https://kb.dtctoday.com/books/halopsa-database-schema
Reports: table **`FAULTS`** has **757 columns**; Tickets category = 39 tables; Assets = 27 tables; SLA = 20 tables.
[CS: MEDIUM — third-party MSP knowledge base, but explicitly states its generation method. The 757-column figure is a useful reality check on how wide a real PSA ticket record is.] [WOBBLY]

## Trust ladder
- Strongest available: the two GitHub wrapper files (verbatim parameter lists).
- Directional only: DTC KB (third-party, but methodologically transparent).
- Do-not-cite: any `apidoc` URL I list — they 404 to fetchers and I did not read them. Do not claim they were consulted.
