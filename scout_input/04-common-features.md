# Common Feature Sets in Digital Chess Interfaces

**Source:** Lichess blog, Chess.com help documentation  
**Retrieved:** 2026-05-29  
**Domain:** Timer design, move history, analysis tools

## Move History and Time Tracking

### Lichess
- Stores move times with precision up to 0.1 second (standard); 0.01 second when clock < 10 seconds remaining [CS: VERIFIED — Lichess blog post]
- Analysis board shows move-time graph; hover to see individual move durations [CS: VERIFIED]
- Divides game into Opening / Middlegame / Endgame stages for move-time analysis [CS: VERIFIED]
- Real-time replay option scrollable from move list [CS: VERIFIED]

### Chess.com
- Time controls formatted as "minutes + increment seconds" (e.g., "10+5" = 10 minutes per side, 5 seconds added per move) [CS: VERIFIED — Chess.com help center]

## Clock Display

### Visual States
- Lichess Clock widget renders different visual states based on time remaining [CS: HIGH — technical claim from mobile codebase documentation]
- Real-time countdown during live games [CS: VERIFIED]
- Receives time updates through ValueNotifier<Duration> pattern (in mobile implementation) [CS: HIGH — specific to Lichess mobile Flutter codebase]

## [WOBBLY]
Feature descriptions focus on Chess.com and Lichess implementations. Smaller platforms or open-source projects may implement subsets or alternatives. No comparative feature audit across platforms.
