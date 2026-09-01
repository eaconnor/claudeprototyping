# Academic / Institutional Integrity Bot Patterns

---

## SOURCE 1 — Turnitin academic integrity checking (official)

Dimensions Turnitin checks: [CS: HIGH]
- Text originality (similarity index against database of submitted papers, web content, publications)
- AI-generated text detection (since 2023)
- Citation verification (some versions)

**What Turnitin misses:** [CS: VERIFIED — from multiple independent sources]

False positive problem:
- Over 61.22% of non-native TOEFL essays misclassified as AI-generated [CS: HIGH — UC Davis journal citation; not directly verified against primary study]
- 97.80% of non-native essays flagged at least once [CS: HIGH — same caveat]
- Reason: non-native writers use simpler vocabulary and shorter sentences, which AI detectors associate with machine output [CS: HIGH]

Hybrid work failure:
- Light editing, translation support, paraphrasing, gray-area AI use are exactly what instructors encounter but what Turnitin struggles to classify correctly [CS: HIGH]

**What Turnitin cannot check:**
- Whether AI use violated a specific course policy [CS: VERIFIED — stated in Turnitin's own guidance]
- Intent to deceive [CS: VERIFIED — stated in Turnitin's own guidance]
- Reasoning quality, argument soundness, claim accuracy [CS: HIGH]

**Turnitin's own guidance states:** the tool should not be used as the sole basis for adverse action; assume positive intent when evidence is unclear [CS: VERIFIED]

---

## SOURCE 2 — Academic research: "Quantifying Academic Integrity: Turnitin and Negotiated Ethics in Higher Education in Turkey" (Taylor & Francis, 2025)

- Frames integrity checking as "negotiated ethics" rather than rule enforcement [CS: HIGH — journal article; full text not read]
- Turnitin encodes a particular normative model of what plagiarism is; that model reflects specific institutional traditions [CS: HIGH]

[WOBBLY] — Citation verified; full text not fetched. "Negotiated ethics" frame is from title/abstract only.

---

## Design considerations surfaced from this domain

- Integrity checkers that check only surface signals (text similarity, perplexity scores) systematically miss substance (reasoning quality, claim accuracy, judgment) [CS: HIGH]
- High false-positive rates create institutional harm; precision matters as much as recall [CS: HIGH]
- No automated tool has solved "did the human exercise real judgment?" — that gap is structural [CS: HIGH]
- **The key distinction for the proctor:** presence-check (do [CS:] tags exist?) is not the same as quality-check (are the tags accurate?). Proctor can verify the former; the latter requires human review.
