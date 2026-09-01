# N-able N-central — device/asset API field names

Scouted 2026-08-24. Strand 1 of 8.

## ⭐ Primary source
- **N-central REST API — Retrieve Device Details** — https://developer.n-able.com/n-central/docs/retrieve-device-details [CS: VERIFIED — official vendor developer portal, field table read directly]
- **Device Management APIs Overview** — https://developer.n-able.com/n-central/docs/device-management-apis-overview [CS: VERIFIED]
- **REST API known issues and limitations** — https://developer.n-able.com/n-central/docs/rest-api-known-issues-and-limitations [CS: VERIFIED]

## Endpoints (verbatim paths)
```
GET /api/devices
GET /api/devices/{deviceId}
GET /api/devices/{deviceId}/assets
GET /api/devices/{deviceId}/assets/lifecycle-info
GET /api/devices/{deviceId}/service-monitor-status
GET /api/devices/{deviceId}/scheduled-tasks
GET /api/devices/{deviceId}/maintenance-windows
GET /api/devices/{deviceId}/custom-properties
```
[CS: VERIFIED]

## `GET /api/devices` — response fields with vendor's own example values
| Field | Type | Vendor example |
|---|---|---|
| `deviceId` | Integer | `1299930810` |
| `uri` | String | `"52.141.77.215"` |
| `longName` | String | `"WS_01-12091-001001"` |
| `deviceClass` | String | `"Workstations - Windows"` |
| `description` | String | `"Network device"` |
| `osId` | String | `"winnt"` |
| `supportedOs` | String | `"Microsoft Windows 10 Enterprise"` |
| `orgUnitId` | Integer | `12091` |
| `soId` | Integer | `12091` |
| `customerId` | Integer | `12091` |

Pagination envelope fields: `pageNumber`, `pageSize`, `totalItems`. [CS: VERIFIED]

`GET /api/devices/{deviceId}` adds: `isProbe` (Boolean), `licenseMode` (String, e.g. `"Professional"`). [CS: VERIFIED]

Other field names named in the overview page: `externalId2`, `country`, `customerName`, `siteName`, `lastApplianceCheckinTime`. [CS: HIGH — named in docs, no example value published]

## Identifier convention — the note that matters
`deviceId` is a **long integer**, not a GUID and not a hostname. `customerId`/`soId`/`orgUnitId` collapse to the same integer in the vendor's own example (`12091`). [CS: VERIFIED]

**Device naming:** the only published example of `longName` is `"WS_01-12091-001001"` — appears to embed a class prefix, the org unit id, and a sequence. [CS: MEDIUM — one example string in vendor docs; N-able publishes no device-naming-convention standard that I could find. Do not present this pattern as "the" N-central convention.]
**[GAP]** No published N-central device naming convention document located.

## Check-in / agent version
- `lastApplianceCheckinTime` — documented as only available on `/api/devices/{deviceId}` until v2025.3.1.9, when it was added to `/api/devices`. [CS: VERIFIED — stated in known-issues page]
- `lastLoggedInUser` and `stillLoggedIn` — **documented as always returning null** on the single-device endpoint; known bug. [CS: VERIFIED]
- `extra.deviceClassValue` / `extra.deviceClassLabel` — documented always null on the active-issues endpoint. [CS: VERIFIED]
- **Agent version:** available as a filter property named **"Agent Version"** in the N-central UI filter builder (documentation.n-able.com filter docs). No REST field name published. [CS: MEDIUM] **[GAP]** — exact REST key for agent version not found.

## Asset detail structure (`/assets`)
Nested categories, verbatim: `os`, `application`, `computersystem`, `networkadapter`, `device`, `processor`, `_extra`.
- `os`: `reportedos`, `osarchitecture`, `version`
- `computersystem`: `serialnumber`, `netbiosname`, `model`, `manufacturer`
- `networkadapter`: `ipaddress`, `macaddress`

[CS: HIGH — field names published; note the **lowercase, unseparated** casing here vs. camelCase on `/api/devices`. That inconsistency is real and worth reproducing in mock data.]

## Lifecycle fields (`/assets/lifecycle-info`)
`warrantyExpiryDate` `"2024-12-31"` · `leaseExpiryDate` `"2024-12-31"` · `expectedReplacementDate` `"2025-01-01"` · `purchaseDate` `"2022-01-01"` · `cost` `1200.00` · `location` `"Head Office"` · `assetTag` `"LAP-2022-001"` · `description`

Date format: **`YYYY-MM-DD`, date-only, no time, no zone.** [CS: VERIFIED]

## Patch status vocabulary
Source: https://documentation.n-able.com/N-central/userguide/Content/Patch-Management/PatchManagement_MonMissing.htm and Patch Status service v2 https://documentation.n-able.com/N-central/userguide/Content/Services/Services_PatchStatus-mk2.htm

Combined per-patch status values, verbatim: **Failed · Needed · Installed · Not Needed**.
Intermediate device states named inside "Needed": approved, installing, scheduled, awaiting approval, No approval. [CS: HIGH]

Patch Status v2 service status values: **Normal · Warning · Failed (Error)**.
Tracked metrics named: New Patches (by age), Pending Installation, Missing (by maintenance window / by age), Approved-not-installed, Unapproved, reboot required, time since patch release in days, WUA version (installed/managed/latest known).
Error code formats, verbatim: `PME###`, `P###`, `WUA###`. [CS: HIGH]
Patch priority classes: High / Medium / Low. [CS: HIGH]

## Legacy SOAP (still in wide MSP use)
Methods: `DeviceGet`, `DeviceList`, `DeviceAssetInfoExport`, `DeviceAssetInfoExport2` (key-value pair format).
https://developer.n-able.com/n-central/docs/web-service-apis [CS: VERIFIED that these methods exist]
**[GAP]** Return field names for SOAP methods are not published on the public web — vendor directs you to `https://<server>/dms/` Javadocs on your own instance. [CS: VERIFIED that this is the documented route]

## Operational realities worth encoding in mock data
- Rate limits 1–50 concurrent calls/endpoint; 429 on excess. [CS: VERIFIED]
- Errors can arrive attached to a **200 OK** — docs say "always check for" an error field. [CS: VERIFIED]
- API user passwords expire every 90 days by default → 500 errors. [CS: VERIFIED]

## Trust ladder
- Strongest: developer.n-able.com pages (vendor primary, technical).
- Do-not-cite: the Truto integration listing (https://truto.one/integrations/detail/nablencentral/) — third-party aggregator marketing. [WOBBLY]
