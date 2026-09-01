# Entity resolution across MSP tool stacks — NOT a gap

Scouted 2026-08-24. Strand 8 of 8.

## Verdict first
Asked to say so plainly if this turned out to be unfindable. **It is findable.** The problem is documented — not as academic literature, but as **matching logic inside vendor integration documentation**. Three vendors publish their actual matching cascades. One publishes a formal normalization model. That is the real published material.

What does *not* exist: a neutral, cross-vendor "canonical asset ID" standard for the MSP channel. Each integration invents its own. [CS: HIGH — absence, based on this search]

---

## ⭐ Strongest source — Datto RMM → Autotask PSA matching cascade
https://rmm.datto.com/help/en/Content/2SETUP/Integrations/AutotaskIntegration.htm
[CS: VERIFIED — official vendor help, read directly]

The documented six-step matching order, verbatim structure:

1. **Existing mapping check** — "Check if the device is already mapped to an Autotask configuration item."
2. **Canonical ID check** — search for a configuration item where "the native field of **`RMMDeviceUID`** matches the Datto RMM device ID." If found and inactive, activate it first.
3. **Hostname + serial match** — within the mapped organisation, search for items matching "**hostname** (in Autotask: **Reference Name**) and **serial number**."
4. **Duplicate handling** — "If more than one matching configuration item is found and they are *active*, identify the **oldest**, populate the Autotask native field of `RMMDeviceUID`."
5. **Cross-organisation search** — if no match in the mapped org, **search across all organisations for matching serial numbers**.
6. **Create** — create a new Autotask configuration item, populate `RMMDeviceUID`, map and sync.

**This IS the canonical-asset-ID pattern.** The RMM writes its own device UID into a dedicated native field on the PSA record, and thereafter that field is authoritative. Fuzzy matching (hostname+serial) is only the bootstrap.

Other documented specifics:
- "For Datto Networking devices, the **serial number is populated as the MAC address**." — a real, published identifier-type collision. [CS: VERIFIED]
- `Product` and `Configuration Item Type` "are only synchronized (applied) when a new configuration item is created… will not be overwritten" on existing items. → **stale-field drift is designed in.** [CS: VERIFIED]
- UDF mapping: renaming a synced UDF in RMM Global Settings without renaming its Autotask counterpart "immediately after" causes "a new UDF [to be] created when the next device sync job runs." → **schema drift produces orphan fields.** [CS: VERIFIED]

---

## IT Glue — documented matching keys and the duplicate trap
https://help.itglue.kaseya.com/help/Content/1-admin/rmm-integrations/about-rmm-configuration-integrations.html
https://help.itglue.kaseya.com/help/Content/1-admin/getting-started/sync-methods-which-one-to-choose.html
https://help.itglue.kaseya.com/help/Content/1-admin/rmm-integrations/rmm-field-mappings.html
[CS: HIGH — official Kaseya/IT Glue help]

- "For RMM organizations and configurations to be **automatically matched**, the **organization names** and the **device serial numbers or MAC addresses** must match." [CS: HIGH]
- Manual matching screen exists precisely because auto-match fails: "first match any of the devices based on MAC addresses or serial number, **for example, virtual servers**." → **VMs are called out by the vendor as the hard case.** [CS: HIGH]
- Duplicate trap, documented: "With sync methods that involve both RMM and PSA, don't use the RMM matching screens to create new organizations or configurations… because you'll automatically get the same RMM data from a PSA sync." → the same device arriving via two paths creates duplicates. [CS: HIGH]
- **Precedence rule, documented:** "RMM is the primary data source so will overlay any similar data coming from your other integrations, PSA, as well as content manually input in to IT Glue." → a published source-of-truth hierarchy. [CS: HIGH]

---

## HaloPSA — configurable match field, and an exclusion list
https://www.usehalo.com/halopsa/guides/1778 (ConnectWise RMM Integration Guide)
[CS: HIGH — vendor guide, read directly]

