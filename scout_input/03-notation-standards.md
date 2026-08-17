# Chess Board Representation: FEN and Algebraic Notation

**Source:** Chess.com, Wikipedia, Chessprogramming wiki  
**Retrieved:** 2026-05-29  
**Domain:** Standard notation systems for chess positions and moves

## FEN (Forsyth-Edwards Notation)

Standard notation for describing a board position. [CS: VERIFIED]

### History
Developed by David Forsyth (Scottish journalist) in 1883; extended to modern FEN format. [CS: VERIFIED — Wikipedia, Chess.com]

### Purpose
Provides all necessary information to restart a game from a particular position. [CS: VERIFIED]  
Translates any chess position into a single line of text. [CS: VERIFIED]

### Structure (Six Fields, Space-Separated)

1. **Piece placement** — Row-by-row from rank 8 to rank 1; slashes separate ranks [CS: VERIFIED]
   - Uppercase = White pieces (PNBRQK); lowercase = Black pieces (pnbrqk) [CS: VERIFIED]
   - Numbers indicate consecutive empty squares [CS: VERIFIED]
2. **Active color** — "w" (White to move) or "b" (Black to move) [CS: VERIFIED]
3. **Castling availability** — "K" (White kingside), "Q" (White queenside), "k" (Black kingside), "q" (Black queenside); "-" if none available [CS: VERIFIED]
4. **En passant target square** — Square behind pawn that just moved two squares; "-" if none [CS: VERIFIED]
5. **Halfmove clock** — Number of halfmoves since last pawn advance or piece capture [CS: VERIFIED]
6. **Fullmove number** — Starts at 1, increments after Black's move [CS: VERIFIED]

### Example (Starting Position)
`rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1` [CS: VERIFIED]

## Algebraic Notation (SAN — Standard Algebraic Notation)

The only notation recognized by FIDE (International Chess Federation). [CS: VERIFIED]

### Coordinate System
- Files (columns): a–h (left to right from White's perspective) [CS: VERIFIED]
- Ranks (rows): 1–8 (bottom to top from White's perspective) [CS: VERIFIED]

### Piece Notation
- Pawn = "P" (often omitted in move notation)
- Knight = "N"
- Bishop = "B"
- Rook = "R"
- Queen = "Q"
- King = "K"

[CS: VERIFIED — FIDE standard]

### Move Recording
Designates a move with piece abbreviation + destination square (e.g., "Nf3" = knight to f3). [CS: VERIFIED]  
Disambiguation: if multiple pieces of same type can move to same square, include starting file or rank (e.g., "Nbd7"). [CS: HIGH — standard practice, cited in Chess.com and Wikipedia]
