# Backup reporting — N-able Cove Data Protection JSON-RPC + column codes

Scouted 2026-08-24. Strand 4 of 8. **Strongest source in the whole set.**

## ⭐ Primary source
- **Column Codes** — https://developer.n-able.com/n-able-cove/docs/column-codes [CS: VERIFIED — official vendor developer portal, full table read verbatim]
- **Getting Started with Cove Data Protection** — https://developer.n-able.com/n-able-cove/docs/getting-started [CS: VERIFIED]
- **JSON-RPC API guide** — https://documentation.n-able.com/covedataprotection/USERGUIDE/QSG/Content/service-management/json-api/home.htm [CS: HIGH — indexed, 403 to fetcher]
- Machine-readable schema published at: `https://documentation.n-able.com/covedataprotection/Schema_23.3.json` [CS: VERIFIED — cited by the getting-started page as the authoritative method spec]

## Transport facts
- Protocol: **JSON-RPC**, HTTP POST, `Content-Type: application/json`
- Endpoint: `https://api.backup.management/jsonapi`
- **Methods and parameters are case-sensitive**
- **Time is Unix seconds** since 1970-01-01 UTC — *not* ISO 8601
- **Size is bytes**

[CS: VERIFIED]

Method example: `EnumerateAccountStatistics`, taking a `query` of type `AccountStatisticsQuery`, returning an iterator of `AccountStatisticsInfo` plus a `totalStatistics` of type `TotalStatisticsInfo`. [CS: HIGH]

