# Critic Pass 1 — Pre-Build Review
**Project:** Chess Game Interface  
**Fidelity:** 30% (Tier 1 / Concept)  
**Reviewed:** 2026-06-01  
**Reviewer:** Critic  

---

## Score Table (1–5 scale)

| Dimension | Score | Rationale |
|-----------|-------|-----------|
| **Coherence** | 4 | Solution (multiple interaction models) traces directly to stated problem (supporting diverse user preferences). No drift. |
| **Source-fidelity** | 3 | [R] claims cover interaction patterns, notation standards, accessibility baselines. [A] claims dominate user needs, cognitive load, preference data. Ratio (73% [A]+[?]) is appropriate for greenfield concept. |
| **Demo-ability** | 5 | All three interaction models (drag-and-drop, click-to-move, notation entry) are buildable in HTML/CSS/JS. Move history sidebar is straightforward. |
| **Differentiation** | 2 | Replicates existing patterns (Chess.com, Lichess dual-interaction model). No novel affordance. Differentiation is "all three models in one lo-fi prototype," not a competitive feature. |
| **Risk** | 4 | Three failure modes named: shallow legal-move validation, untested assistive tech, no interaction model discovery plan. Missing: error handling for invalid notation, illegal moves, out-of-turn actions. |
| **Scope discipline** | 5 | Tightly scoped. Timer, game persistence, replay mode explicitly excluded. One prototype, one goal: test three interaction models in a single interface. |

**Total: 23/30 (77%)**

---

## Domain Model Check

**Entities:**
- Game, Move, Player are sufficient for a lo-fi prototype.
- **MISSING:** Piece entity. The domain model names "piece" as an attribute of Move, but pieces themselves (King, Queen, Rook, etc.) are not modeled. This will surface when the build agent tries to render draggable pieces and needs to know:
  - What Unicode character or SVG to use for each piece type
  - Which squares contain which pieces at game start
  - Whether a piece is White or Black (for rendering and legal-move logic)

**Value Objects:**
- BoardPosition (FEN), Square, TimeControl are well-defined.
- **MISSING:** MoveResult or ValidationResult. When ValidateMove service runs, what does it return? Boolean? Error message? List of legal destination squares? The domain model does not name this.

**Services:**
- ValidateMove, RecordMove, ParseNotation, HighlightLegalMoves cover the core interactions.
- **MISSING:** RenderBoard service. The brief assumes the board will be rendered, but does not name what triggers the initial board setup or what data structure holds "which piece is on which square."
- **MISSING:** ExecuteMove service. RecordMove adds to history, but what updates the board state (FEN) and swaps active player?

**Ubiquitous Language:**
- All terms are sourced ([R]) and sufficient for labeling the interface.
- **MISSING:** "Legal move," "Illegal move," "Active player," "Turn." These terms appear in entity attributes but are not defined in the ubiquitous language section.

**Verdict:** Domain model covers 70% of what the build agent needs. The missing Piece entity will force the build agent to invent a representation (likely Unicode chess symbols or SVG paths). The missing ExecuteMove service will be inferred, but it should have been named.

---

## Punch List

### PASS

- **Problem statement is honest.** [A] tag is placed inline: "No user research conducted; inferred from platform documentation." This is correct for a greenfield concept.
- **Evidence ratio is surfaced early.** The brief opens with "73% [A]+[?] — appropriate for 30% fidelity."
- **Scope is tight.** Timer, persistence, replay are explicitly excluded. No feature creep.
- **Interaction models are well-documented.** scout_input/01, 02, 03 provide [R] claims for drag-and-drop, click-to-move, keyboard navigation, and notation standards.
- **Failure modes are named.** Shallow legal-move validation, untested assistive tech, no interaction model discovery plan are all called out.
- **Fidelity banner is specified.** "30% (Tier 1 / Concept / Schematic)" is clear.
- **Design aesthetic is NOT Apex Bridge.** The brief specifies "Chess-specific (wood textures, classic board styling — NOT Apex Bridge)." This is appropriate for a domain-specific prototype.

### FAIL

- **Domain model is missing Piece entity.** The build agent will need to render 32 pieces (16 White, 16 Black) on 64 squares. The domain model names "piece" only as an attribute of Move, not as a standalone entity with type, color, and current square. This will force the build agent to invent a Piece representation, likely using Unicode symbols (♔ ♕ ♖ ♗ ♘ ♙) without guidance on whether to use text, SVG, or images.
- **No ExecuteMove service.** RecordMove adds to history, but what updates the board state after a move is validated? The brief does not name the service that:
  1. Updates FEN string (board_state)
  2. Swaps active_player from White to Black (or vice versa)
  3. Increments fullmove_number or halfmove_clock
  4. Clears the "selected piece" state in click-to-move mode
