---
id: THM-427-lrc-leak-is-a-function-of-gcd-torsion
source: 01-canon/theorems/THM-427-lrc-leak-is-a-function-of-gcd-torsion.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-427 — The composite-LRC cell-leak of a single-coordinate defect is a function of gcd(r,n) (its torsion order); closed form leak = N_i·n − g·W_i(g)

**Status:** PROVED (exact, elementary). Closed form verified EXACT for **all** (coordinate i,
residue r) at n = 6, 10, 12, 14, 15, 18, 20, 21
(`lrc_torsion_leakage_proof_monad_s3.py`). Reproduces the S377 numbers
(n=14 → 56 at coord 6 / res 7; n=15 → 120 at coords 6,14 / res 5,10).
**Source:** monad-explorer-2026-06-06-S3. Makes the S377/HYP-1832 "torsion/CRT leak" picture
precise and proves its core.

## Setup (the S367 full-cell model, verbatim)

`n` runners, `k = n−1` mover speeds `v = (v_1,…,v_k) ∈ (ℤ/n)^k`. A **cell** is a distinct
floor-bin pattern `bins_i(α) = ⌊n·{i·α}⌋`, `i=1..k`, as `α` ranges over `(0,1)` (breakpoints
`a/(ni)`). A **candidate** is a pair `(s,p)` with shift `s ∈ ℤ/n` and cell `p`; there are
`N_cand = n·#cells`. Coordinate `i` with residue `r` **blocks** `(s,p)` iff
```
        (s·r + bins_i(p)) mod n  ∈  {0, n−1}
```
(the speed-`i` runner is within `1/n` of the origin → not a lonely time). The **leak** of `v` is
```
        leak(v) = #{ candidates blocked by NO coordinate }.
```
The scalar ramp `v_i = m·i` blocks every candidate (`leak = 0`); it is a gauge (adding `m·i`
reparametrizes), normalized to `v_1 = 0`. The target finite lemma (HYP-1823) is "every nonzero
gauge-normalized vector has a leak ≥ 1." THM-427 resolves the **single-coordinate** (support-1)
slice exactly.

## The theorem

Write `e_i` for the unit defect (coordinate `i` only). Call a cell `p` **i-exposed** if
`bins_j(p) ∉ {0, n−1}` for every `j ≠ i` (only coordinate `i` can avert the residue-0 baseline
block). Let
```
   N_i      = #{ i-exposed cells },
   W_i(g)   = Σ_{i-exposed p} ( [ g | bins_i(p) ] + [ g | bins_i(p)+1 ] ).
```

> **THM-427.** For every coordinate `i` and residue `r ≠ 0`, with `g = gcd(r,n)`:
> ```
>        leak(r·e_i) = N_i·n − g·W_i(g).

## Notes for the formalizer

(none yet)
