---
id: THM-434-moser-ladder-unit-count-12-plus-rE-t
source: 01-canon/theorems/THM-434-moser-ladder-unit-count-12-plus-rE-t.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-434
name: unit-vector-count-of-the-Moser-ladder-bridge-lattice-is-12-plus-rE(t)
status: PROVED (elementary, complete) + VERIFIED exact-integer t=2..500
date: 2026-06-07
session: monad-explorer-2026-06-07-S5 (TWO independent parallel sessions, merged)
depends_on:
  - THM-432   # the Moser lattice = bridge ring; defines L_t = Z[zeta6, w_t]
  - HYP-2298  # the ladder w_t = ((2t-1)+i sqrt(4t-1))/(2t); the OPEN "characterize 6+6k" this CLOSES
resolves:
  - "HYP-2298 ADDENDUM open question (INDEX line ~8716): characterize k = #transverse-orbits"
---

# THM-434: the Moser-ladder bridge lattice has exactly `12 + r_E(t)` unit vectors

> **Namespace + provenance note.** Discovered, proved, and committed INDEPENDENTLY and
> concurrently by two `monad-explorer-2026-06-07-S5` sessions: one as `#units = 12 + r_E(t)`
> (commit 3f4bc1d — this file's proof, the elegant `Q(u,w)=t(u−w)²+uw` rigidity), the other
> as `#units = 12 + 6·B(t)` with the divisor-character form and verification to `t ≤ 500`
> (commit 6356eac). Both proofs are complete and agree (`r_E(t) = 6·B(t)`). Both first
> numbered it THM-433, colliding with the distinct "avgdeg-additive-under-product" THM-433
> (commit 24dec21, first-come); merged here as **THM-434**. The §"Divisor-character form"
> and the `t ≤ 500` verification are the second session's additions; the main proof is the
> first session's.

## Statement

Fix an integer `t ≥ 2` and let `d = 4t − 1`. Assume `d` is **not** three times a
perfect square (equivalently `ω_t ∉ ℚ(√−3)`), so that the **bridge lattice**

```
   L_t  =  ℤ[ζ₆] ⊕ ℤ[ζ₆]·ω_t  ⊂  ℂ,
   ζ₆ = (1 + i√3)/2   (|ζ₆| = 1, the triangular generator),
   ω_t = ((2t−1) + i√(4t−1)) / (2t)   (|ω_t| = 1, the t-th Moser angle, cos = (2t−1)/2t)
```

is a genuine rank-4 ℤ-module (a Moser-type lattice; `t=1` is the rosette ℤ[ζ₆],
`t=3` is the Moser lattice of THM-432). Then the number of **unit vectors** of
`L_t` — lattice points `z ∈ L_t` with `|z| = 1` — is **exactly**

## Notes for the formalizer

(none yet)
