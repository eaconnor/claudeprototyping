# M365 policy governance / drift detection — Inforcer + Microsoft's native drift API

Scouted 2026-08-24. Strand 6 of 8. The prototype's fictional "Enforcer" → real analogue confirmed as **Inforcer**.

## ⭐ Strongest source — Microsoft's own drift API (published Jan 2026)
**"Stop Configuration Drift in Microsoft 365 Using the new Configuration Management API's – A Deep Dive"** — The Lazy Administrator (Bradley Wyatt)
https://www.thelazyadministrator.com/2026/01/27/stop-configuration-drift-in-microsoft-365-using-the-new-configuration-management-apis-a-deep-dive/
[CS: HIGH — respected independent technical blog quoting live API responses; not vendor marketing. Post-dates the training window, so the *existence and stability* of these beta endpoints is [CS: LOW — outside training window] and should be re-verified against learn.microsoft.com before shipping.]

### Endpoints, verbatim
```
POST /beta/admin/configurationManagement/configurationSnapshotJobs
GET  /beta/admin/configurationManagement/configurationSnapshotJobs
GET  /beta/admin/configurationManagement/configurationSnapshots('{id}')
POST /beta/admin/configurationManagement/configurationMonitors
GET  /beta/admin/configurationManagement/configurationMonitors('{id}')/baseline
GET  /beta/admin/configurationManagement/configurationMonitoringResults
GET  /beta/admin/configurationManagement/configurationDrifts
```
[CS: HIGH]

### Snapshot job record — verbatim JSON
```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.configurationSnapshotJob",
  "id": "44dfe2c1-86ca-4c2b-9151-ca6d6eb06626",
  "displayName": "Snapshot Demo",
  "status": "succeeded",
  "resources": ["microsoft.entra.user"],
  "createdDateTime": "2026-01-27T19:47:25.9297207Z"
}
```
[CS: HIGH — note the **7-digit fractional seconds**. That is a real .NET/Graph serialisation tell.]

### Drift record — verbatim JSON. **This is the shape to copy.**
```json
{
  "id": "ec7f26c3-56cf-4df7-8397-07a99e7d1b52",
  "monitorId": "fb708914-be65-4fda-a01e-77c4b2b7c403",
  "resourceType": "microsoft.entra.user",
  "status": "active",
  "driftedProperties": [
    {
      "propertyName": "DisplayName",
      "currentValue": "Bradley Robert Wyatt",
      "desiredValue": "Bradley Wyatt"
    }
  ]
}
```
[CS: HIGH]

**The reusable pattern:** a drift record is `{drift id, monitor id, resourceType, status, driftedProperties[]}` where each drifted property is a `{propertyName, currentValue, desiredValue}` triple. Not a diff blob, not a boolean — a per-property current-vs-desired pair. [CS: HIGH]

- `resourceType` uses **dotted lowercase namespaces**: `microsoft.entra.user`, `microsoft.entra.group`. [CS: HIGH]
- Required permission, verbatim: `ConfigurationMonitoring.ReadWrite.All`
- Service principal app ID quoted: `03b07b79-c5bc-4b5e-9bfa-13acf4a99998` [CS: MEDIUM — single source]

## Inforcer — real cmdlet/property surface
**"InforcerCommunity: A PowerShell Module for the Inforcer REST API"** — RK Solutions
https://rksolutions.nl/posts/inforcercommunity-a-powershell-module-for-the-inforcer-api/
[CS: MEDIUM–HIGH — community module wrapping the real REST API; not vendor-primary, but property names are drawn from live responses] [WOBBLY — single community author]

### Connection
`Connect-Inforcer -ApiKey -Region <uk|eu|us|anz> -BaseUrl` — **regional API endpoints**, key as SecureString. [CS: MEDIUM]

### Core cmdlets → what they return
| Cmdlet | Returns |
|---|---|
| `Get-InforcerTenant` | TenantId, tenant name, metadata |
| `Get-InforcerTenantPolicies` | policy objects: name, category, platform, settings |
| `Get-InforcerBaseline` | baseline groups and member policies |
| `Get-InforcerAlignmentDetails` | **alignment scores, per-policy compliance status** |
| `Get-InforcerAuditEvent` | audit events, filtered `-EventType -DateFrom -DateTo` |
| `Invoke-InforcerAssessment` | per-check findings |
| `Compare-InforcerEnvironments` | source vs destination tenant/baseline comparison |

[CS: MEDIUM]

### Property names, verbatim from the module
- **Alignment check object:** `Status`, `name`, `category`, `importance`, `Scores[]` — where each score has `objectId`, `score`, `objectName`, `violations[]`
- **Assessment check object:** `Status` (Pass/Fail), `name`, `category`, `subCategory`, `importance`, `ObjectsEvaluated`, `FindingsMessage`, `Scores[]`
- **Report type object:** `Key`, `Description`, `SupportedFormats[]`, `Tags[]`, `SupportsCollation`
- **User object:** `UserId`, `UserPrincipalName`, `DisplayName`, `Groups[]`, `DirectoryRoles[]`, `Devices[]`, `RiskLevel`
- **Report run object:** `RunId`, status, timestamps

[CS: MEDIUM — note the **mixed casing within a single object** (`Status` and `name` and `category` side by side). That is a real API smell, worth reproducing.]

### `-TenantId` accepts three forms
"Numeric ID, Microsoft GUID, or tenant name (case-insensitive)." [CS: MEDIUM]
**Directly relevant to strand 8** — the tenant identifier is itself ambiguous by design.

Assessment identifiers named as examples: **"Copilot Readiness"**, **"CIS Microsoft 365 Foundations Benchmark"**. [CS: MEDIUM]

## [WOBBLY] — vendor marketing, do NOT cite for schema
- https://www.inforcer.com/platform
- https://www.inforcer.com/shared-baselines
- https://www.inforcer.com/insights/how-to-manage-configuration-drift-across-multiple-m365-tenants
- https://www.coreview.com/blog/configuration-drift-m365
- https://channelpartners.net/secure-365-tenants-fast-inforcer/

All marketing/thought-leadership. Fine for framing the problem; contain no field names.

## Confirmed gaps
- **No official Inforcer API reference located.** The community module is the best public source. [CS: VERIFIED that this is the situation]
- Graph configuration-management endpoints not verified against learn.microsoft.com. Do that before shipping. [CS: LOW — outside training window]
