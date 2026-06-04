---
id: THM-141-interval-co-occurrence
source: 01-canon/theorems/THM-141-interval-co-occurrence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-141: Interval 3-Cycle Co-occurrence Formula

**Status:** PROVED
**Author:** kind-pasteur-2026-03-12-S59
**Date:** 2026-03-12

## Statement

For the Interval tournament T_int on Z_p with connection set S = {1, 2, ..., m} where m = (p-1)/2, the number of 3-cycle vertex sets containing both vertex 0 and vertex d is:

    co_occ_3(d) = min(d, p - d)    for d = 1, ..., p-1.

In particular, co-occurrence is LINEAR in the gap for d ≤ m, reaching maximum m at d = m.

## Proof

Fix d ∈ {1, ..., m}. Since d ∈ S = {1,...,m}, we have arc 0 → d.

For a directed 3-cycle on {0, d, v}, we need the cycle 0 → d → v → 0, which requires:
- d → v: (v - d) mod p ∈ S, so v ∈ {d+1, d+2, ..., d+m}
- v → 0: (0 - v) mod p = (p - v) ∈ S, so v ∈ {p-m, p-m+1, ..., p-1}

The reverse cycle 0 → v → d → 0 requires d → 0, i.e., (0-d) = p-d ∈ S. But p-d ≥ p-m = m+1 > m, so p-d ∉ S. Hence the reverse cycle is impossible when d ∈ {1,...,m}.

The feasible third vertices form the intersection:
    {d+1, ..., d+m} ∩ {p-m, ..., p-1} = {m+1, ..., d+m}

(using the fact that d ≤ m implies d+1 ≤ m+1, so max(d+1, m+1) = m+1; and d+m ≤ 2m = p-1).

The size of this set is (d+m) - (m+1) + 1 = d.

By the circulant symmetry d ↔ p-d (reflection), co_occ_3(p-d) = co_occ_3(d) = d.

Therefore co_occ_3(d) = min(d, p-d) for all d ∈ {1, ..., p-1}. ∎

## Contrast with Paley

For the Paley tournament (p ≡ 3 mod 4, S = QR_p), the co-occurrence is CONSTANT:

    co_occ_3(d) = (p+1)/4    for all d.

## Notes for the formalizer

(none yet)
