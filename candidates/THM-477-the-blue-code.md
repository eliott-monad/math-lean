---
id: THM-477-the-blue-code
source: 01-canon/theorems/THM-477-the-blue-code.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-477 — The Blue Code: grid-symmetric tilings are a dual-containing code whose self-dual defect is the hypotenuse

**Status:** PROVED and ADVERSARIALLY VERIFIED (2026-06-11: independent re-derivation;
fresh-code recheck with a DIFFERENT tile enumeration at n = 3..9 including the
linear-vs-affine risk — explorer isGridSym semantics (pure bit equality, no negation,
all-zeros tiling is blue) coincides with ker(1+sigma) with ZERO mismatches over all
2^21 tilings at n = 8; B^perp = im(1+sigma) confirmed by fresh GF(2) elimination.
See 05-knowledge/results/thm477_adversarial_recheck_0611.out.)
**Provenance:** mac-mini-2026-06-11-S1, dispatch: Reed–Muller duality
(RM(r,m)^⊥ = RM(m−r−1,m); repetition↔SPC, k = n/2 self-dual) as a lens on the
tiling model. Related: THM-474 (tilings = switching classes), THM-163 (H Walsh
structure), T779, the blue/black line canon in CLAUDE.md.

## Setup

Tiling space F_2^m, m = C(n-1,2), coordinates = tiles (x,y), x ≥ y+2. The grid
involution σ(x,y) = (n-y+1, n-x+1) is a COORDINATE PERMUTATION of order 2 whose
fixed tiles are exactly the hypotenuse (anti-diagonal x+y = n+1), f = ⌊(n-1)/2⌋
of them. Over F_2, (1+σ)² = 0, so im(1+σ) ⊆ ker(1+σ).

## Statement

1. **(Blue is linear.)** The grid-symmetric ("blue") tilings form the linear code
   B_n = ker(1+σ) of dimension (m+f)/2; the blue fraction 2^((f-m)/2) recovers the
   canon exponents 0, -1, -2, -4, -6, -9 (n = 3..8) and extends them (-12 at n=9).
2. **(Dual-containing; the hypotenuse is the self-dual defect.)** B_n^⊥ = im(1+σ)
   ⊆ B_n, with dim B_n - dim B_n^⊥ = f. Orbit-locally: on every σ-pair of tiles the
   blue constraint is the [2,1] repetition code — SELF-DUAL, the k = n/2 moment of
   the RM analogy — and on every hypotenuse tile it is the trivial [1,1]/[1,0] pair.
   The glue group B_n/B_n^⊥ ≅ F_2^f (read off the hypotenuse bits) carries the
   standard odd-type form. B_n is self-dual iff f = 0: never for n ≥ 3 — **the
   hypotenuse is exactly the obstruction to self-duality**.
3. **(Plotkin = Mode B.)** σ swaps the two legs of the staircase and fixes the apex
   tile (n,1); on the (n-2)-overlap it restricts to σ_{n-2}. Hence
   B_n ≅ B_{n-2} ⊕ {(w, mirror w) : w ∈ F_2^{n-3}} ⊕ F_2·(apex), giving
   **b(n) = b(n-2) + (n-2)**, b(3) = 1, b(4) = 2 — the Reed–Muller (u, u+v)
   doubling with the triangle's legs as the two blocks, running on the project's
   slow (Mode B) time scale.
4. **(Lines.)** σ(𝟙) = 𝟙, so 𝟙 ∈ B_n: the complement translation x ↦ x+𝟙 preserves
   blueness — re-deriving the canon fact that every (tiling, complement) line is

## Notes for the formalizer

(none yet)
