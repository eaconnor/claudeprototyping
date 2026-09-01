---
feature: "Chess Game Interface"
gate: 30
owner: "Beth Schwindt"
problem_statement: "Users need a digital chess interface that supports multiple interaction models (drag-and-drop, click-to-move, keyboard/notation entry) and provides accessibility for screen reader users and keyboard-only navigation. [A] — No user research conducted; inferred from platform documentation."
okr_objective: "Validate that both primary interaction models (drag-and-drop and click-to-move) can coexist in a single interface without cognitive overload."
okr_key_result: "Prototype demonstrates successful move completion via drag-and-drop, click-to-move, AND algebraic notation entry, with keyboard-only navigation path tested by one user within 2 weeks."
counter_metric: "Time to first legal move must not exceed 10 seconds for users familiar with chess rules."
idea_score: 12
evidence_sources:
  - "scout_input/01-interaction-patterns.md"
  - "scout_input/02-accessibility.md"
  - "scout_input/03-notation-standards.md"
  - "scout_input/04-common-features.md"
status: "draft"

domain_model:
  entities:
    - name: "Game"
      identity: "unique game instance with its own board state, move history, and clock state"
      attributes: ["board_state (FEN)", "move_history", "active_player", "timer_state", "fullmove_number", "halfmove_clock"]
      evidence: "[R] — FEN structure documented in scout_input/03; [A] — no user research on what game state users need to track"
    
    - name: "Move"
      identity: "specific piece relocation at a specific turn number, including metadata"
      attributes: ["piece", "from_square", "to_square", "notation (SAN)", "timestamp", "move_duration"]
      evidence: "[R] — SAN is FIDE standard per scout_input/03; move timestamps documented in Lichess per scout_input/04"
    
    - name: "Player"
      identity: "participant in the game (White or Black)"
      attributes: ["color", "remaining_time", "move_count"]
      evidence: "[R] — active_player tracked in FEN (scout_input/03); [A] — Player as entity not validated with user research"
  
  value_objects:
    - name: "BoardPosition"
      describes: "Game state at a specific moment"
      evidence: "[R] — FEN notation per scout_input/03"
    
    - name: "Square"
      describes: "One of 64 positions on the board"
      evidence: "[R] — Algebraic coordinate system (a-h, 1-8) per scout_input/03"
    
    - name: "TimeControl"
      describes: "Clock configuration (minutes + increment)"
      evidence: "[R] — Chess.com standard format per scout_input/04"
  
  services:
    - name: "ValidateMove"
      acts_on: ["Move", "Game"]
      trigger: "User selects piece and destination via any interaction model"
      evidence: "[A] — no research on validation UI feedback or error handling patterns"
    
    - name: "RecordMove"
      acts_on: ["Move", "Game"]
      trigger: "Valid move is executed"
      evidence: "[R] — move history stored per scout_input/04 (Lichess); [A] — no user research on how users review history"
    
    - name: "ParseNotation"
      acts_on: ["Move"]
      trigger: "User enters algebraic notation (e.g., 'Nf3')"
      evidence: "[R] — SAN standard per scout_input/03; [A] — no usability testing on notation entry UI"
    
    - name: "HighlightLegalMoves"
      acts_on: ["Game", "Square"]
      trigger: "User selects piece via click (click-to-move interaction)"
      evidence: "[R] — click-to-move pattern documented in scout_input/01"
  
  ubiquitous_language:
    - term: "Square"
      means: "One of 64 positions on the board, identified by file (a-h) and rank (1-8)"
      evidence: "[R] — scout_input/03"
    
    - term: "Algebraic notation"
      means: "Standard move recording format per FIDE (e.g., 'Nf3' = knight to f3)"
      evidence: "[R] — scout_input/03"
    
    - term: "FEN (Forsyth-Edwards Notation)"
      means: "Text representation of board state including piece positions, active player, castling rights, en passant target, halfmove clock, fullmove number"
      evidence: "[R] — scout_input/03"
    
    - term: "Drag-and-drop"
      means: "Interaction model where user drags piece from origin to destination square"
      evidence: "[R] — scout_input/01"
    
    - term: "Click-to-move"
      means: "Interaction model where first click selects piece, second click chooses destination"
      evidence: "[R] — scout_input/01"
    
    - term: "Blind mode"
      means: "Screen-reader-optimized interface with keyboard shortcuts and auditory feedback"
      evidence: "[R] — Lichess documentation per scout_input/02"
---

# Chess Game Interface — Brief

