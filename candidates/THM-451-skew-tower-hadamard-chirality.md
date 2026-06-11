---
id: THM-451-skew-tower-hadamard-chirality
source: 01-canon/theorems/THM-451-skew-tower-hadamard-chirality.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-451 — The Skew Tower's Hadamard Chirality: equivalent to Sylvester through order 8, then lands in the unique transpose-split pair at 16

**Status:** VERIFIED with exact certificates (explicit monomial witnesses; exhaustive
backtracking searches that TERMINATED; three independent equivalence invariants). SNF closed
form CONJECTURED for n ≥ 64. Adversarially re-verified (`verify_D_equivalence_kps1.out`).
**Source:** kind-pasteur-2026-06-09-S1 (branch D + verifier).
**Related:** THM-447/448, THM-454(6) (op-asymmetry of D — the same chirality at tournament level).

## (1) Equivalence verdicts

Skew tower W vs Sylvester tower H (Hadamard equivalence = row/col permutations + negations):
- Orders 2, 4, 8: EQUIVALENT, explicit verified witnesses (e.g. order 8: row perm
  [0,1,2,3,4,7,5,6], row signs [1,1,1,−1,1,−1,−1,1], col perm [1,2,3,4,5,6,7,0]).
- **Order 16: NOT equivalent.** skew_16 ≅ Sloane had.16.3 (Hall class IV, |Aut| = 86016 =
  2¹²·3·7, explicit witness); Sylvester = had.16.0 verbatim (|Aut| = 10,321,920).
  Invariants: Hall-set counts 28 vs 140; SNF(H) = 1·2⁷·8⁷·16 vs 1·2⁴·4⁶·8⁴·16;
  GF(2)-rank((H+J)/2) = 8 vs 5.
- **Order 32: NOT equivalent** (full quadruple profile {0:26656, 8:7056, 16:1568, 24:624,
  32:56} vs {0:34720, 32:1240}; SNF 1·2¹⁵·16¹⁵·32 vs binomial).

## (2) CHIRALITY — the headline

**skew_16 is NOT Hadamard-equivalent to its own transpose** (exhaustive search, 10,188,512
nodes, completed). skew_16^T ≅ had.16.4, and had.16.4 is literally had.16.3 transposed
(identity witness). **{had.16.3, had.16.4} is the unique transpose-split pair among Hall's five
order-16 classes** (had.16.0/1/2 are self-transpose, witnesses found) — and the skew doubling
tower lands exactly in it. Per-class Hall counts 140/76/44/28/28; GF(2) ranks 5/6/7/8/8.

This is the SAME chirality seen at the tournament level: D is the unique non-op-equivariant
doubling (THM-450(6)), H(D(T)) ≠ H(D(T^op)) in 50/74 classes (THM-454(6)), and the tower cores
are never self-converse past level 7 (THM-448). Transposing the Hadamard matrix = op on the
tournament; the doubling breaks that symmetry and the Hadamard classification SEES it.

## (3) Structure invariants (closed forms, conjectured beyond 32)

```
SNF(skew_n)  = (1, 2^{n/2−1}, (n/2)^{n/2−1}, n)      "flat"  [verified n=16,32]
SNF(sylv_n)  = 2^j with multiplicity C(log2 n, j)     "binomial"
GF(2)-rank((S+J)/2):  skew = n/2 (maximal growth)  vs  Sylvester = log2(n) + 1 (minimal)
```

## Notes for the formalizer

(none yet)
