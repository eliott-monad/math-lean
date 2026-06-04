---
id: THM-143-general-co-occ-linearity
source: 01-canon/theorems/THM-143-general-co-occ-linearity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-143: General Co-occurrence Linearity for Interval Tournaments

**Status:** PROVED
**Author:** kind-pasteur-2026-03-12-S59c
**Dependencies:** Vandermonde's identity, composition counting, inclusion-exclusion

## Statement

For the Interval tournament on Z_p with connection set S = {1, ..., m} where m = (p-1)/2
and any odd cycle length k in {3, 5, ..., p}, the vertex-set co-occurrence:

    co_occ_k(d) = #{k-vertex sets containing {0, d} that support a Hamiltonian cycle}

is exactly linear in d = min(v, p-v):

    co_occ_k(d) = a_k + b_k * d   for d in {1, ..., m}

with:

    Slope:     b_k = C(m-2, k-3)
    Intercept: a_k = C(2m-1, k-2) - C(m-1, k-2) - m * C(m-2, k-3)

Equivalently:

    co_occ_k(d) = C(2m-1, k-2) - C(m-1, k-2) - (m-d) * C(m-2, k-3)

## Special Cases

- k=3: co_occ_3(d) = d (slope 1, intercept 0). Recovers THM-141.
- k=5: co_occ_5(d) = C(m-2,2)*d + [C(2m-1,3) - C(m-1,3) - m*C(m-2,2)]
- k=p: co_occ_p(d) = 1 for all d (the unique p-vertex set is all of Z_p)
- Slope b_k = 0 when m < k-1, i.e., p < 2k-1. Co-occurrence is then constant.

## Proof

### Step 1: Gap Characterization (LEM-143a)

**Lemma:** A k-vertex set V on Z_p supports a Hamiltonian cycle in the Interval
tournament iff, when vertices are listed in natural cyclic order, ALL k consecutive
gaps are <= m.

## Notes for the formalizer

(none yet)
