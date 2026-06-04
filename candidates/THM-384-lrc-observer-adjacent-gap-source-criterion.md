---
id: THM-384-lrc-observer-adjacent-gap-source-criterion
source: 01-canon/theorems/THM-384-lrc-observer-adjacent-gap-source-criterion.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-384
name: lrc-observer-adjacent-gap-source-criterion
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S516
depends_on:
  - THM-381
  - THM-382
  - THM-383
---

# THM-384: LRC safety is exactly the observer-adjacent threshold gap condition

## Statement

Let a Lonely Runner system have total denominator `n`, with the stationary
observer marked as vertex `0`.  At time `t`, place all runners on the circle
`R/Z` and complete equality walls by any fixed tie path that puts tied points
next to one another.

Let `g_left(t)` and `g_right(t)` be the two circular gaps adjacent to the
observer in this compactified cyclic order.  If a moving runner is tied with the
observer, one of these adjacent gaps is `0`.

Then the observer is lonely at time `t` if and only if

```text
g_left(t) >= 1/n  and  g_right(t) >= 1/n.
```

Equivalently, the observer's LRC-good status is a function of the closed
`1/n` threshold color of the two observer-adjacent gaps.  The good fiber is
exactly `(long, long)`.

## Proof

Normalize the observer position to `0` on `R/Z`.  A moving runner at position
`x` is safe from the observer exactly when its circular distance from `0` is at
least `1/n`, i.e. when

## Notes for the formalizer

(none yet)
