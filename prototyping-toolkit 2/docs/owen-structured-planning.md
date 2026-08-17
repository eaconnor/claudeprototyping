# Owen's Structured Planning — and the matrix math this library borrows from it

The council's testimony format and the methods library's relation matrices are adaptations of **Structured Planning**, the design-planning methodology developed by **Charles L. Owen** at the IIT Institute of Design (Chicago) from the late 1960s through the 2000s [CS: HIGH]. This doc explains what Owen built, what this library took from it, and exactly how the adapted math works — the adapted math is fully verifiable against `methods-library-matrix.md` in this repo.

---

## 1. What Owen built

Owen's core claim: early-stage planning fails not from lack of insight but from lack of *structure for* insight — teams generate more observations than any one head can hold in relation to each other, so structure must be computed from the material rather than imposed on it [CS: HIGH — Owen, "Structured Planning in Design: Information-Age Tools for Product Development," *Design Issues* 17(1), Winter 2001].

Key instruments:

- **Design Factors** — the atomic unit of planning insight: an observed condition in the world, a speculation about what it implies, and candidate solution directions. Insight is captured in a fixed, comparable format rather than as free prose. [CS: HIGH on the instrument; CS: MEDIUM on exact canonical field names — verify against Owen's papers before quoting field lists.]
- **Project Statement and Defining Statements** — the charter layer: what the project aims at, decomposed into statements that carry explicit strength qualifiers (what the solution *must* do vs. *should* vs. *ought to*). This is the ancestor of the library's force levels. [CS: HIGH]
- **RELATN** — Owen's computer program for information structuring. Elements (design factors, functions) are scored pairwise for interaction strength; the program clusters them graph-theoretically so that the plan's structure *emerges from the relations* instead of from a pre-drawn org chart of the problem. [CS: HIGH]
- **Means/Ends analysis, Metaplanning, two-step development, Originator/Contributors** — the governance layer: choosing methods appropriate to the situation (metaplanning — planning the planning), separating what is wanted from how it's achieved, alternating expansion and reduction phases, and making authorship/consent explicit. [CS: MEDIUM — these appear across Owen's structured planning corpus; verify individual formulations against primary sources before quoting.]

**Primary sources:**
- Owen, C.L., "Structured Planning in Design: Information-Age Tools for Product Development," *Design Issues* 17(1), 2001, pp. 27–43.
- Owen, C.L., "Design Research: Building the Knowledge Base," *Design Studies* / IIT Institute of Design papers.
- IIT Institute of Design archive: https://id.iit.edu (Owen's papers were long hosted under the school's publications pages).

---

## 2. What this library adapts

Two Owen moves are load-bearing here:

**(a) Structure computed from pairwise relations.** Instead of asserting that 44 methods form 14 clusters, the library scores relations and lets dense regions justify the clusters (§3). This is RELATN's logic applied to *methods* rather than design factors.

**(b) Testimony in a fixed comparable format.** Each council voice "owens itself" — it runs a Design-Factor-shaped self-report on its own contribution:

| Field | What it forces |
|---|---|
| **Sign** | An observation, sourced — not an opinion |
| **Hypothesis** | An argued reading of the sign |
| **Kill criterion** | Falsifiability — what evidence would prove this voice wrong |
| **Force level** | Must · Should · Ought · Nice (descended from Defining Statement qualifiers) |
| **Evidence** | Confidence rating per claim |
| **Cannot see** | The tradition's structural blind spot, self-declared |

Because every voice reports in the same shape, contradictions between voices become *visible and comparable* instead of buried in prose. A voice that cannot fill its fields with sourced material is flagged as thin — the format makes thinness self-announcing.

---

## 3. The matrix math, exactly

All of this is checkable against `methods-library-matrix.md`. [CS: VERIFIED — claims below re-derived from that file.]

### Two matrices

1. **Item × Cluster** — 44 methods × 14 operational questions. Each cell: `●●` (+2, strong reinforce), `●` (+1, weak reinforce), blank (0, independent). Every method has exactly one `●●` home cluster.
2. **Item × Item RELATN** — 44 × 44, maintained as a **symmetric adjacency list**, not a printed grid. Each method lists its +2 partners (same engine) and +1 partners (complementary). Unlisted pairs are 0.

### The bounded score — no negatives

Scores are bounded **0 to +2**. There are no negative (conflict) scores, by governing principle: methods that appear to conflict (Maslow vs. SDT, Porter vs. Blue Ocean, Lean Startup vs. Structured Planning) actually cluster around *different questions* — they are parallel hypotheses, not opponents. **Innovation navigates paradox**; the matrix encodes reinforcement and independence only, and the human holds any tension.

### Invariants (machine-checkable)

- **Symmetry:** if A lists B at +2, B lists A at +2 (likewise +1). Verify by counting partners both ways — see the checker in `MAINTENANCE.md`.
- **Bounds:** every score ∈ {0, +1, +2}.
- **Single home:** each method has exactly one home cluster in the Item × Cluster matrix.

### Cluster validation by density

Clusters were proposed abductively (by observing what each method takes in, does, and produces) and then **validated against the adjacency list**: a proposed cluster is real if its members form a dense +2 block. Examples from the current library: the abductive core (Peirce · Tavory/Timmermans · Owen Design Factor · Kumar Mode 1 form an all-pairs +2 quad); the economics triangle (value-based pricing · price corridor · economic buyer, all pairs +2); the landscape triangle (Kumar Mode 2 · Five Forces · Wardley, all pairs +2). A proposed cluster with no dense block is a taxonomy wish, not a cluster.

### Hub analysis

Counting each method's total partners identifies the load-bearing methods: **Owen RELATN** (15 partners — the math under everything), **Owen Metaplanning** (14 — the governance hub), **Owen two-step development** (12). Narrow methods (SDT and Maslow, 2 partners each) are narrow *by design* — deep single-question lenses.

### Why an adjacency list, not a printed grid

An earlier version of the library maintained the 44×44 matrix as a hand-drawn ASCII grid. The diagonal drifted past row 5 and off-diagonal reads became unreliable — a human caught it; the machine had not. The list format carries the same information, is machine-verifiable, and offers no false precision from whitespace. Lesson generalized: **prefer representations a script can check over representations that merely look rigorous.**

---

## 4. How to use the math day-to-day

- **Picking voices for a council pass:** the tier sets how many voices testify in full; use home clusters to guarantee spread and +2 partners to bring in each full voice's reinforcers.
- **Method surfacing:** given the evidence type on hand, surface the cluster whose question matches the moment; within it, the method whose epistemology fits the evidence. The human never has to know method names in advance.
- **Reading tensions:** two voices at 0 relation contradicting each other on the same sourced point is the interesting case — that's independence producing a genuine paradox, the innovative space the human owns.
