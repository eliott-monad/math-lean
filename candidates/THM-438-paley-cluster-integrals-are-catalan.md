---
id: THM-438-paley-cluster-integrals-are-catalan
source: 01-canon/theorems/THM-438-paley-cluster-integrals-are-catalan.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-438
name: the-Paley-cluster-integrals-are-Catalan-numbers-and-R(p)-to-e-is-proven
status: PROVED (R(p)->e: uniform proof, single Weil bound) + VERIFIED (Catalan leading coefficient, k<=4)
date: 2026-06-07
session: monad-explorer-2026-06-07 (deep-research / analytic lane)
depends_on:
  - HYP-2307   # the cherry cluster expansion R(p)=exp(sum a_L); a_2=1, a_odd=0; a_4=a_6=0 verified
  - MISTAKE-011b  # Paley tournament needs p=3 mod 4 (chi(-1)=-1) -- the source of the + cherry weight
relates_to:
  - OPEN-Q-013   # the ratio line H(T_p)*2^{p-1}/p! and "its approach to e"
  - HYP-2306     # the 1729 spine severed: H/|Aut| has no modular structure (analytic axis is the real one)
  - THM-052      # palindromic N / circulant tournaments (the universality class of the limit)
---

# THM-438: the Paley cluster integrals are Catalan numbers; `R(p) → e` is PROVEN

## Context

For the Paley tournament `T_p` (`p ≡ 3 mod 4`), `H(T_p)` = #directed Hamiltonian
paths, and the normalized ratio is

```
R(p) := H(T_p) · 2^{p−1} / p!   =   E_σ[ ∏_{k=1}^{p−1} (1 + χ(d_k)) ],
```

the Paley maximizer's multiplicative edge over a coin-flip tournament (`p!/2^{p−1}`
is `E[H]` for a random tournament). HYP-2307 expanded `R(p)` into single-run cluster
integrals and showed `R(p) → exp(Σ_{L≥2} a_L)` with the **cherry** (`L=2`) the only
expected survivor, but left the limit PROVEN only modulo "`a_{2k}=0` for all `k≥2`"
(verified `k=2,3` by hand decomposition + Weil). This theorem (i) closes that gap with
a **uniform** argument and (ii) determines the **exact leading order** of every
cluster integral — they are the **Catalan numbers**.

## Definitions

The single-run cluster integral (a complete multiplicative-character sum over `F_p`):

```
A_L  :=  Σ_{x_0, x_1, …, x_L ∈ F_p, ALL DISTINCT}  ∏_{i=0}^{L−1} χ(x_{i+1} − x_i),

## Notes for the formalizer

(none yet)
