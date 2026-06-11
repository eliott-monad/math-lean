---
id: THM-439-the-witness-tower-is-the-cyclotomic-tower-depth-is-the-wall
source: 01-canon/theorems/THM-439-the-witness-tower-is-the-cyclotomic-tower-depth-is-the-wall.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-439 — The LRC witness tower is the cyclotomic (abelian) tower automatically; its substance is the cyclotomic DEPTH q*(S), and the Abel–Ruffini analog is the Bonferroni tower, not the field tower

**Status:** PROVED (rationality ⟹ witness tower ⊆ ℚ^ab; the depth definition) + VERIFIED (depth
stratification + the per-config-finite / uniformly-unbounded dichotomy, n=5,6,7,8 in-window) +
HONEST DEFLATION of part of HYP-2303. Sharpens HYP-2303/THM-436 into a precise statement.
**Source:** opus-2026-06-07-S704 (developing the radical tower ↔ witness tower, user request). Builds
on THM-420/430 (witness hierarchy), THM-403 (cyclotomic worry-set), THM-406 (Vitali wall / no finite
Bonferroni), THM-436/HYP-2303 (the Galois solvability lens), S700 (residual R(n)), Kronecker–Weber.

## (A) The witness tower is cyclotomic — automatically (PROVED)

> For integer speeds, `M(S)=max_t min_i ‖v_i t‖` is the maximum of a continuous **piecewise-linear**
> function whose breakpoints (`j/v_i`, `j/(2v_i)`) and tent-crossings (`j/(v_i±v_j)`) are all
> **rational**. Hence the optimal witness `t*` is **rational**, every runner position `v_i t*` is a
> **root of unity** `ζ_q^{v_i m}` (`t*=m/q`), and the entire witness apparatus lies in
> `ℚ(ζ_q) ⊆ ℚ^{ab}`, with `Gal(ℚ(ζ_q)/ℚ)=(ℤ/q)^×` **abelian**.

> **Consequence (honest deflation of HYP-2303).** There is **no non-abelian witness obstruction**: the
> field/Galois "solvable tower" is *trivially* solvable because `t*∈ℚ` always. By Kronecker–Weber the
> witness tower is *exactly* the abelian (= cyclotomic) part — but that reach is automatic, not a
> theorem about LRC difficulty. The "unsolvable-quintic" analogy is therefore **not** at the
> field-of-the-witness level (always abelian); it lives one level up (D).

## (B) The substance: the cyclotomic DEPTH q*(S) (VERIFIED)

> Define the **cyclotomic depth** `q*(S) = min{ q≥2 : max_m min_i ‖v_i m/q‖ ≥ 1/n }` — the smallest
> cyclotomic modulus whose ticks already clear the floor `1/n`. The witness hierarchy (THM-420/430) is
> the **magnitude stratification** of `q*`:
> `clock (q*≤n) ⊂ sub-shell (n<q*<2n−1) ⊂ shell (q*=2n−1) ⊂ super-shell (q*>2n−1)`.
> Verified depth distribution (gcd-1 configs):
> ```
>   n=5 (B≤16): clock 1185 | sub-shell 338 | shell 159 | super-shell 63    max q*=17
>   n=6 (B≤13): clock  888 | sub-shell 280 | shell  78 | super-shell 35    max q*=17
>   n=7 (B≤11): clock  401 | sub-shell  43 | shell  18 |  —                max q*=13
>   n=8 (B≤10): clock   90 | sub-shell  30 |  —        |  —                max q*=14
> ```
> **The S700 residual `R(n)` (divisibility-complete ∧ shell-free) NEVER lands at the clock level** —
> it is entirely sub-shell/shell/super-shell (n=5: 138/46/47; n=6: 54/8/14). So `R(n)` is exactly the
> *positive-depth* core: the configs the cyclotomic floor (`q*≤n`) cannot certify.

## Notes for the formalizer

(none yet)
