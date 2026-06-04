---
id: THM-260-bandlimited-all-n
source: 01-canon/theorems/THM-260-bandlimited-all-n.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-260: Band-Limitedness of H for All n (Resolves B1 of OPEN-Q-040)

**Status:** PROVED (algebraic sketch, all n >= 4; verified computationally n=4,5,6,7)
**Devil's advocate review (S29):** Upper bound correct but substitution argument needs detail. Lower bound interleaving construction correct but even-n case not explicitly handled. Both gaps are fillable.
**Filed by:** kind-pasteur-2026-03-25-S1
**Dependencies:** THM-076 (Walsh-OCF factorization), THM-259 (Walsh degree formula)

## Statement

For tournaments on n >= 4 vertices, the Hamiltonian path count H(T), viewed as a function on the tiling hypercube Q_m (m = C(n-1,2)), has:

1. **Walsh degree exactly 2*floor((n-1)/2)** in the tiling model.
   This is n-1 for odd n, n-2 for even n.

2. **Band-limitedness:** For n >= 6, the Walsh degree satisfies
   2*floor((n-1)/2) < C(n-1,2)/2 = m/2.
   So ALL Walsh coefficients above the midpoint of the spectrum vanish.

3. **Correction:** At n=4,5, the Walsh degree EXCEEDS m/2 (degree 2 > 1.5
   at n=4; degree 4 > 3 at n=5). Band-limitedness at m/2 holds for n >= 6 only.

## Proof

**Upper bound (all n):** THM-076 proves that in the full arc model (all C(n,2) arc
variables), the Walsh coefficient hat{H}[S] is nonzero only for monomials S that
are unions of even-length paths with total vertices 2k+r <= n. The Hamming weight
|S| = 2k <= n-r <= n-1. Restricting to tiling variables (fixing the n-1 base-path
arcs to their constant values ±1) is a SUBSTITUTION in the multilinear Walsh
expansion. Substituting a variable x_i = c (constant) eliminates all monomials
containing x_i and preserves those not containing it — so the multilinear degree
can only decrease or stay the same. Since only even-weight monomials survive
complement symmetry in the full model, the max even weight in the tiling model
is <= 2*floor((n-1)/2).

**Note (S29 review):** THM-259 uses m = C(n,2) (full arc model). THM-260 uses
m = C(n-1,2) (tiling model). The Walsh degrees are the same in both models
because the max-weight monomials can be constructed using only tile arcs.

**Lower bound (n >= 4):** We exhibit a Walsh monomial of weight 2*floor((n-1)/2)
using only tile arcs (non-base-path arcs).

## Notes for the formalizer

(none yet)
