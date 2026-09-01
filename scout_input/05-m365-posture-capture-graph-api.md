# M365 configuration/posture capture — Microsoft Graph resource schemas

Scouted 2026-08-24. Strand 5 of 8. All sources are Microsoft's own reference docs.

## ⭐ Primary sources (all read verbatim)
- `userRegistrationDetails` — https://learn.microsoft.com/en-us/graph/api/resources/userregistrationdetails?view=graph-rest-1.0 [CS: VERIFIED]
- `conditionalAccessPolicy` — https://learn.microsoft.com/en-us/graph/api/resources/conditionalaccesspolicy?view=graph-rest-1.0 [CS: VERIFIED]
- `secureScore` — https://learn.microsoft.com/en-us/graph/api/resources/securescore?view=graph-rest-1.0 [CS: VERIFIED]

## MFA enforcement state → `userRegistrationDetails`
This is the correct resource. Full property list, verbatim:

```json
{
  "@odata.type": "#microsoft.graph.userRegistrationDetails",
  "id": "String (identifier)",
  "isAdmin": "Boolean",
  "isMfaCapable": "Boolean",
  "isMfaRegistered": "Boolean",
  "isPasswordlessCapable": "Boolean",
  "isSsprCapable": "Boolean",
  "isSsprEnabled": "Boolean",
  "isSsprRegistered": "Boolean",
  "isSystemPreferredAuthenticationMethodEnabled": "Boolean",
  "lastUpdatedDateTime": "String (timestamp)",
  "methodsRegistered": ["String"],
  "systemPreferredAuthenticationMethods": ["String"],
  "userDisplayName": "String",
  "userPreferredMethodForSecondaryAuthentication": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```
[CS: VERIFIED]

**Key structural facts:**
- `id` is the **Entra user object GUID**, not a UPN. `userPrincipalName` is separate. [CS: VERIFIED]
- **`isAdmin` is a boolean on this same record** — MS explicitly documents it as "used to check the authentication methods that privileged accounts are registered for." That answers "admin role assignment" for posture purposes without a separate join. [CS: VERIFIED]
- **`isMfaCapable` ≠ `isMfaRegistered`.** MS distinguishes: *registered* = user has a strong method; *capable* = that method is also **allowed by the authentication methods policy**. Realistic posture data must show these diverging. [CS: VERIFIED]
- `methodsRegistered` string collection — documented example values: `mobilePhone`, `email`, `passKeyDeviceBound`. [CS: VERIFIED]
- `userPreferredMethodForSecondaryAuthentication` enum, verbatim: `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, `none`, `unknownFutureValue`. [CS: VERIFIED]
- `userType` enum: `member`, `guest`, `unknownFutureValue`. [CS: VERIFIED]
- `lastUpdatedDateTime` — DateTimeOffset, **ISO 8601, always UTC**, MS's own example format `2014-01-01T00:00:00Z`. [CS: VERIFIED]
- Endpoint: `GET /reports/authenticationMethods/userRegistrationDetails` [CS: HIGH]

## Conditional access → `conditionalAccessPolicy`
```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "state": "string",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "conditions": {"@odata.type": "microsoft.graph.conditionalAccessConditionSet"},
  "grantControls": {"@odata.type": "microsoft.graph.conditionalAccessGrantControls"},
  "sessionControls": {"@odata.type": "microsoft.graph.conditionalAccessSessionControls"},
  "templateId": "String"
}
```
[CS: VERIFIED]

**`state` enum, verbatim: `enabled`, `disabled`, `enabledForReportingButNotEnforced`.** [CS: VERIFIED]
That third value — report-only mode — is the realistic detail. Most invented CA data is binary on/off.
`templateId` links to a Conditional Access template. [CS: VERIFIED]
Endpoint: `GET /identity/conditionalAccess/policies` [CS: HIGH]

**[GAP]** Did not read the sub-resource schemas (`conditionalAccessConditionSet`, `conditionalAccessGrantControls`, `conditionalAccessSessionControls`). If the prototype needs the *inside* of `conditions`/`grantControls`, fetch those three pages before writing mock JSON. [CS: FABRICATION RISK if guessed]

## Tenant-level posture score → `secureScore`
Properties verbatim: `id`, `azureTenantId`, `activeUserCount` (Int32), `licensedUserCount` (Int32), `createdDateTime`, `currentScore` (Double), `maxScore` (Double), `enabledServices` (String collection), `averageComparativeScores` (collection), `controlScores` (collection), `vendorInformation`.
[CS: VERIFIED]

- Retention: **90 days of daily scores by default**, sorted `createdDateTime` descending; page with `$top=n` where n = days. [CS: VERIFIED]
- `vendorInformation` documented example: `vendor=Microsoft; provider=SecureScore`. [CS: VERIFIED]
- Control categories named by MS, verbatim: **Identity, Data, Device, Apps, Infrastructure**. [CS: VERIFIED]
- Endpoint: `GET /security/secureScores` [CS: HIGH]

## CIPP — [GAP, partial]
CIPP is a real, relevant open-source M365 multi-tenant tool. Its docs describe standards by **Category** ("Global Standards", "Exchange Standards") and **Action** (**Report / Alert / Remediate**), with template scope levels **Individual tenant / Tenant group / All Tenants**, drift evaluated **every twelve hours**, and metrics named **License Missing Percentage** and **Combined Alignment Score**. [CS: MEDIUM — read from docs.cipp.app standards page; the deeper schema/field pages returned 404 to the fetcher]
**No CIPP JSON schema or field-name list was obtained.** Do not invent one.

## Microsoft Lighthouse — NOT researched
Named in the brief; not scouted. [CS: UNKNOWN]
