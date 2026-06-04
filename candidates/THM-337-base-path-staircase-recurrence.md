---
id: THM-337-base-path-staircase-recurrence
source: 01-canon/theorems/THM-337-base-path-staircase-recurrence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-337
name: Base-Path Staircase Order-3 Linear Recurrence
status: CONJECTURED (verified k=1..11 computationally)
session: opus-2026-05-27-S7
verified: computationally k=1..11
---

## Statement

Let T_k be the **base-path staircase tournament** on n=2k vertices, defined by:
- Base path: n−1 → n−2 → ... → 1 → 0 (directed path from vertex n−1 to 0)
- All non-base tiles "upward": for all (x,y) with x−y ≥ 2, vertex y beats vertex x
  (i.e., lower-indexed vertex beats higher-indexed vertex for all non-adjacent pairs)

Then H(T_k) satisfies the **order-3 linear recurrence**:

**H(T_k) = 3·H(T_{k−1}) + H(T_{k−2}) + H(T_{k−3})**

with initial values H(T_1) = 1, H(T_2) = 5, H(T_3) = 17.

The characteristic polynomial x³ − 3x² − x − 1 = 0 has roots:
- λ₁ ≈ 3.38298 (dominant real root)
- λ₂, λ₃ complex conjugate pair with |λ| ≈ 0.544

So H(T_k) ~ C · λ₁^k where λ₁ ≈ 3.382976 and C is a constant.

## Computed Values

| k  | n=2k | H(T_k)                         |
|----|------|-------------------------------|
| 1  | 2    | 1                             |
| 2  | 4    | 5                             |
| 3  | 6    | 17                            |
| 4  | 8    | 57                            |
| 5  | 10   | 193                           |
| 6  | 12   | 653                           |
| 7  | 14   | 2,209                         |
| 8  | 16   | 7,473                         |
| 9  | 18   | 25,281                        |

## Notes for the formalizer

(none yet)
