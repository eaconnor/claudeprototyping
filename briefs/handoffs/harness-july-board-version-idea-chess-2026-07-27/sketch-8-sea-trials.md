# What makes a runbook good (Joe Ferla) + Sketch 8: Sea Trials

**Source:** `runbooks-transcript-2026-07-24.md` / raw `Runbooks and Headless Agent-2.docx`. All quotes line-checked. [CS: VERIFIED]
**Discipline:** internal expert (n=3), directional. Joe's valuation figures are his 2024 Head Nerds operational-maturity numbers, expert-recalled — [CS: MEDIUM, self-reported].

---

## What makes a runbook *good* — distilled from Joe (Lewis reinforcing)

1. **Tested, not written.** ~30% have a drilled/paper playbook; the other 70% "are *not* using a playbook they've tested — they're using the base FBI ransomware playbook, because they never had time" (11:12). Un-rehearsed = decorative.
2. **Environment- and asset-specific.** A generic "for a business" playbook "could cause harm" at go-time (42:32). Must be for *this* estate, *this* asset.
3. **Maturity-linked and maturity-building.** Runbook depth tracks operational maturity; a good library is how an MSP *climbs* it (13:16, 17:41).
4. **Transferable enterprise value.** Full runbook set → "valuation could jump as much as 5–10×" — not for more contracts, but "because it's easier for a *buying* MSP to take them over, and the buyer doesn't have the runbooks and doesn't want to build them" (14:46–17:12). Runbooks are M&A capital.
5. **The 75/25 division.** N-able builds "the skeleton and guts… maybe not the musculature and skin — we now have 75% of our work done. We take the other 25% and make it our own" (17:41).
6. **Covers the gaps MSPs don't know they have** — law-enforcement handling (isolate, keep powered, leave for the FBI); *tested* RTOs ("48 hours… you have a standby image in Cove… should be 30 minutes") (22:04–22:53).
7. **Legally protective without giving legal advice** (22:04).

---

## Sketch 8 — Sea Trials *(working name — Beth's to keep or kill)*

*A ship isn't seaworthy until its shakedown. Sea Trials is the drill that certifies a runbook ready — and turns "tested" into enterprise value. Nautical partner to Ghost Ship on purpose: Sea Trials certifies the vessel; Ghost Ship flags the derelict. Alternates: Proving Ground · Muster · Dry Dock.*

**Core idea:** The family covers value, truth, history, recovery, decay, advisory — but nothing covers **readiness**. Ghost Ship watches runbooks rot; nothing makes them good and *proves* it. Sea Trials is the missing front door of the runbook lifecycle.

1. **Problem / wicked bit:** The 25% that makes a runbook good — asset-specificity and the *drill* — is exactly what 70% of MSPs skip for lack of time. Untested runbooks fail at go-time and can cause harm. [CS: HIGH internal]
2. **Tension:** The market *rewards* tested runbooks (5–10× valuation) but MSPs don't *do* the testing ("never had time"). The value and the neglect share one root cause: time. [A]
3. **How might we:** take a generic runbook → asset-specific → drilled via tabletop → **certified**, with the 25% nearly free-and-guided, and price the resulting maturity as valuation?
4. **Value prop (Moore):** For MSP *owners* raising operational maturity and enterprise value, Sea Trials turns generic playbooks into drilled, certified, asset-specific operational capital. Unlike template libraries or one-off tabletops, it certifies readiness and tracks the maturity climb as equity. [A]
5. **TAM:** Unknown. Sits inside ACP / Trust & Recovery / a tabletop-as-a-service line. No defensible sizing without buyer research. [CS: FABRICATION RISK]
6. **Necessary functionality:** canonical runbook → asset-context tailoring (75/25); tabletop drill engine; drill-evidence capture; certification/readiness score; maturity ladder; Cove standby-image → real-RTO proof; adversarial pen-test flip (Lewis 1:17:05); links to Black Box (evidence) and Ghost Ship (drift). [A]
7. **Evidence + [CS:]:** Tabletop-as-a-service is $3–10K recurring revenue producing "the evidence you need for regulatory and compliance concerns" (Lewis 1:17:05) [CS: HIGH internal]. Tabletop already appears twice in the July board deck (Tabletop-as-a-Service, Security Tabletop Simulator) [CS: VERIFIED]. Runbook drift/versioning in ACP [CS: VERIFIED]. Buyer demand for certification specifically — unmeasured [CS: UNKNOWN].
8. **Riskiest assumption:** MSPs value *certified readiness* enough to spend the 25% or pay for it. Joe's own data cuts both ways (5–10× reward vs. "never had time"). Field-test, don't resolve at desk. `[?]`
9. **N-able superpower:** the Head Nerd corpus (the 75% skeleton), Cove standby images (provable RTO), and operational data to certify a drill happened. Moat = certification + codified expert corpus, not runbook generation (which Lewis says is commoditized). [CS: HIGH internal]

**Where it lands the family:** Sea Trials (get ready, certify) → Ghost Ship (watch drift) → Phoenix (recover to last-known-good). A coherent runbook lifecycle; Sea Trials is the front door. It also *unifies* a loose board-deck line item (tabletop) with the runbook engine and feeds Defensibility/Black Box their evidence.