- **No error handling design.** The brief names "Error handling" as missing in Gate 3, but does not specify what happens when:
  - User enters invalid notation ("Qx7" instead of "Qxe7")
  - User drags a piece to an illegal square
  - User clicks a piece when it's not their turn (if turn enforcement is implemented)
  - User enters notation for a piece that has no legal moves to that square
- **No initial board setup specified.** The domain model references FEN notation as the board state representation, but does not specify:
  - What the starting FEN is (standard chess start position, or something else?)
  - Whether the prototype starts with pieces already on the board, or an empty board for testing move mechanics
  - Whether the build agent should hardcode the starting FEN or provide a way to input a custom position

### MISSING

- **Legal move validation strategy.** The brief asks "Decide on legal move validation — Integrate chess.js or hardcode a subset of legal moves for lo-fi testing?" but does not make the call. The build agent cannot proceed without knowing:
  - Should all legal chess rules be enforced (castling, en passant, check, checkmate)?
  - Should the prototype allow any piece to move to any square, for UI testing only?
  - Should a subset of pieces be implemented (pawns + knights only, for example)?
  - **Recommendation:** For 30% fidelity, hardcode a VERY limited legal-move set (e.g., "Pawns can move forward one square; Knights can move in L-shape; no other pieces"). Full legal-move validation (chess.js integration) is 60%+ fidelity work.
- **Interaction model discovery plan.** The brief names this as a failure mode ("Users may not realize all three methods are available") but provides no design solution. Should the prototype include:
  - Onboarding text ("You can drag pieces, click pieces, or type moves")?
  - Visual affordances (a text input field is visible, but is there a placeholder like "e.g., Nf3")?
  - A "help" or "how to play" section?
  - **For 30% fidelity:** A single sentence of instruction text above the board is sufficient. Do not build a tutorial.
- **Move history interaction.** The brief specifies "Move history sidebar" but does not say whether:
  - Users can click a move in the history to jump to that position (replay mode)
  - History is read-only
  - History scrolls if the game exceeds ~20 moves
  - **For 30% fidelity:** Read-only, scrollable list is sufficient. No replay.
- **Piece rendering strategy.** Unicode symbols (♔ ♕ ♖ ♗ ♘ ♙) are simplest for lo-fi HTML, but:
  - Will they be large enough to drag accurately?
  - Will they render consistently across browsers/OSes?
  - Should the build agent use a chess font (e.g., Chess Merida) or rely on system Unicode support?
  - **Recommendation:** Unicode symbols in a large font (32–48px) with `cursor: grab` on hover. No images, no SVG for 30% fidelity.

### RISK

- **Drag-and-drop without a library will be fragile.** The brief does not specify whether the build agent should use HTML5 drag-and-drop API (complex, accessibility-hostile) or a library like interact.js (adds dependency). For 30% fidelity, raw HTML5 drag-and-drop is acceptable, but:
  - **Risk:** HTML5 drag-and-drop is not keyboard-accessible. The brief requires "keyboard-only navigation path tested by one user," which means drag-and-drop must have a keyboard equivalent (likely click-to-move or notation entry). This is not a blocker, but the prototype will ship with one interaction model (drag) that is mouse-only, contradicting the accessibility goal.
  - **Mitigation:** The brief already includes click-to-move and notation entry, both of which are keyboard-accessible. Drag-and-drop can remain mouse-only for this prototype.
- **No chess engine = no checkmate detection.** If the prototype allows any move without validating check/checkmate, the game will never end. For testing interaction models, this may be acceptable, but:
  - **Risk:** Beth may expect the game to detect checkmate and display a "Game Over" message. The brief does not specify whether this is in scope.
  - **Recommendation:** For 30% fidelity, no checkmate detection. The prototype is for testing move interaction, not playing a full game.
- **Notation parsing will fail on ambiguous moves.** Standard Algebraic Notation (SAN) requires disambiguation when two pieces of the same type can move to the same square (e.g., "Nbd7" for the knight on b-file to d7, not the knight on f-file). The brief references SAN as a FIDE standard ([R]), but does not specify:
  - Should the prototype support full SAN (including disambiguation, check indicators "+" and checkmate "#")?
  - Should it accept simplified notation (e.g., "e4" for pawn moves only, no piece prefix)?
  - **For 30% fidelity:** Accept only unambiguous moves. If the user types "Nf3" and two knights can move to f3, display an error ("Ambiguous move. Please specify which knight."). Do not implement disambiguation logic.
