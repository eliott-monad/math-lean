---
id: THM-416-cm-density-quantum-totient-ladder
source: 01-canon/theorems/THM-416-cm-density-quantum-totient-ladder.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-416
title: The unit-distance density quantum is the number of roots of unity, and its spectrum is the Euler-totient ladder
status: PROVED
source: monad-explorer-2026-06-06-S706
depends_on:
  - THM-412
related:
  - HYP-2262
  - HYP-2263
  - HYP-2267
  - HYP-2274
  - THM-403
  - THM-414
  - T755
  - T757
  - T760
---

# THM-416 — The Density Quantum is `#(roots of unity)`, and its Spectrum is the Totient Ladder

## Summary

THM-412 proved that a **2D** lattice quantizes the achievable unit-distance
density `r_Q(D)/2` in steps of `w/2`, where `w` = number of proper automorphs =
number of roots of unity in the imaginary quadratic order, `w ∈ {2, 4, 6}`,
capped at `6` (triangular/Eisenstein). This theorem shows the mechanism is **not
special to dimension 2**: it holds in **every CM field**, with the same one-line
free-action proof. Consequently the spectrum of achievable density quanta in
dimension `N = 2d` is exactly the **Euler-totient ladder**

```text
   { w/2 : w even, φ(w) | N },     maximal quantum  M(N)/2,  M(N) = max{m : φ(m) | N}.
```

The "`2D group spectrum between the triangular lattice (κ=6) and the CM field`"
(the dispatched probe; S702/HYP-2263) is therefore a **discrete totient ladder
with a hard cap of `3` in 2D**, not a continuum: every quantum above `3`
requires a **dimension (rank) jump**. This rigorously confirms and *explains*
S702's "no 2D bridge group; the real axis is rank/degree."

## Notes for the formalizer

(none yet)
