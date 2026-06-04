---
id: THM-338-circulant-optimality-threshold
source: 01-canon/theorems/THM-338-circulant-optimality-threshold.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-338
name: Circulant Optimality Threshold
status: PROVED for n≤11, CONJECTURED for n≥13
session: opus-2026-05-27-S7
verified: computationally n=3..13 (exhaustive circulant search)
depends_on: THM-336
---

## Statement

Define opt_circ(n) = max{H(T) : T is a circulant tournament on Z_n}.
Define a(n) = A038375(n) = max{H(T) : T is any n-vertex tournament}.

Then:
- **a(n) = opt_circ(n)** for n = 3, 5, 7, 9, 11
- **a(n) > opt_circ(n)** for n = 13 (gap = 8656)

**Conjecture:** a(n) > opt_circ(n) for all n ≥ 13.

## Optimal Circulant Tournaments (verified)

| n  | a(n)      | opt_circ(n) | Optimal S              | Type                |
|----|-----------|-------------|------------------------|---------------------|
| 3  | 3         | 3           | {2}                    | Paley QR_3          |
| 5  | 15        | 15          | {3,4}                  | upper half          |
| 7  | 189       | 189         | {1,2,4}                | Paley QR_7          |
| 9  | 3357      | 3357        | {1,5,6,7}              | mixed               |
| 11 | 95095     | 95095       | {2,6,7,8,10}           | Paley QR_11         |
| 13 | ≥3719831  | 3711175     | {1,2,3,4,5,6}=lower    | lower half (gap 8656)|

## Lower Bounds from Circulant Search (new bounds for A038375)

| n  | opt_circ(n)                   | Optimal S (local optimum)              |
|----|-------------------------------|----------------------------------------|
| 13 | 3,711,175                     | {1,...,6} lower half                   |
| 15 | 198,464,295                   | {1,...,7} lower half                   |
| 17 | 13,689,269,499                | {1,...,8} lower half                   |
| 25 | ≥2,418,453,569,285,650,675    | {1,...,12} lower half (local opt)      |
| 27 | ≥17,051,631,267,035,242,313   | {2,...,13,26} = lower half - {1} + {26}|

## Notes for the formalizer

(none yet)
