# 01 — UK Cyber Essentials: Requirements for IT Infrastructure v3.2

**Publisher:** National Cyber Security Centre (NCSC), a part of GCHQ · Cyber Essentials scheme
**Version / date:** v3.2, **April 2025** (running header on every page reads "Cyber Essentials: Requirements for IT infrastructure v3.2 / April 2025")
**URL:** https://www.ncsc.gov.uk/files/cyber-essentials-requirements-for-it-infrastructure-v3-2.pdf
**Copyright line:** "All material is UK Crown Copyright ©"
**How obtained:** PDF fetched and read page-by-page. All quotes below transcribed from the document itself.
**[CS: VERIFIED]** throughout this file unless marked otherwise.

> **Status caveat, stated up front:** This is a certification scheme, not legislation. Nothing in the pages read imposes a statutory obligation or an obligation *date*. Whether Cyber Essentials is contractually mandated (e.g. for UK government or MoD supply chains) is **not asserted anywhere in the document read** — do not claim it from this source. [CS: UNKNOWN]

---

## Why this is the strongest source in the dossier

It is the only document located in UK or EU regulation/official guidance that attaches a **specific number of days** to endpoint patching. The EU instruments do not (see file 02).

---

## The five technical control themes (§A, p.3)

> "We have organised the requirements under five technical controls:
> 1. Firewalls
> 2. Secure configuration
> 3. Security update management
> 4. User access control
> 5. Malware protection"

---

## §3 SECURITY UPDATE MANAGEMENT — the 14-day rule

**Applies to (p.17, verbatim):**
> "servers, desktop computers, laptops, tablets, mobile phones, firewalls, routers, IaaS, PaaS, SaaS."

**Aim (p.17):**
> "Ensure that devices and software are not vulnerable to known security issues for which fixes are available."

**Requirements (p.17–18, verbatim):**
> "You must make sure that all software in scope is kept up to date. All software on in-scope devices must:
> - be licensed and supported
> - removed from devices when it becomes unsupported or removed from scope by using a defined sub-set that prevents all traffic to / from the internet
> - have automatic updates enabled where possible
> - be updated, including vulnerability fixes, within 14 days\* of release, where:
>   - the update fixes vulnerabilities described by the vendor as 'critical' or 'high risk'
>   - the update addresses vulnerabilities with a CVSS v3 base score of 7 or above
>   - there are no details of the level of vulnerabilities the update fixes provided by the vendor"

**The non-mandatory recommendation (p.18, verbatim):**
> "**Please note:** For optimum security we strongly recommend (but it's not mandatory) that all released updates are applied within 14 days of release."

**The footnote explaining the number (p.18, verbatim):**
> "\*It's important that updates are applied as soon as possible. 14 days is considered a reasonable period to be able to implement this requirement. Any longer would constitute a serious security risk while a shorter period may not be practical."

**Severity definition (p.18, verbatim):**
> "**Information:** If the vendor uses different terms to describe the severity of vulnerabilities, see the precise definition in the Common Vulnerability Scoring System (CVSS). For the purposes of the Cyber Essentials scheme, 'critical' or 'high risk' vulnerabilities are those with a CVSS v3 base score of 7 or above or are identified by the vendor as 'critical or high risk'."

**Bundled-update trap (p.18, verbatim):**
> "**Caution:** Some vendors release security updates for multiple issues with differing severity levels as a single update. If such an update covers any 'critical' or 'high risk' issues then it must be installed within 14 days."

**What counts as a fix — definition (§B Definitions, p.4, verbatim):**
> "**Vulnerability fixes** include patches, updates, registry fixes, configuration changes, scripts or any other mechanism approved by the vendor to fix a known vulnerability."

**What "supported" means (§B, p.4, verbatim):**
> "**Licensed and supported software** is software that you have a legal right to use and that a vendor has committed to support by providing regular vulnerability fixes. The vendor must provide the future date when they will stop providing these."

**New in v3.2 (p.3, verbatim):** the "What's new in this version" list includes
> "Update to security update management control to include vulnerabilities that are fixed by manual configuration only"
and
> "Vulnerability fix definition added"

---

## Asset management — named as necessary but NOT a control

§C, p.6, verbatim:
> "Asset management isn't a specific Cyber Essentials control, but effective asset management can help meet all five controls, so it should be considered as a core security function."

p.7, verbatim:
> "Effective asset management doesn't mean making lists or databases that are never used. It means creating, establishing and maintaining authoritative and accurate information about your assets that enables both day-to-day operations and efficient decision making when you need it. In particular, it will help you track and control devices as they're introduced into your business."

