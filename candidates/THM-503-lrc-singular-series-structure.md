---
id: THM-503-lrc-singular-series-structure
source: 01-canon/theorems/THM-503-lrc-singular-series-structure.md
source_commit: 8058679
status: open
---

## Informal statement

---
id: THM-503
title: Structure of the LRC(14) singular series — the 7-vanishing, pairwise absolute convergence, the almost-Sidon loose-class, and L is a singular INTEGRAL (no Euler product)
status: PARTIAL/PROVED-in-scope — (1)(2)(3) proved with explicit constants; (4) is a rigorous structural reframe (β_p = L for all p) that corrects HYP-2503; the full inf L>0 (C'(14)) remains open
source: mac-mini-2026-06-14-S1
depends_on:
  - THM-501   # the LRC singular series L(S) and its additive-character expansion
  - THM-398   # C' reduction; D(q,S)>0 <=> loose
related:
  - HYP-2503  # CORRECTED here: L is NOT a nontrivial Euler product
  - HYP-2489  # L = circle-method singular object (made precise: singular INTEGRAL)
  - THM-446   # the additive-relation / Sidon ladder controlling L
---

# THM-503 — the structure of the LRC singular series L(S)

Builds on THM-501: `L(S) = (6/7)^13 + Σ_{exact relations Σ_{v∈T} t_v v = 0, t_v≠0}
(6/7)^{13−|T|} (−1)^{|T|} ∏_{v∈T} s(t_v)`, `s(t) = sin(πt/7)/(πt)`. Four results,
each adversarially re-verified with fresh code.

## (1) The 7-vanishing (PROVED)

For integer `t ≠ 0`: **`s(t) = 0 ⟺ 7 | t`** (since `sin(πt/7) = 0 ⟺ 7 | t`, and
`πt ≠ 0`). Hence any relation term containing a coefficient `t_v ∈ 7ℤ` is killed, and

> **`L(S)` is a sum over only the 7-PRIMITIVE exact relations** — those whose every
> coefficient is coprime to 7.

The apex prime of `14 = 2·7` literally gates the correction series. Sign structure
(period 14): `sign s(t) = sign sin(πt/7)`, **positive on `t mod 14 ∈ {1..6}`, zero at
`{0,7}`, negative on `{8..13}`**. Also `|s(t)| ≤ 1/(π|t|)`.

## (2) Pairwise absolute convergence with explicit bound (PROVED)

For a pair `{v_a, v_b}`, `g = gcd(v_a,v_b)`, the `|T|=2` relations form the rank-1
lattice `(t_a,t_b) = k(v_b,−v_a)/g`. The pair's total contribution to `L` is
`(6/7)^{11} P(a,b)`, `P(a,b) = Σ_{k≠0} s(kv_b/g)s(−kv_a/g) = 2Σ_{k≥1} s(ka')s(kb')`
with `a'=v_b/g, b'=v_a/g` coprime. By (1)'s bound,

> **`|P(a,b)| ≤ g²/(3 v_a v_b)`** (absolutely convergent; `= 0` if `7 | a'` or `7 | b'`).

## Notes for the formalizer

(none yet)
