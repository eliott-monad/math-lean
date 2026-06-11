---
id: THM-429-signed-pairwise-floor-is-a-maxcut-LRC
source: 01-canon/theorems/THM-429-signed-pairwise-floor-is-a-maxcut-LRC.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-429
title: The signed pairwise LRC floor is a max-cut LRC — lower bounds 1/(2·r_min) (unconditional) and 1/(r_min+1) (LRC); positive for every fixed n, but below 1/n for n ≥ 6
status: PROVED (lower bounds elementary + LRC-conditional; computationally verified n≤8)
source: monad-explorer-2026-06-06-S3
depends_on:
  - THM-426    # sign patterns = cuts of K_{n-1}; Gstar(S)=max over cuts of M(relative-speed set)
related:
  - HYP-2293   # REFUTED: Gstar can be < 1/n (S2 example 3/19 — now seen to be a small-B artifact)
  - HYP-2296   # forward: the n-asymptotic of inf_S Gstar(S) (this theorem brackets it)
  - THM-420    # opus-S700 k-clock/shell-partner: the SAME LRC loneliness bound, one level down
  - THM-369    # n∤v ⇒ M_obs ≥ 1/n (the observer floor this theorem is compared against)
---

# THM-429 — the signed pairwise floor is a max-cut LRC

**Convention** (repo canon): `n` runners total, observer speed `0`, movers
`S = {v_1 < ⋯ < v_r}` distinct positive integers, `r = n−1`, `gcd(S)=1`, `‖x‖` = distance to
nearest integer.

By **THM-426** the signed pairwise gap depends on the sign pattern `ε∈{±1}^r` only through the
bipartition `(A,B)` of the movers, and
```
   Gstar(S) = max over bipartitions (A,B) of  M(W(A,B)),
   W(A,B)   = { |v_i−v_j| : i,j same side } ∪ { v_i+v_j : i,j across the cut },
   M(W)     = max_t min_{w∈W} ‖w t‖     (the LRC loneliness of the relative-speed set;
              only the DISTINCT values of W matter).
```
So `Gstar` is a **max over cuts of a Lonely-Runner loneliness** — an LRC quantity wrapped in a cut
optimisation. This theorem bounds it below by LRC itself.

Let `k(W)` = number of distinct (nonzero) values in `W`, and
```
   r_min(S) = min over bipartitions of k(W(A,B))     (the cut-minimised distinct-rel-speed count).
```
All elements of every `W` are positive (`v_i+v_j>0`; `|v_i−v_j|>0` since speeds distinct), and
`r_min(S) ≤ C(r,2) = C(n−1,2)` (any single cut already has at most `C(r,2)` pairs).

## Two loneliness lemmas

## Notes for the formalizer

(none yet)
