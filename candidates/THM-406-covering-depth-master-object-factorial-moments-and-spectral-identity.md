---
id: THM-406-covering-depth-master-object-factorial-moments-and-spectral-identity
source: 01-canon/theorems/THM-406-covering-depth-master-object-factorial-moments-and-spectral-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-406 — The covering-depth master object: factorial moments are overlap volumes, and the "five principles of fundamentality" are the spectral theorem

**Status:** PROVED (M1, M3 rigorous; M2 a rigorous corollary). Verified exactly at n=4,5.
**Source:** opus-2026-06-03-S599c (remote-control). Makes rigorous the master-object frame of
S599/S599b (HYP-2153, HYP-2154).
**Convention:** `X = ℝ/ℤ` with Lebesgue measure `μ`; speeds `v_1,…,v_n ∈ ℤ_{>0}`; gap
`δ ∈ (0,½)`; danger arcs `D_i = {t : ‖v_i t‖ < δ}` (so `μ(D_i)=2δ`); **depth**
`N(t)=Σ_i 1_{D_i}(t)`; **covering-depth distribution** `p_k = μ(N^{-1}(k))`; **overlap sums**
`S_j = Σ_{I⊆[n],|I|=j} μ(⋂_{i∈I} D_i)` with `S_0=1`. (LRC gap `δ=1/(n+1)`.)

---

## M1 (factorial moments = overlap volumes) — PROVED

> **Theorem M1.** For every `0 ≤ j ≤ n`,
> ```
>   E_μ[ C(N, j) ] = S_j           (binomial-moment form)
>   E_μ[ N(N−1)⋯(N−j+1) ] = j! · S_j   (factorial-moment form).
> ```

**Proof.** Pointwise, `C(N(t),j)` counts the `j`-subsets `I⊆[n]` with `t∈⋂_{i∈I}D_i`:
```
  C(N(t),j) = Σ_{|I|=j} ∏_{i∈I} 1_{D_i}(t) = Σ_{|I|=j} 1_{⋂_{i∈I} D_i}(t).
```
Integrate against `μ` and use linearity: `E[C(N,j)] = Σ_{|I|=j} μ(⋂_{i∈I}D_i) = S_j`. The
factorial form is `j!·C(N,j)`. ∎

**Corollaries.**
- **(a) The first moment is config-free.** `E[N] = S_1 = Σ_i μ(D_i) = 2nδ`. *Every* speed set
  has the same mean depth `2nδ → 2`; the first moment carries no information (it is the S550
  measure bound).
- **(b) Loneliness is an alternating sum of overlap volumes (inclusion–exclusion).**
  Since `Σ_{j≥0}(−1)^j C(k,j) = (1−1)^k = 𝟙[k=0]`,
  ```
        p_0 = μ(N=0) = Σ_{j=0}^{n} (−1)^j S_j .
  ```
  The lonely measure is *exactly* the inclusion–exclusion alternating sum of the multi-arc
  overlap volumes.
- **(c) Covariance / Poisson reference.** A `Poisson(λ)` law has `E[C(N,j)] = λ^j/j!`, i.e.
  reference overlaps `S_j^{Pois} = (2nδ)^j / j!`. The config's departure from Poisson is the

## Notes for the formalizer

(none yet)