## The identifier convention — this is what makes Cove structurally distinctive
Cove does not return named JSON fields. It returns **coded columns you request by vector**, e.g.:
```json
"Columns": ["I1", "I14", "I18", "D01F07"]
```
**Zero-padding is mandatory. Use `D01`, not `D1`.** [CS: VERIFIED — vendor's own emphasis]

Three code families:
- `I##` — device/account properties (I0–I82)
- `D##` — data source identifiers (D01–D23)
- `F##` — statistic fields (F00–F21)
- `D##F##` — composite: that statistic, for that data source

## Device / account properties (`I` codes) — verbatim
| Code | Definition |
|---|---|
| I0 | Device ID |
| I1 | Device name |
| I2 | Device name alias |
| I3 | Password |
| I4 | Creation date |
| I5 | Expiration date |
| I6 | Timestamp |
| I8 | Customer |
| I9 | Product ID |
| I10 | Product |
| I11 | Storage location |
| I12 | Device group name |
| I13 | Own user name |
| I14 | Used storage |
| I15 | Email |
| I16 | OS version |
| I17 | Client version |
| I18 | Computer name |
| I19 | Internal IPs |
| I20 | External IPs |
| I21 | MAC address |
| I22 | Dashboard frequency |
| I23 | Dashboard language |
| I24 | Time offset |
| I26 | Cabinet Storage Efficiency |
| I27 | Total Cabinets Count |
| I28 | Efficient Cabinet Count 0–25% |
| I29 | Efficient Cabinet Count 26–50% |
| I30 | Efficient Cabinet Count 50–75% |
| I31 | Used Virtual Storage |
| I32 | OS type (1=workstation, 2=server, 0=undefined) |
| I33 | Seeding mode (0=Undefined, 1=Normal, 2=Seeding, 3=PreSeeding, 4=PostSeeding) |
| I34 | Anti Crypto enabled |
| I35 | LSV (0=Disabled, 1=Enabled) |
| I36 | Storage status (−2=Offline, −1=Failed, 0=Undefined, 50=Running, 100=Synchronized) |
| I37 | LSV status (−2=Offline, −1=Failed, 0=Undefined, 50=Running, 100=Synchronized) |
| I38 | Archived size |
| I39 | Retention units |
| I40 | Activity description |
| I41 | Number of Hyper-V virtual machines |
| I42 | Number of ESX virtual machines |
| I43 | Encryption status |
| I44 | Computer manufacturer |
| I45 | Computer model |
| I46 | Installation ID |
| I47 | Installation Mode |
| I48 | Restore email |
| I49 | Restore dashboard frequency |
| I50 | Restore dashboards language |
| I54 | Profile ID |
| I55 | Profile version |
| I56 | Profile |
| I57 | Stock Keeping Unit |
| I58 | Stock Keeping Unit of previous month |
| I59 | Account type (0=Unknown, 1=Backup Manager, 2=M365) |
| I60 | Proxy Type |
| I62 | Most Recent Restore Plug-in |
| I63 | Company Name |
| I64 | Address |
| I65 | Zip Code |
| I66 | Country |
| I67 | City |
| I68 | Phone Number |
| I69 | Fax Number |
| I70 | Contract Name |
| I71 | Group Name |
| I72 | Demo |
| I73 | Edu |
| I74 | Unattended Installation account ID |
| I75 | First Installation Flag |
| I76 | Maximum Allowed Version |
| I77 | Customer reference |
| I78 | Active data sources (concatenated 3-character codes) |
| I80 | Recovery Testing/Continuity (0=None, 1=Recovery Testing, 2=Standby Image) |
| I81 | Physicality (Undefined, Physical, Virtual) |
| I82 | Passphrase (Yes/No) |

[CS: VERIFIED]

## Statistic fields (`F` codes) — verbatim — this is the backup-job record
| Code | Definition |
|---|---|
| F00 | Last Session Status |
| F01 | Last Session Selected Count |
| F02 | Last Session Processed Count |
| F03 | Last Session Selected Size |
| F04 | Last Session Processed Size |
| F05 | Last Session Sent Size |
| F06 | Last Session Errors Count |
| F07 | Protected size |
| F08 | Color bar – last 28 days |
| F09 | Last successful session Timestamp |
| F10 | Pre Recent Session Selected Count |
| F11 | Pre Recent Session Selected Size |
| F12 | Session duration |
| F13 | Last Session License Items count |
| F14 | Retention |
| F15 | Last Session Timestamp |
| F16 | Last Successful Session Status |
| F17 | Last Completed Session Status |
| F18 | Last Completed Session Timestamp |
| F19 | Last Session Verification Data |
| F20 | Last Session User Mailboxes Count |
| F21 | Last Session Shared Mailboxes Count |

[CS: VERIFIED]

**Answers the specific asks:**
- Retention field → `F14` (per data source) and `I39` "Retention units" (per device). [CS: VERIFIED]
- Restore-test tracking → `I80` **Recovery Testing/Continuity** with enum 0=None / 1=Recovery Testing / 2=Standby Image. Also `I62` Most Recent Restore Plug-in. [CS: VERIFIED]
- Verification → `F19` Last Session Verification Data. [CS: VERIFIED]
- "Color bar – last 28 days" (`F08`) is a real published field — a 28-day rolling status strip. Worth reproducing; it's the kind of thing invention never produces. [CS: VERIFIED]
- Three *different* "last session" timestamps coexist: `F15` (last), `F09` (last successful), `F18` (last completed). Three different statuses too: `F00`, `F16`, `F17`. [CS: VERIFIED] — realistic mock data should carry all three, diverging.

## Data source codes (`D`) — verbatim, with legacy single-letter equivalents
| Code | Definition | Legacy |
|---|---|---|
| D01 | Files and Folders | F |
| D02 | System State | S |
| D03 | MsSql (deprecated — use D10) | Q |
| D04 | VssExchange | X |
| D05 | Microsoft 365 SharePoint | — |
| D06 | NetworkShares | N |
| D07 | VssSystemState | S |
| D08 | VMware Virtual Machines | W |
| D09 | Total | T |
| D10 | VssMsSql | Z |
| D11 | VssSharePoint | P |
| D12 | Oracle | Y |
| D14 | Hyper-V | H |
| D15 | MySql | L |
| D16 | Virtual Disaster Recovery | V |
| D17 | Bare Metal Restore | B |
| D19 | Microsoft 365 Exchange | G |
| D20 | Microsoft 365 OneDrive | J |
| D23 | Microsoft 365 Teams | — |

[CS: VERIFIED. Note the real-world gaps: D13, D18, D21, D22 are absent, and D03 is deprecated-but-present. Reproduce the gaps — clean sequences are a tell for invented data.]

## Composite construction
`D[datasource]F[field]`, zero-padded.
- `D01F03` = Files + Selected Size
- `D02F05` = System State + Sent Size
- `D19F20` = M365 Exchange + User Mailboxes Count
- `D01F07` = Files + Protected size

[CS: VERIFIED]

## `I78` parsing rule
Returns concatenated 3-character codes: `D01D02` = Files + System State; `D01D15D02` = Files + MySQL + System State.
Wildcard filter syntax, verbatim: `I78=~'*D02*'` returns devices with System State. [CS: VERIFIED]

## [WOBBLY] flag
- https://www.n-able.com/resources/cove-data-protection (datasheet) — vendor marketing, no schema. Do not cite for field names.
- Gradient's Cove pages (support.meetgradient.com/cove) — third-party billing integration; useful only as corroboration that column codes are how partners actually pull this data. [CS: MEDIUM]

## Alternative vendors in this category — NOT researched
Veeam and Datto were named in the brief as alternates. Went deep on Cove only, because (a) its schema is fully public and (b) it's an N-able product, which matters for a prototype in this repo. **Veeam REST/Enterprise Manager API and Datto BCDR API remain unscouted.** [CS: UNKNOWN]
