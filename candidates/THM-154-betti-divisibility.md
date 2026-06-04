---
id: THM-154-betti-divisibility
source: 01-canon/theorems/THM-154-betti-divisibility.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-154: Betti Divisibility for Circulant Tournaments

**Status:** VERIFIED (computational, needs algebraic proof)
**Session:** opus-2026-03-13-S70
**Depends on:** GLMY path homology, circulant tournament structure

## Statement

For any circulant tournament T on Z_n (n odd), all GLMY path homology
Betti numbers are divisible by n:

$$\beta_m(T) \equiv 0 \pmod{n} \quad \text{for all } m \geq 0$$

Equivalently, β_m = n · β_m^{(per)}, where β_m^{(per)} is the per-eigenspace
Betti number.

## Verification

| Tournament | n | β_m | β_m / n |
|------------|---|-----|---------|
| Interval n=5 | 5 | (5,5,0,5,5) | (1,1,0,1,1) |
| Interval n=7 | 7 | (7,7,0,14,14,7,0) | (1,1,0,2,2,1,0) |
| Interval n=9 | 9 | (9,9,0,27,27,18,27,27,27) | (1,1,0,3,3,2,3,3,3) |
| Paley p=7 | 7 | (7,0,0,21,21,21,21) | (1,0,0,3,3,3,3) |
| Paley p=3 | 3 | (3,3,0) | (1,1,0) |
| C_7^{1,3,5} | 7 | (7,7,0,14,14,7,0) | (1,1,0,2,2,1,0) |
| Interval n=11 | 11 | (11,11,0,44,44,33,77,110,132,143,253) | (1,1,0,4,4,3,7,10,12,13,23) |

Note: Paley p=11 computation has numerical issues with matrix rank (need
integer arithmetic for n > 10).

## Proof sketch

The cyclic group Z_n acts on the chain complex (Ω_•, ∂_•) by rotating
vertex labels: σ · (v_0, ..., v_m) = (v_0+1, ..., v_m+1) mod n.

Since the tournament is circulant, this action preserves both Ω_m (the
set of regular m-paths) and the boundary maps ∂_m. Therefore:

1. Each Ω_m decomposes into Z_n-representations: Ω_m = ⊕_{k=0}^{n-1} Ω_m^{(k)}

## Notes for the formalizer

(none yet)
