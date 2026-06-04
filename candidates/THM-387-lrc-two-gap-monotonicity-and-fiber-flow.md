---
id: THM-387-lrc-two-gap-monotonicity-and-fiber-flow
source: 01-canon/theorems/THM-387-lrc-two-gap-monotonicity-and-fiber-flow.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-387
name: lrc-two-gap-monotonicity-and-fiber-flow
status: PROVED
date: 2026-06-01
session: opus-2026-06-01-S519
depends_on:
  - THM-384
---

# THM-387: LRC two-gap monotonicity and fiber flow

## Statement

For a Lonely Runner system with `n >= 3`, stationary observer at `0`, and
distinct positive integer speeds `v_1, ..., v_{n-1}`, define:

- `g_right(t) = min_i {v_i t}` — clockwise gap from observer to nearest runner
- `g_left(t) = min_i (1 - {v_i t})` — counterclockwise gap from observer to nearest runner

where `{x} = x - floor(x)` is the fractional part.  At observer-tie times
the gaps are interpreted by one-sided limits in the adjacent open cells, with
the compactified tie point retained as a boundary state as in THM-384.

The THM-384 fiber is `(left_label, right_label)` where each label is `L`
(long, gap >= 1/n) or `S` (short, gap < 1/n).

**Part A (Monotonicity).** On every open interval between consecutive runner
wrap-around events
(times when some `v_i t` is an integer), `g_right` is non-decreasing and
`g_left` is non-increasing.

**Part B (Wrap-around coupling).** At a wrap-around event for runner `i`,
the right one-sided gap resets through `0`; the left one-sided gap is released
from runner `i` and can jump upward to the next counterclockwise runner.

**Part C (Forbidden transitions).** The fiber transitions `SL -> LL` and
`LL -> LS` never occur. Equivalently:
1. **LL is entered only from LS** (right gap grows past 1/n while left is already long).
2. **LL exits only to SL** (left gap shrinks past 1/n while right stays long).

## Notes for the formalizer

(none yet)