---

## Scope rules that bear on endpoint management

**End user devices cannot be excluded (§C, p.6, verbatim):**
> "A scope that doesn't include end user devices isn't acceptable."

**Device definition (§B, p.4, verbatim):**
> "**Devices** includes all types of hosts, networking equipment, servers, networks, and end user devices such as desktop computers, laptop computers, thin clients, tablets and smartphones — whether physical or virtual."

**In-scope test (§C, p.6, verbatim):** requirements apply to devices and software that
> "can accept incoming network connections from untrusted internet-connected hosts / can establish user-initiated outbound connections to devices via the internet / control the flow of data between any of the above devices and the internet"

**BYOD (§C.i, p.8, verbatim):**
> "In addition to mobile or remote devices owned by the organisation, user-owned devices which access organisational data or services (as defined above) are **in scope**."
Out of scope only where used *solely* for native voice, native text, or MFA applications.

---

## The MSP clauses — directly relevant to the channel

**§C.v, p.10, verbatim:**
> "All accounts your organisation owns are in scope, even when those accounts are used by a third party, such as a supplier, contractor or Managed Service Provider (MSP) to manage or support your infrastructure."

> "If you're using externally managed services (such as remote administration), you must be able to confirm that the Cyber Essentials technical controls are being met, and be able to demonstrate this in your assessment answers."

**§C.vi, Table 2, p.11:** MSP-administrator devices are **in scope** if owned by your organisation; **out of scope** if owned by a third party or BYOD.

**Cloud shared-responsibility (§C.iv, Table 1, p.10):** for *Security update management* — IaaS: "Both your organisation and the cloud provider"; PaaS: "Both your organisation and the cloud provider"; SaaS: "The cloud provider". For *User access control*: "Your organisation" across all three.

Also p.10, verbatim:
> "In cases where the cloud provider implements one of the controls on your behalf, you must make sure that the cloud provider has committed to implementing this via contractual clauses or documents referenced by contract, such as security statements or privacy statements."

---

## Other controls, abbreviated (each verbatim-sourced from the PDF)

**§4 User access control — MFA (p.20):** organisation must
> "implement MFA, where available – authentication to cloud services must always use MFA"

and must
> "remove or disable user accounts when they're no longer required (for example, when a user leaves the organisation or after a defined period of account inactivity)"
> "use separate accounts to perform administrative activities only"
> "remove or disable special access privileges when no longer required"

**Password requirements (p.21):** technical controls must manage password quality via one of:
> "Using multi-factor authentication" / "A minimum password length of at least 12 characters, with no maximum length restrictions" / "A minimum password length of at least 8 characters, with no maximum length restrictions and use automatic blocking of common passwords using a deny list."

Brute-force protection: MFA, *or* throttling ("you shouldn't allow more than 10 guesses in 5 minutes"), *or* "locking devices after no more than 10 unsuccessful attempts."

**MFA additional factors (p.22):** "a managed/enterprise device · an app on a trusted device · a physically separate token · a known or trusted account." Password element of MFA must be "at least 8 characters."

**§2 Secure configuration (p.15–16):** must regularly "remove and disable unnecessary user accounts", "change any default or guessable account passwords", "remove or disable unnecessary software (including applications, system utilities and network services)", "disable any auto-run feature which allows file execution without user authorisation", "ensure appropriate device locking controls". Device-unlocking credential minimum: "a minimum password or PIN length of at least 6 characters."

**§5 Malware protection (p.24–25):** "a malware protection mechanism is active on all devices in scope." Two options — anti-malware software (must "be updated in line with vendor recommendations / prevent malware from running / prevent the execution of malicious code / prevent connections to malicious websites over the internet") **or** application allow listing ("Only approved applications, restricted by code signing, are allowed to execute on devices… maintain a current list of approved applications, users must not be able to install any application that is unsigned or has an invalid signature").

**§1 Firewalls (p.14):** "You must protect every device in scope with a correctly configured firewall (or network device with firewall functionality)." Administrative interface must not be reachable from the internet unless protected by MFA or an IP allow list.

---

## Open item

Search results referenced a "v3.2 (Willow)" question set and possible **April 2026** scheme changes. The document read is dated April 2025 and is the current file at the NCSC URL above. Whether a newer requirements version or question set has since been issued was **not verified**. [CS: UNKNOWN — check iasme.co.uk and the NCSC file listing before relying on v3.2 as current]