- "**Asset Matching field** … This field is used to match assets to existing records. If matched, the record will be updated. **This should be the unique identifier of the asset.**" → the match key is *operator-configurable per integration*, not fixed. [CS: HIGH]
- "**Asset Matching Value Exclusions**" — excludes generic values (the doc's own example: **"None"**) to prevent false matches. → **published acknowledgement that placeholder values collapse distinct devices into one.** Strong, specific, citable. [CS: HIGH]
- Field mappings support "Only apply this mapping to new Assets and Assets where the Asset field does not currently have a value" → deliberate no-overwrite drift. [CS: HIGH]
- Halo assets carry `integration_type` and `integration_tenantids` fields (see strand 2) — provenance is modelled on the record. [CS: HIGH]

---

## Axonius — the formal normalization/correlation model
https://docs.axonius.com/docs/normalization-reasons-complex-field
https://www.axonius.com/blog/behind-actionability-the-axonius-asset-intelligence-pipeline
[CS: MEDIUM–HIGH — the docs page is vendor-technical; the blog is vendor-authored thought leadership. [WOBBLY] on the blog specifically.]

Closest thing to a published *theory* of the problem:

- **Normalization Reasons** is a first-class complex field with columns: **Normalization Reason** ("the normalizer's name"), **Field name**, **Field Value**, **Calculated time** ("the time in the discovery cycle at which this was found"). → the system records *why* it declined to correlate, per field, per cycle. [CS: HIGH]
- Correlation identifiers used: **MAC address, hostname, serial number, domain, user ID, Cloud ID, UUID**. [CS: MEDIUM]
- Explicitly excluded: **IP address**, "unless explicitly configured" — too unstable. [CS: MEDIUM]
- **Non-unique-identifier rule, near-verbatim:** "A MAC address associated with multiple devices is considered non-unique within the environment and is therefore excluded from correlation based solely on MAC addresses." [CS: MEDIUM]
- "A Device Serial is normally a hardware identifier representing the BIOS serial, and as such, it should be unique." [CS: MEDIUM]
- **Shared-hardware rule:** MAC addresses from "shared or interchangeable hardware" — **docking stations, KVM switches** — are flagged as not reliably representing an individual asset. [CS: MEDIUM — a concrete, non-obvious failure mode]
- **Source-level trust hierarchy:** "AD and ITAM are considered high-fidelity; vuln scanners are noisy and low-trust." Confidence-weighted scoring. [CS: MEDIUM — from the vendor blog] [WOBBLY]
- Other documented conflict checks: private IPs appearing across multiple domains; hostnames appearing across different OSes or cloud providers.
- **Adapter Connections** column shows which sources a device was seen from = the visible artefact of correlation. [CS: MEDIUM]

---

## Community / practitioner material — thinner than the vendor docs
- **mspp.io, "Halo PSA improved Datto RMM sync"** — https://mspp.io/powershell-halo-psa-improved-datto-rmm-sync/ [CS: HIGH — read directly]
  - Matches on a Halo field literally named **`datto_id`** (`if ($HaloAsset.datto_id)`) — a second, independent instance of the foreign-key-written-into-the-PSA pattern.
  - Documents that manufacturer and serial number are **not on the Datto standard device endpoint** — must come from the **Audit endpoint**. → the identifying attributes live in a different call than the device record. Directly relevant.
  - Workaround documented: "The first time you add a field to an asset it will add the field but not the data," so the script "runs the update twice for each asset."
  - Does **not** discuss duplicates or renames.
- **superops.com / worksent.com / syncrosecure.com** PSA-RMM integration guides [WOBBLY — MSP vendor content marketing]. They do state the problem plainly: "RMM discovers devices by hostname while PSA tracks them by asset tags or serial numbers, and these inconsistencies prevent proper matching," with the recommended fix being "standardize naming conventions before integrating and document them." Usable as evidence the problem is widely acknowledged; **not** usable as technical specification.

## Confirmed gaps in this strand
- **No neutral/open canonical asset ID standard for the MSP channel.** Every pattern found is proprietary (`RMMDeviceUID`, `datto_id`, Halo's configurable "Asset Matching field"). [CS: HIGH]
- **No academic or standards-body literature** on MSP-specific entity resolution surfaced. General ITAM/CMDB reconciliation literature exists but was not scouted. [CS: UNKNOWN]
- **No published data on failure rates** — how often matching actually fails in production. Nobody publishes this. [CS: HIGH — absence]

## Trust ladder
- **Strongest:** Datto RMM Autotask integration help (a full, ordered, verbatim matching cascade). Then IT Glue help. Then Halo's ConnectWise guide.
- **Directional only:** Axonius docs + blog — the most conceptually complete model, but vendor-authored and describing a non-MSP-native product. [WOBBLY]
- **Do-not-cite for specification:** superops, worksent, syncro, acronis, domotz, infrassist blog posts. Content marketing.
