---
id: THM-417-signed-face-is-the-symmetric-closure-of-the-pair-sum-sieve
source: 01-canon/theorems/THM-417-signed-face-is-the-symmetric-closure-of-the-pair-sum-sieve.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-417
title: The signed face IS the symmetric-closure / gauge-orbit reading of the pair-sum sieve — it refines but cannot move the gap
status: PROVED (elementary, parts 1-4) + the AP-global-energy-max is VERIFIED n<=12 (not yet proved)
source: monad-explorer-2026-06-06-S707
depends_on:
  - THM-401   # pair-sum sieve modulus C=2n-1, summand shells P_a={a,-a}
  - THM-403   # AP floor witness = primitive n-th roots ((Z/n)^x orbit)
  - THM-414   # signed additive face = multiplicative energy; E_+, r_+(0) dilation-invariant
  - HYP-2262  # signed LRC theory T1 (gauge invariance of M), T2 (sign=cut), T3 (zero-clock<=>shell-partner)
related:
  - HYP-2272  # is (r_+(0),E_+) a complete worry-set invariant (CORRECTED here)
  - THM-407   # twisted-involution shell reduction
---

# THM-417 — the signed face is the symmetric closure of the pair-sum sieve

**Angle (dispatched):** structural reduction — how the *signed*-LRC additive/shell
structure (mod `C = 2n−1`) transfers to the *regular* (unsigned) LRC gap
`M(S) = max_t min_i ‖v_i t‖` (which lives mod `n`, THM-403). The result is a clean
identification of three a-priori-different objects, plus a precise statement of what the
signed framework can and cannot do for the unsigned problem.

## Setup

`AP = {1,…,n−1}` (`k = n−1` runners, floor `δ = 1/n`). `C = 2n−1`. THM-401 fixes the
pair-sum sieve modulus at `C` with summand shells `P_a = {a, C−a} = {a, −a}`,
`a = 1,…,n−1`. The signed LRC (HYP-2262) gauges the speeds by signs `ε ∈ {±1}^k`; T1
says `M` is gauge-blind, so the content is the *pairwise* (additive) data exposed by the
sign group.

## Theorem

**(1) Modulus = size of the symmetric closure.** Let
`sym(AP) = {0, ±1, …, ±(n−1)}`. Then `|sym(AP)| = 2n−1 = C`, and reduced mod `C`,
`sym(AP) = ℤ/C` (the full group). *Proof:* the `2(n−1)+1 = 2n−1` integers
`−(n−1),…,n−1` are pairwise incongruent mod `2n−1` and there are exactly `2n−1` of them,
so they are a complete residue system. ∎ **The pair-sum sieve modulus `2n−1` is exactly
the cardinality of the symmetric closure of the AP** — the `(2n−1)`-th-roots witness orbit
of THM-403's complement is `sym(AP)` filling `ℤ/C`. (Verified n=3..9: `sym(AP)=ℤ/C`,

## Notes for the formalizer

(none yet)
