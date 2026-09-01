# usecure — CONFIRMED GAP on record schema

Scouted 2026-08-24. Strand 3 of 8.

## Plain statement
**No public API documentation exists for usecure that I could locate.** There is no published field list, no schema, no sample payload for user records, course completions, or phishing simulation results.

This is a confirmed gap, not a search failure. The evidence for the gap is itself documented:

> "uSecure's API is currently in Beta. To gain API Keys, please get in touch with their Support. The API URL should be suffixed with `/graphql`."
> — Gradient MSP integration guide, https://support.meetgradient.com/usecure [CS: VERIFIED — read directly]

So: **GraphQL, beta, credentials gated behind vendor support, no public schema.** [CS: VERIFIED]

**Do not generate a usecure JSON schema.** [CS: FABRICATION RISK]

## What IS real and citable — event vocabulary only

### uPhish (phishing simulation) — three tracked states, verbatim
Source: https://help.usecure.io/en/articles/4427311-how-we-track-phishing-simulations [CS: VERIFIED — read directly]

1. **Opens** — tracked via a tracking pixel in the email. Documented to fail when users disable automatic image loading.
2. **Clicks** — tracked by visits to the landing page; "when a user arrives on the landing page, a click is also inferred automatically."
3. **Compromises** — definition varies by simulation type:
   - Landing page only → "user inputting details and then clicking a button"
   - Attachment only → "the attachment in the email is opened"
   - Attachment + landing page → credentials submitted on the landing page after clicking the embedded URL
   - Protected View blocks tracking; user must "Enable Editing" for the event to record.

Also documented: the platform "does not collect or store any information that users submit on phishing landing pages." [CS: VERIFIED]
Also documented: false positives from anti-spam / email monitoring software auto-triggering opens and clicks. [CS: VERIFIED]

**Implication for realistic mock data:** a usecure result record needs a per-user, per-simulation row with three independent boolean/timestamp events (opened / clicked / compromised) plus a false-positive caveat. The vendor's own reporting language is "opened, clicked and compromised rate over time," filterable by **user group** and **template**. [CS: HIGH — https://help.usecure.io/en/articles/3210551-understanding-uphish-the-basics]

### uLearn (training) — thinner
Source: https://help.usecure.io/en/articles/3209939-understanding-ulearn-the-fundamentals [CS: VERIFIED — read directly]
- Org-level metrics named: **course enrolment, participation, completion**.
- User-level: **course grades** displayed at individual user level.
- **Gap analysis questionnaire** tests users across **12 core areas of information security best practice**; results prioritise course assignment.
- **[GAP]** No enrolment state label vocabulary published (no "enrolled/in-progress/completed" enum found). Do not invent one.

## Recommendation
If the prototype needs usecure-shaped data, either (a) build only from the six verified nouns above — opened, clicked, compromised, enrolment, completion, grade — and mark the record shape as invented, or (b) route a request to usecure support for beta API access. A GraphQL introspection query against a real key would resolve this in minutes.
