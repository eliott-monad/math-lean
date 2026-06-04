---
id: THM-215-compatible-pairs-a000255
source: 01-canon/theorems/THM-215-compatible-pairs-a000255.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-215
name: Compatible Pair Count via A000255
status: PROVED
proved_by: opus-2026-03-14-S89c
verified_computationally: n=3,4,5,6,7
---

# THM-215: Compatible Hamiltonian Path Pairs and A000255

## Statement

For tournaments on n vertices, define two permutations π, σ ∈ S_n to be **compatible** if no directed edge required by π is reversed by σ. That is, if π uses edge u→v, then σ does not use v→u.

**Theorem.** The number of compatible ordered pairs (π, σ) equals

  n! × A000255(n-1)

where A000255 is the OEIS sequence satisfying a(n) = n·a(n-1) + (n-1)·a(n-2), with a(0) = a(1) = 1.

**Corollary.** The probability that two uniformly random permutations are compatible converges to 1/e:

  Pr[compatible] = A000255(n-1)/n! → 1/e as n → ∞.

## Proof

1. Fix any permutation π. Consider σ compatible with π.

2. By relabeling vertices via the bijection π (so that π becomes the identity), we may assume WLOG that π = (0, 1, 2, ..., n-1). The directed edges of π are (i, i+1) for i = 0, ..., n-2.

3. σ is compatible with π iff σ does not use any reverse edge (i+1, i). This means σ has no "unit descent": no consecutive pair (σ_j, σ_{j+1}) with σ_j = σ_{j+1} + 1.

4. The number of permutations of [n] with no unit descent is A000255(n-1). This is a classical result — A000255(n) counts permutations of {1,...,n+1} with no substring [k, k+1].

5. The count is the same for every π (by the relabeling argument in step 2). Therefore the total number of compatible pairs is n! × A000255(n-1).

6. The asymptotic A000255(n-1)/n! → 1/e follows from the known formula a(n) = floor(n!(n+2)/e + 1/2), which gives a(n-1)/n! = a(n-1)/n! ∼ (n+1)/(en) → 1/e.

## Key Consequence

## Notes for the formalizer

(none yet)