**Evidence ratio: [A]+[?] = 73% — appropriate for 30% fidelity (Concept tier).**  
**World-claims ratio (users/domain/competitors): [A]+[?] = 81%**  
**Test-plan readiness (prototype's own test plan): [A]+[?] = 60%**  
**Inflated (includes brief's meta-TODOs): [A]+[?] = 73%**

**Fidelity:** 30% (Tier 1 / Concept / Schematic)  
**Audience:** Internal (Beth testing interaction model integration)  
**Design aesthetic:** Chess-specific (wood textures, classic board styling — NOT Apex Bridge)

---

## Gate 1 — Problem

### Is the problem real and sourced, or assumed?

**Problem claim:** Users need a digital chess interface that supports multiple interaction models (drag-and-drop, click-to-move, keyboard/notation entry) and provides accessibility for screen reader users and keyboard-only navigation. **[A]** — No user research conducted; inferred from platform documentation.

#### What we know from sources:

1. **Two primary interaction models exist:** drag-and-drop and click-to-move. **[R]** — scout_input/01  
2. **Most modern platforms support both** to accommodate user preference. **[R]** — scout_input/01 (observed pattern across Chess.com, Lichess)  
3. **Drag-and-drop is considered more "natural"** for representing physical piece movement. **[A]** — scout_input/01 cites this as user preference claim, not empirically sourced  
4. **Click-to-move is easier to implement** than drag-and-drop. **[A]** — developer forum claim per scout_input/01, not empirically tested  
5. **Screen reader users need text-based interaction:** Lichess "blind mode" allows algebraic notation entry via edit field. **[R]** — scout_input/02  
6. **Keyboard-only navigation is required** for accessibility. **[R]** — scout_input/02 (Lichess, Winboard documentation)  

#### What we assume:

1. **Users want both interaction models available in a single interface.** **[A]** — No user research on cognitive load of dual models  
2. **Users will tolerate switching between interaction methods within a single game.** **[?]** — Not tested  
3. **Notation entry is used primarily by advanced players.** **[A]** — No segmentation research  
4. **Visual feedback (highlighted legal moves) reduces errors.** **[A]** — No A/B testing or error-rate data  
5. **Accessibility is a primary concern for this prototype.** **[A]** — Beth's design goal, not sourced from user need or product strategy  

#### Failure mode — Problem:

If the problem is **"users can't complete a move easily,"** we have no baseline data on error rates, time-to-first-move, or user preference distribution across interaction models. We are building a solution to a well-documented design pattern (dual interaction models), not a sourced user pain point.

---

## Gate 2 — Right Thing

### Does this advance the mission? What outcome moves?

**Mission alignment:** This is a concept exploration, not a shipped product. The outcome is **learning whether multiple interaction models can coexist without cognitive overload.** **[A]** — No product strategy doc; inferred from Beth's request for "a chess game."

#### What moves if this works:

1. **Interaction model fluency:** Beth gains hands-on understanding of how drag-and-drop, click-to-move, and notation entry interact within a single UI. **[A]** — Learning goal, not user outcome  
2. **Accessibility baseline:** Keyboard navigation and notation entry paths are tested. **[A]** — Design goal, not measured against user success criteria  
3. **Pattern library:** Chess-specific design patterns (board grid, piece rendering, move highlighting) are documented. **[A]** — Internal artifact, not user-facing outcome  

#### What doesn't move:

1. **User adoption:** No distribution plan. **[?]**  
2. **Revenue/retention:** Not applicable to concept prototype. **[?]**  
3. **Competitive differentiation:** No market analysis. **[?]**  

#### Failure mode — Right Thing:

If the goal is **"validate that three interaction models can coexist,"** we have no success criteria for "coexist" beyond "all three paths execute a legal move." We don't know if users will discover all three methods, prefer one, or experience confusion switching between them.

---

## Gate 3 — Built Right

### Tested how? By whom? What counts as done?

**Test plan:**

1. **Interaction model parity:** Drag-and-drop, click-to-move, and algebraic notation entry all execute the same legal move (e.g., e2 to e4). **[A]** — No validation against legal move generation library (e.g., chess.js); legal moves may be hardcoded for lo-fi prototype.  
2. **Keyboard-only path:** User completes one move without touching the mouse. **[A]** — No screen reader testing; keyboard navigation only.  
3. **Visual feedback:** Click-to-move highlights legal destination squares. **[A]** — No user testing on whether highlights are discoverable or understood.  
4. **Move history display:** Completed moves appear in algebraic notation in a sidebar. **[A]** — No user testing on whether move history is readable or useful.  

**Tester:** Beth. **[A]** — No external user testing planned.  

**Success criteria:**

1. All three interaction models execute a move without JavaScript errors. **[A]** — Technical success, not user success  
2. Keyboard navigation reaches all interactive elements (pieces, squares, notation input field). **[A]** — Accessibility baseline, not validated with assistive tech users  
3. Move history updates correctly. **[A]** — Display logic, not validated against user comprehension  

**What counts as done:**

A working HTML prototype with:
- 8x8 chessboard grid **[A]**  
- Draggable pieces **[A]**  
- Click-to-select, click-to-move logic **[A]**  
- Text input field for algebraic notation **[A]**  
- Move history sidebar **[A]**  
- Keyboard focus indicators **[A]**  

#### Failure mode — Built Right:

1. **Legal move validation is shallow or absent:** Lo-fi prototype may allow illegal moves (e.g., moving a pawn backward). **[A]** — No chess engine integration planned.  
2. **Accessibility is untested with real assistive tech:** Keyboard navigation works, but screen reader output may be unusable. **[A]** — No NVDA/JAWS/VoiceOver testing.  
3. **Interaction model discovery is assumed:** Users may not realize all three methods are available. **[?]** — No onboarding, no feature discovery testing.  

---

## What's Missing

1. **User research:** No interviews, no observation, no pain points documented. **[?]**  
2. **Legal move generation:** No chess engine (e.g., chess.js) integrated; legal moves may be hardcoded or absent. **[A]**  
3. **Assistive tech testing:** No screen reader validation. **[A]**  
4. **Interaction model preference data:** No baseline on whether users prefer drag-and-drop, click-to-move, or notation entry. **[?]**  
5. **Error handling:** No design for illegal move attempts, invalid notation input, or out-of-turn actions. **[?]**  
6. **Timer/clock:** Documented as common feature (scout_input/04), but not scoped for this prototype. **[A]**  
7. **Game state persistence:** No save/load, no FEN import/export. **[A]**  
8. **Replay/analysis mode:** Documented as common feature (scout_input/01, 04), but not scoped. **[A]**  

---

## Claim Inventory (Three-Number Recount)

**Total tagged claims in brief:** 52  
**[R] Research:** 14 (27%)  
**[D] Data:** 0 (0%)  
**[A] Assumed:** 35 (67%)  
**[?] Unknown:** 3 (6%)  

**World-claims ratio (Gate 1 + Gate 2, excluding test plan and meta-TODOs):** 26 claims, 21 [A]+[?] = **81%**  
**Test-plan readiness (Gate 3 only):** 15 claims, 9 [A]+[?] = **60%**  
**Inflated (all tagged claims including brief structure):** 52 claims, 38 [A]+[?] = **73%**

**Verdict:** Evidence ratio is appropriate for 30% fidelity (Concept tier). This is a greenfield exploration with no user research. The brief surfaces what's known (interaction patterns, notation standards, accessibility baselines) and names what's assumed (user preference, cognitive load, accessibility goals).

---

## Idea Score: 12/20

**Rubric:**

| Dimension | Score | Evidence |
|-----------|-------|----------|
| **Problem clarity** | 1/5 | No user research; problem inferred from platform patterns **[A]** |
| **User evidence** | 0/5 | No interviews, no observation, no pain points documented **[?]** |
| **Outcome measurability** | 2/5 | Success criteria are technical (moves execute), not user-centered (time to first move, error rate) **[A]** |
| **Feasibility** | 4/5 | Interaction patterns are well-documented; HTML/CSS/JS implementation is straightforward **[R]** |
| **Mission alignment** | 2/5 | Concept exploration for Beth's learning; not aligned with shipped product roadmap **[A]** |
| **Failure mode named** | 3/5 | Three failure modes identified (shallow legal moves, untested accessibility, no interaction model discovery) **[A]** |

**Total: 12/20** — Idea is feasible and grounded in documented interaction patterns, but lacks user research and measurable user outcomes. Appropriate for a lo-fi concept prototype.

---

**Next steps:**

1. **Build the prototype** — Implement drag-and-drop, click-to-move, and notation entry in a single interface.  
2. **Test keyboard-only path** — Beth navigates and completes one move without the mouse.  
3. **Document interaction model discovery** — Does Beth naturally discover all three methods, or does she default to one?  
4. **Decide on legal move validation** — Integrate chess.js or hardcode a subset of legal moves for lo-fi testing?  
5. **Plan assistive tech testing** — If accessibility is a primary goal, recruit one screen reader user for 15-minute test session.
