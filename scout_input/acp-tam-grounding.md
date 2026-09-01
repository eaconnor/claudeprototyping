# ACP TAM / MAX-TAM Grounding — Scout Ingredients
Dig date: 2026-07-14 · Scout · web sourcing authorized
Purpose: ground the TAM (reporting-tool floor) and MAX-TAM (share-of-vCISO/vCIO-services-spend ceiling).
No synthesis. Ingredients + visible arithmetic. Beth assembles.

## GLOBAL CAVEATS (read first)
- Almost every figure here is from a commercial market-research firm (Mordor, Grand View, Fortune Business Insights, market.us, Verified Market Research, MarketsandMarkets, Precedence). Methodology is paywalled; only the press-release number is public. Inter-firm spread is wide → directional, not precise. Default [CS: MEDIUM].
- The Cynomi vCISO adoption stat is VENDOR-SPONSORED (Cynomi sells vCISO tooling), n=200 self-selected. [WOBBLY].
- No public ACP per-tech price exists. The $/tech/mo used in the bottoms-up math is a LOAD-BEARING ASSUMPTION set as a variable, not a sourced number.

---

## 1. GLOBAL MSP MARKET + MSP COUNT (buyer universe)

- Global managed-services market 2026: ~$370B–$437B, forecast $700B–$1.27T by 2031–2035.
  - Mordor: $430.56B (2026), up from $390.21B (2025). [CS: MEDIUM]
  - Business Research Insights: $419.94B (2026) → $970.6B (2035), 11.04% CAGR. [CS: MEDIUM]
  - Grand View: $437.3B (2026) → $847.4B (2033), 9.9% CAGR. [CS: MEDIUM]
  - https://www.businessresearchinsights.com/market-reports/managed-services-providers-msp-market-117597 ; https://www.grandviewresearch.com/industry-analysis/managed-services-market
  - NOTE: total managed-services *revenue* (end-client spend), NOT the software-tools TAM. Do not confuse with ACP's addressable software spend.

- Number of MSPs worldwide: 150k–341k self-described; only ~5k–10k "verifiable maturity." [CS: LOW — definitional]
  - https://www.cloudsecuretech.com/insights/msp-statistics/

- US MSPs: ~40,000+ active; 70% have <50 employees. [CS: LOW]
  - Small (6–25 emp): ~12,000–15,000 (~30%). Mid (26–100 emp): ~5,000–8,000 (~15%). Avg MSP ~122 clients; majority <100.
  - https://www.msplaunchpad.com/blog-posts/msp-market-statistics
  - **BUYER SEGMENT (ACP target: 20–100 clients, 10–50 techs)** ≈ ~17k–23k US small+mid MSPs. [CS: LOW — inferred] [LOAD-BEARING]

---

## 2. vCISO / vCIO-AS-A-SERVICE MARKET (the MAX-TAM lever)

- Virtual CISO market — WIDE inter-firm spread:
  - VMR: $1.4B (2024) → $3.8B (2033), 12.2% CAGR. Others: $2.5B→$7.1B (15.4%); $1.8B→$7.2B (16.5%); BRI outlier $1.0B (2023)→$1.48B (2031), 6.3%.
  - Consensus band: **~$1.4B–$2.5B (2024 base), 12–16% CAGR, ~$4B–$7B by early-2030s.** [CS: MEDIUM]
  - https://www.verifiedmarketresearch.com/product/virtual-ciso-market/ ; https://www.businessresearchinsights.com/market-reports/virtual-ciso-market-117910 ; https://blueradius.io/vciso-market-report-2025/

- Cynomi 2025 State of the vCISO (VENDOR-SPONSORED, n=200, 2025-07-23): [WOBBLY]
  - MSPs/MSSPs offering vCISO: **21% → 67% YoY (+319%)**. High demand 75%→79% (96% incl. moderate). 81% use AI/automation; 68% avg manual-workload reduction. Barriers: profitability 35%, initial investment 33%, skills gap 32%.
  - https://cynomi.com/state-of-the-vciso-2025/ ; https://thehackernews.com/2025/08/ai-slashes-workloads-for-vcisos-by-68.html ; https://www.helpnetsecurity.com/2025/07/31/vciso-services-adoption-2025/
  - [CS: HIGH] Cynomi reported these; [CS: LOW] they generalize to the whole MSP population.

- vCIO-as-a-service: NO clean standalone figure. Bundled inside "managed services" / "IT strategy consulting." [CS: LOW — gap named]

---

## 3. AGENTIC AI FOR IT OPS / AIOps
- AIOps 2026: ~$14B–$19B, ~21–30% CAGR ($15.96B→$19.33B 21.1%; $11.08B→$14.44B 30.2%; platform-narrow ~$8.14B). [CS: MEDIUM]
  - https://market.us/report/ai-operations-aiops-market/ ; https://www.gminsights.com/industry-analysis/aiops-market ; https://www.fortunebusinessinsights.com/aiops-market-109984
- Broad agentic-AI (all uses): $7.6B → $236B by 2034, >40% CAGR. [CS: LOW — far broader than MSP tooling]
  - https://www.digitalapplied.com/blog/agentic-ai-statistics-2026-definitive-collection-150-data-points
