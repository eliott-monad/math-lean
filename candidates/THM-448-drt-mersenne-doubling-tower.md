---
id: THM-448-drt-mersenne-doubling-tower
source: 01-canon/theorems/THM-448-drt-mersenne-doubling-tower.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-448 — The DRT/Mersenne Doubling Tower: Paley at 7, then a NEW non-Paley DRT family with frozen automorphisms F_21

**Status:** PART (a) PROVED; parts (b)–(e) VERIFIED computationally (orders ≤ 64) with exact
certificates; conjectures flagged. Adversarially re-verified (66/66 independent checks,
`verify_B_tower_kps1.out`).
**Source:** kind-pasteur-2026-06-09-S1 (branch B of the doubling fan-out + verifier).
**Related:** THM-447 (the doubling), THM-451 (Hadamard chirality), THM-452 (tiling coset law),
HYP-2333 (now resolved into this), HYP-2351/2352 (successor conjectures, renumbered twice from 2339/2340), THM-067 (Mersenne
vanishing), S18h BIBD trichotomy (links reappear in T15's vertex links).

## The tower

Seed S_1 = [1]; iterate S → [[S, S], [S−2I, 2I−S]] (THM-447). Write W_{2^k} for the order-2^k
member and T_{2^k−1} for the core tournament of the (automatically) normalized matrix.

**(a) PROVED: every core is a doubly regular tournament on the Mersenne number 2^k − 1.**
Proof: the tower is skew-Hadamard at every order (THM-447(2), induction from order 1); its first
row is all-ones at every order — analytically, from the closed-form arc law (verified exactly at
orders 2..16, provable by induction):
```
S[i,j] = (−1)^( popcount((i AND j) >> (v+1)) + bit_v(i) ),   v = lsb(i XOR j)
```
("skew-Walsh function": the Sylvester character ⟨i,j⟩ truncated above the lowest differing bit,
plus the twin-direction bit). At i=0 the exponent is 0, so row 0 is all +1 — the tower is BORN
normalized, no renormalization needed. The core of a normalized skew-Hadamard matrix of order m
is a DRT on m−1 vertices (classical). ∎

**(b) T_7 ≅ Paley T_7** (explicit isomorphism; H = 189). But the tower then LEAVES Paley:

**(c) T_31 is NOT isomorphic to Paley T_31** — a non-Paley, non-circulant DRT(31). Three
independent proofs:
1. Triple-intersection distributions: T31 has |N⁺(u)∩N⁺(v)∩N⁺(w)| spectrum
   {0:28, 1:84, 2:252, 3:3192, 4:812, 5:84, 6:28, 7:15}; Paley31's support is only {2,3,4}
   ({2:930, 3:2015, 4:1550}).
2. |Aut(T31)| = 21 vs |Aut(Paley T_31)| = 465 (the 465 reproduced exactly by the same searcher).
3. Exhaustive backtracking isomorphism search: NO map (2,266,906 nodes, search completed).
Also: T31 is not circulant — exhaustive 2^15 enumeration shows the ONLY circulant DRT(31)
S-sets are QR and NQR (both = Paley up to op).

**(d) The automorphism tower FREEZES at the Frobenius group F_21:**

## Notes for the formalizer

(none yet)
