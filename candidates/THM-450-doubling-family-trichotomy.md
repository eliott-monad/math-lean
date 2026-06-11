---
id: THM-450-doubling-family-trichotomy
source: 01-canon/theorems/THM-450-doubling-family-trichotomy.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-450 — The Doubling Family Trichotomy: projector, projector, Hadamard mixer (a Clifford/Cayley-Dickson classification)

**Status:** PROVED (block algebra, with the forced-shape derivation) + VERIFIED exhaustively
(all 8+64 labeled tournaments n=3,4 × all 16 members; symmetry identities exhaustive).
Adversarially re-verified (`verify_E_family_kps1.out`).
**Source:** kind-pasteur-2026-06-09-S1 (branch E + verifier). Resolves HYP-2337.
**Related:** THM-447, OPEN-Q-044/045, THM-250..253 (rapidity), `lrc-cayley-dickson-tower-s387.md`.

## (1) The forced shape

Any 2×2-block doubling with blocks in span{M, I} that yields a valid tournament dominance
matrix for ALL tournaments T must have the form
```
M' = [[aM, bM + βI], [bM − βI, dM]],   a,b,d,β ∈ {±1}    (16 members)
```
(diagonal blocks: zero diagonal forces no I-term; skew-symmetry forces equal off-diagonal
M-signs and opposite I-signs; β ≠ 0 because twins need an arc). CAVEAT: blocks outside
span{M, I} (e.g. J) give further doublings such as the ordered sum T⊕T — the classification
is within the natural ansatz.

## (2) The Kronecker form and the square law

Write M' = P⊗M + Q⊗I with P = [[a,b],[b,d]], Q = [[0,β],[−β,0]]. Then
```
M'² = P²⊗M² + {P,Q}⊗M + Q²⊗I,   Q² = −I₂,   {P,Q} = β·(tr P)·J
```
**Chebyshev members:** M'² is block-diagonal for all T ⟺ tr P = 0 ⟺ {P,Q} = 0, and then
M'² = I₂⊗(2M² − I) — the Chebyshev T₂ law of THM-447.
**Skew-Hadamard preservation ⟺ tr P = 0 as well** (proof: S'S'^T = I − M'²; M² = (1−n)I gives
M'² = (1−2n)I iff tr P = 0; else the off-diagonal block ±2(b(1−n)I + βM) ≠ 0). The preserving
members are exactly those whose sign matrix P is, up to symmetry, the 2×2 Hadamard
[[1,1],[1,−1]] (det P = −2). **The 2×2 Hadamard matrix is the doubling's DNA.**

## (3) The three orbits

Under the symmetries (copy swap, global arc reversal, pre-composition with op), the 16 members
form exactly 3 orbits, with exact geometric meaning in the swap eigenbasis (e = (1,1),
f = (1,−1)):
```
ORBIT A (size 4):  T[K₂]    P = ee^T  = 2·projector on the swap-SYMMETRIC line   (det 0, rank 1)

## Notes for the formalizer

(none yet)