- NOTE: AIOps is enterprise-weighted, not MSP-specific. "Agentic AI in MSP tooling" not sized separately. [CS: LOW — gap]

---

## 4. MSP CLIENT-REPORTING / QBR TOOLING (the TAM floor comparable)
- ScalePad: "trusted by **12,000+ MSPs globally**" (2025), MSP-partner-only, multi-tenant. [CS: MEDIUM — vendor self-report]
  - Lifecycle Manager (ex-Lifecycle Insights): QBR prep, asset lifecycle, roadmaps; PSA/RMM integrations. Pricing tiered by # managed clients, 12-mo term; **$ not public** [CS: LOW]. Aug 2025 launched Lifecycle Manager X ("first Customer Success Platform for MSPs").
  - https://www.scalepad.com/ ; https://www.scalepad.com/lifecycle-manager/pricing ; https://www.newswire.com/news/scalepad-launches-lifecycle-manager-x-enabling-the-first-customer-22630443
- Cognition360 / Lifecycle Insights scale + pricing: NOT recovered. [CS: LOW — gap]
- No standalone "MSP QBR tooling market size" — sub-slice of MSP software. [CS: LOW — gap]

---

## 5. MDR / SOC SERVICES MARKET (for IR/RCA offering)
- MDR 2026: wide spread $2.8B–$6.6B across firms (~2.3x); CAGR ~13.4%–24.8%. Consensus center **~$4B–$6B (2026), ~17–23% CAGR.** [CS: MEDIUM]
  - https://www.marketsandmarkets.com/Market-Reports/managed-detection-and-response-market-168039027.html ; https://www.fortunebusinessinsights.com/managed-detection-and-response-market-108618 ; https://www.precedenceresearch.com/managed-detection-and-response-market ; https://www.mordorintelligence.com/industry-reports/managed-detection-and-response-market

---

## TAM BAND (bottoms-up: reporting-tool / software floor)
Formula: (# addressable MSPs) × (avg techs/MSP) × (ACP $/tech/mo) × 12
- A) # addressable MSPs: US small+mid ~17k–23k [CS: LOW, inferred]; ScalePad reach ~12k paying [CS: MEDIUM]; global self-described 150k+ [CS: LOW].
- B) avg techs/MSP (10–50 segment): midpoint ~25 [CS: LOW] [LOAD-BEARING]
- C) ACP $/tech/mo: **NO SOURCE. ASSUMPTION.** Anchors $50/$100/$150 [CS: UNKNOWN] [LOAD-BEARING — dominates].

WORKED (C assumed):
- Conservative: 12,000 × 25 × $50 × 12 = **$180M/yr**
- Mid: 20,000 × 25 × $100 × 12 = **$600M/yr**
- Upper: 30,000 × 25 × $150 × 12 = **$1.35B/yr**
- **TAM FLOOR BAND ≈ $180M – $1.35B/yr.** [CS: LOW] Sanity: ScalePad's 12k install base at any ARPU sits inside band — consistent, not proof.

## MAX-TAM BAND (share-of-services ceiling)
- vCISO services ~$1.4B–$2.5B (2024)→~$4B–$7B; vCIO unsized [gap]; MDR ~$4B–$6B (2026).
- ACP capture rate: **NO SOURCE. ASSUMPTION.** 5%/10%/20% [CS: UNKNOWN] [LOAD-BEARING].
- Narrow (vCISO only): $2.5B × 10% = **$250M/yr**
- Mid (vCISO + MDR ~$10B combined mid-decade): $10B × 10% = **$1.0B/yr**
- Ceiling (1% of $430B managed-services base as AI-coworker-delivered services): **$4.3B/yr** [LOAD-BEARING FRAMING]
- **MAX-TAM BAND ≈ $250M – $4.3B+/yr.**

## THE TWO LOAD-BEARING UNKNOWNS (both [CS: UNKNOWN], both dominate)
1. Pricing model: per-tech tool ($/tech/mo) vs. share-of-services (% of billed vCISO/vCIO/MDR revenue) — the difference between the TAM and MAX-TAM bands.
2. Capture-rate / ARPU assumptions — no external anchor; must come from Beth / pricing work.

## GAPS NAMED (not fabricated)
- vCIO-as-a-service: no standalone size. MSP QBR-tooling: no standalone size. Cognition360/Lifecycle Insights scale+pricing: not recovered. ScalePad exact pricing: gated. "Agentic AI in MSP tooling": not sized as own category.

## SOURCES (for Datadump registration — Research/secondary)
Business Research Insights (MSP; vCISO) · Grand View (managed services) · CloudSecureTech (MSP stats) · MSP Launchpad (US MSP stats) · Verified Market Research (vCISO) · blueradius.io (vCISO) · Cynomi State of the vCISO 2025 [vendor] · The Hacker News · Help Net Security · market.us / GMInsights / Fortune Business Insights (AIOps) · DigitalApplied (agentic AI) · ScalePad + Newswire · MarketsandMarkets / Fortune / Precedence / Mordor (MDR).
