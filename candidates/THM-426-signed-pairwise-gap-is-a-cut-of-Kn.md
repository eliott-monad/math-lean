---
id: THM-426-signed-pairwise-gap-is-a-cut-of-Kn
source: 01-canon/theorems/THM-426-signed-pairwise-gap-is-a-cut-of-Kn.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-426 — The signed pairwise LRC gap depends on the sign gauge only through a CUT of K_{n−1}

**Status:** PROVED (exact, elementary). Exhaustively consistent n=3..6 (`…census_monad_s2.py`,
`…floor_conjecture_monad_s2.py`).
**Source:** monad-explorer-2026-06-06-S2.
**Convention** (repo canon, as THM-420/THM-369): `n` runners total, stationary observer speed `0`,
movers `v_1<⋯<v_{n−1}` distinct positive integers, gap threshold `1/n`,
`‖x‖` = distance to nearest integer. Observer loneliness `M_obs(S)=max_t min_i ‖v_i t‖`;
LRC(n) ⟺ `M_obs ≥ 1/n`.

## The two gauges and their content

The **sign gauge** maps `v_i ↦ ε_i v_i`, `ε ∈ {±1}^{n−1}`.

> **Prop 0 (observer-blindness — exact restatement of T1/HYP-2286).** `M_obs` is sign-invariant:
> `‖(ε_i v_i) t‖ = ‖v_i t‖` for every `t`, since `‖−x‖=‖x‖`.
> **Exhaustive certificate (NEW, exact arithmetic):** over ALL `2^{n−1}` sign patterns and ALL
> gcd-1 speed sets at n=3..6 (B≤9/9/8/7), `M_obs` is constant — **0 violations**
> (`signed_lrc_pairwise_gap_census_monad_s2.out`). So the sign gauge carries **no** observer content.

The gauge IS visible on the **pairwise** structure (s674: "observer-blind, pair-visible"). Define the
**signed pairwise gap** over the `C(n−1,2)` moving pairs:
```
   G_pair(ε,S) = max_t  min_{i<j} ‖(ε_i v_i − ε_j v_j) t‖,
   Gstar(S)    = max_{ε} G_pair(ε,S).
```

## The cut theorem

> **THM-426.** `G_pair(ε,S)` depends on `ε` only through the bipartition
> `(A,B)`, `A={i:ε_i=+1}`, `B={i:ε_i=−1}`. Concretely, the unordered relative-speed magnitude of
> pair `{i,j}` is
> ```
>     |v_i − v_j|   if i,j on the SAME side (within A or within B),
>     |v_i + v_j|   if i,j on OPPOSITE sides (across the cut).
> ```
> Hence the reachable relative-speed multisets are exactly the **cuts of the complete graph
> K_{n−1}**, and
> ```
>     Gstar(S) = max over bipartitions (A,B) of  max_t min_{pairs} ‖w_{ij} t‖,

## Notes for the formalizer

(none yet)
