# Math recount — Meeting Cost Calculator

Mechanical grep against `meeting-cost-calculator.brief.md`:

```
grep -o '\[A\]\|\[R\]\|\[D\]\|\[?\]' meeting-cost-calculator.brief.md | sort | uniq -c
   8 [?]
  14 [A]
```

- Total tags: 22. `[R]` count: 0. `[D]` count: 0.
- `[A]+[?]` ratio: 22/22 = **100%**. Matches the brief's self-reported number — no discrepancy this time.
- Echo check: n/a, no two sources exist to echo each other — there is exactly one source (none).