- **FEN string will not update correctly without a chess library.** The brief specifies that board_state is stored as FEN, but updating FEN after each move requires:
  1. Parsing the current FEN
  2. Locating the piece on the origin square
  3. Moving it to the destination square
  4. Swapping the active player token ("w" ↔ "b")
  5. Incrementing the fullmove counter
  6. Updating castling rights (if a King or Rook moves)
  7. Updating the en passant target square (if a pawn moves two squares)
  - **Risk:** This is NOT lo-fi work. FEN manipulation is complex.
  - **Recommendation:** Do not store board state as FEN for 30% fidelity. Use a simpler data structure (e.g., an 8×8 array of piece objects: `[{type: 'pawn', color: 'white'}, {type: 'knight', color: 'black'}, null, ...]`). FEN is a serialization format, not a working representation for a lo-fi prototype.

---

## Specific Gaps to Address Before Build

1. **Decision required: Legal move validation strategy.**
   - Option A: Hardcode a VERY limited ruleset (pawns move forward, knights move L-shape, no other pieces).
   - Option B: Allow any piece to move to any empty square (UI testing only, no chess rules).
   - Option C: Integrate chess.js (NOT appropriate for 30% fidelity).
   - **Critic's call:** Option A. Hardcode pawn + knight moves only. This is enough to test all three interaction models without building a chess engine.

2. **Decision required: Initial board setup.**
   - Should the board start with a standard chess position, or a simplified test position (e.g., 2 pawns + 2 knights per side)?
   - **Critic's call:** Standard starting position, but only pawns and knights are movable. All other pieces are present (for visual completeness) but frozen.

3. **Decision required: Piece rendering.**
   - Unicode symbols, SVG, or images?
   - **Critic's call:** Unicode symbols (♔ ♕ ♖ ♗ ♘ ♙) in 40px font. Simple, no dependencies.

4. **Decision required: Board state representation.**
   - FEN string (complex to update) or 8×8 array (simpler for lo-fi)?
   - **Critic's call:** 8×8 array of objects: `{type: 'pawn', color: 'white', square: 'e2'}`. Convert to FEN only for display/debugging, if needed.

5. **Add to domain model before build:**
   - **Piece entity:** `{type: 'pawn'|'knight'|'bishop'|'rook'|'queen'|'king', color: 'white'|'black', currentSquare: Square}`
   - **ExecuteMove service:** Acts on [Game, Move]. Trigger: ValidateMove returns true. Updates board state, swaps active player, records move.
   - **RenderBoard service:** Acts on [Game]. Trigger: Page load, ExecuteMove completion. Draws 64 squares, places pieces.

6. **Add to ubiquitous language before build:**
   - **Legal move:** A move that follows chess rules (for lo-fi: pawn forward one square, knight L-shape).
   - **Illegal move:** A move that violates chess rules. Display error, do not execute.
   - **Active player:** The player (White or Black) whose turn it is.

---

## Pre-Build Recommendation

**Do NOT proceed to build until:**
1. Legal move validation strategy is chosen (Critic recommends: pawns + knights only, hardcoded rules).
2. Piece entity is added to domain model.
3. ExecuteMove service is added to domain model.
4. Board state representation is specified (Critic recommends: 8×8 array, not FEN).

**If Beth says "build it anyway":** The build agent will make these decisions arbitrarily. Expect the prototype to implement Option A (pawns + knights only) with Unicode symbols and an 8×8 array board state, because that is the simplest path for 30% fidelity.

---

## Summary

The brief is **well-structured, honest about evidence gaps, and appropriately scoped for 30% fidelity**. The domain model is 70% complete but missing the Piece entity and ExecuteMove service, which are critical for a working prototype. Four decisions must be made before build:

1. Legal move validation strategy
2. Initial board setup
3. Piece rendering approach
4. Board state data structure

If these gaps are filled, the build agent has enough structure to produce a coherent prototype. If not, the build agent will invent solutions, and the prototype may not match Beth's expectations.

**Readiness for build: 70%**  
**Blockers: 4 (legal moves, board setup, piece rendering, state model)**  
**Risk level: Medium (missing domain entities will force build-time invention)**
