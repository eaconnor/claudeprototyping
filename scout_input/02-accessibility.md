# Chess Interface Accessibility

**Source:** Lichess accessibility documentation, Chess.com forums, Winboard project  
**Retrieved:** 2026-05-29  
**Domain:** Screen reader support and keyboard navigation for digital chess

## Lichess "Blind Mode"

Lichess offers built-in screen reader support called "blind mode." [CS: VERIFIED — primary source documentation at lichess.org]

### Features
- Simplified page layout removes visual clutter [CS: VERIFIED]
- Linear information structure for screen reader parsing [CS: VERIFIED]
- Auditory feedback for game events and actions [CS: VERIFIED]
- Keyboard shortcuts and command-based board interaction [CS: VERIFIED]
- Main interface uses edit field labeled "Your move" or "waiting" [CS: VERIFIED]
- Moves entered via algebraic notation (e.g., "e4", "Nf3") [CS: VERIFIED]
- Commands: 'l' for last move, 'p' for piece positions [CS: VERIFIED — specific documented commands]

### Screen Reader Compatibility
- Compatible with VoiceOver, NVDA, JAWS as of October 2025 [CS: HIGH — claimed in Lichess documentation; not independently verified]
- Full keyboard navigation without mouse dependency [CS: VERIFIED]
- ARIA labels, roles, landmarks for all controls [CS: HIGH — technical claim from documentation]

## Desktop: Winboard 4.5

Free Windows chess program with automatic screen reader support. [CS: VERIFIED — SourceForge project page]

- Works with JAWS and NVDA [CS: VERIFIED]
- Full keyboard access for piece movement and menu navigation [CS: VERIFIED]

## Core Accessibility Patterns

- Text-based board notation for screen reader output [CS: HIGH — common pattern]
- Audio move announcements (e.g., "Knight to f3") [CS: HIGH]
- Keyboard shortcuts replace mouse controls [CS: VERIFIED]

## [WOBBLY]
Accessibility claims are drawn from platform-specific documentation (Lichess, Chess.com, Winboard). No independent accessibility audit or user testing data is cited. Implementation quality may vary.
