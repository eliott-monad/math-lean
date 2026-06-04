---
id: THM-142-disjointness-excess
source: 01-canon/theorems/THM-142-disjointness-excess.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-142: 3-Cycle Disjointness Excess Formula

**Status:** PROVED
**Author:** kind-pasteur-2026-03-12-S59
**Date:** 2026-03-12

## Statement

For primes p ≡ 3 (mod 4), the number of vertex-disjoint 3-3 cycle pairs satisfies:

    disjoint_3(Interval) - disjoint_3(Paley) = p(p-1)(p+1)(p-3) / 192

This quantity is always positive for p ≥ 5 and grows as Θ(p⁴).

## Proof

Both Interval and Paley are regular tournaments on Z_p with score m = (p-1)/2, so both have exactly c₃ = p(p²-1)/24 three-cycle vertex sets (standard formula for regular tournaments).

By circulant symmetry, every vertex v belongs to n_v = 3c₃/p = (p²-1)/8 three-cycle vertex sets.

**Key identity (inclusion-exclusion):**

    disjoint_pairs = C(c₃, 2) - Σ_v C(n_v, 2) + #{overlap ≥ 2 pairs}

The first two terms are IDENTICAL for Paley and Interval (same c₃, same n_v by regularity). Therefore:

    Δ_disjoint = #{ov≥2}_Interval - #{ov≥2}_Paley

**Computing #{ov≥2} (pairs sharing ≥ 2 vertices):**

For a circulant tournament, #{ov=2} = Σ_{d=1}^{m} p · C(co_occ_3(d), 2), where the sum is over distinct gap values.

For **Paley** (co_occ = c = (p+1)/4 constant):
    #{ov=2}_P = m · p · C(c, 2) = m · p · c(c-1)/2

For **Interval** (co_occ(d) = d by THM-141):
    #{ov=2}_I = p · Σ_{d=1}^{m} C(d, 2) = p · Σ_{d=1}^{m} d(d-1)/2 = p · m(m+1)(m-1)/6

**Computing the excess:**

## Notes for the formalizer

(none yet)
