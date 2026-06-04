---
id: THM-389-lrc-trienerment-tie-conventions
source: 01-canon/theorems/THM-389-lrc-trienerment-tie-conventions.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-389
name: lrc-trienerment-tie-conventions
status: PROVED (observer equivalence Lean-checked; circle packing proof elementary)
date: 2026-06-01
session: codex-2026-06-01-S542
depends_on:
  - THM-381
  - THM-383
  - THM-386
  - HYP-2029
lean: 04-computation/lean/TournamentH7/TournamentH7/LonelyRunner.lean
---

# THM-389: The LRC trienerment needs strict observer ties and weak global ties

Let `x_0=0,x_1,...,x_{n-1}` be the observer and runner positions on
`R/Z`, and let `d(i,j)` be circular distance.  There are two natural LRC
trienerment tie conventions:

```text
strict tie: d(i,j) <  1/n
weak tie:   d(i,j) <= 1/n
```

Then:

1. The observer is lonely in the usual closed LRC sense,
   `d(0,i) >= 1/n` for every runner `i`, iff the observer has strict
   tie-degree `0`.
2. Every `n`-point configuration has at least one weak tie.
3. A strict globally tie-free configuration exists iff the `n` points are a
   regular `n`-gon, i.e. the cyclic gaps are all exactly `1/n`.

Thus the S539 slogan must be read as a two-layer convention.  Strict ties give
the local observer equivalence.  Weak ties give the global pigeonhole fact.
With strict ties, the pure-tournament slice is not empty: it is exactly the
regular wall slice, including the AP/unit-wall witnesses.  This is why the
compactified symbolic target in HYP-2029 needs both open targets `G` and wall
targets `W`.

## Notes for the formalizer

(none yet)
