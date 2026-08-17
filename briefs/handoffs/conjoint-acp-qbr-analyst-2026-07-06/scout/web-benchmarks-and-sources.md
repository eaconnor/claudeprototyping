# Web Benchmarks & Sources — ACP QBR Analyst
Scout pass. Claims 5–7. Every claim [CS:] + URL. No synthesis.

---

## Claim 5 — MSP QBR prep-time benchmark

**Brief claims:** 15–20 hrs (respondent Vitali); N-Zo internal 90min→17.5min.

- **Public figure:** "QBR costs most MSPs **3–8 hours of senior time per client, per quarter**." [CS: MEDIUM — vendor blog, not independent study]
  https://scopable.io/blog/msp-qbr-template
- **Public figure:** "MSP QBR prep takes **4–6 hours** because data lives in four disconnected places." [CS: MEDIUM — vendor blog]
  https://scopable.io/blog/msp-qbr-template
- **Vitali's 15–20 hours:** No public source corroborates. [CS: UNKNOWN — respondent-reported]
- **N-Zo internal 90min → 17.5min:** Internal benchmark; not public. [CS: UNKNOWN — internal, not publicly verifiable]
- **[WOBBLY]** — all online QBR-time numbers are vendor-published marketing figures; no peer-reviewed / independent benchmark located. Range spans 3–20 hrs depending on source and client size.

---

## Claim 6 — Condens benchmark link

**Instruction:** WebFetch https://share.condens.io/aw4c8940rw5nxGD1tfxrC and report what is actually there.

- **Finding:** URL 302-redirects to `https://app.condens.io/shared/uu2OKa/aw4c8940rw5nxGD1tfxrC`. [CS: VERIFIED]
- **Finding:** Redirected page renders **empty / no substantive content** on fetch — only the word "Condens" visible. No report, benchmark, numbers, or titles retrievable. [CS: VERIFIED — that the fetch returns nothing readable]
- **Likely cause:** JS-gated / client-side-rendered share view that WebFetch cannot render. Not confirmed empty at source — content may exist behind rendering. [CS: UNKNOWN — actual content behind client-side render]
- **Recommendation for Beth:** open in a browser to confirm; WebFetch cannot verify a Condens share link's contents. (Parent will attempt via Condens MCP.)
  https://app.condens.io/shared/uu2OKa/aw4c8940rw5nxGD1tfxrC

---

## Claim 7 — E-Myth / operating-manual framing

**Brief claims:** Respondent Mike invoked E-Myth (Michael Gerber) "systems create repeatable results."

- **Finding:** Confirmed. Gerber's *The E-Myth Revisited* core thesis = build the business as a **"franchise prototype"** that is **systems-dependent, not people-dependent**, so documented processes deliver **repeatable, consistent, scalable results.** [CS: HIGH — matches the book's widely-cited central argument]
  https://www.emyth.com/
  https://tylerdevries.com/book-summaries/the-emyth-revisited/
- One-liner for the brief: *"Systems, not individuals, drive consistent results" (Gerber, The E-Myth Revisited).* [CS: HIGH]
