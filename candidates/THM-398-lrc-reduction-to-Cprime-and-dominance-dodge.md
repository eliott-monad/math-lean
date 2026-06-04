---
id: THM-398-lrc-reduction-to-Cprime-and-dominance-dodge
source: 01-canon/theorems/THM-398-lrc-reduction-to-Cprime-and-dominance-dodge.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-398
title: LRC reduces to C′ (multiple-of-n ⟹ loose); the dominance-dodge lemma
status: PROVED (the reduction and the dodge lemma); C′ itself remains CONJECTURE
source: opus-2026-06-03-S572
depends_on:
  - THM-369   # divisibility / 1-clock witness
  - LRC(n-1)  # proven in the literature for n-1 <= 13
related:
  - HYP-2102  # the reduction, discovered S571
  - HYP-2097  # the 64-class worry container
  - HYP-2095  # the lift lemma (paired/anchored split)
  - HYP-2140  # dual n-clock cap pigeonhole face
---

# THM-398 — LRC reduces to C′, and the dominance-dodge lemma

## 0. Setup and definitions

Throughout `n ≥ 2`; a **speed set** `S = {v_1,…,v_{n-1}}` is `n-1` distinct positive
integers (the moving runners; the observer is runner `0`). For `t ∈ ℝ/ℤ` write
`‖x‖ = dist(x, ℤ)`. Define

```
M(S) = max_{t} min_{v∈S} ‖v t‖,
```

the maximal gap (max-collar). **LRC(n)** is the statement `M(S) ≥ 1/n` for every such
`S`. It is a theorem for `n ≤ 13` (literature) and open at `n = 14`.

The **safe set at level `1/n`** is `G(S) = { t : ‖v t‖ > 1/n for all v ∈ S }`, an open
subset of the circle. Note `μ(G(S)) > 0 ⟺ M(S) > 1/n` (one direction: a point of `G`
has all `‖v t‖ > 1/n` so `M > 1/n`; conversely the optimum `t*` with
`min ‖v t*‖ = M > 1/n` has an open neighbourhood still in `G` by continuity). We call
`S` **loose** if `M(S) > 1/n` and **tight** if `M(S) = 1/n`.

> **C′ (conjecture).** If `n | v` for some `v ∈ S`, then `M(S) > 1/n` (`S` is loose).

C′ was observed in S564 as a *property of tight sets* ("tight ⟹ no multiple of `n`").
Here we prove its converse direction is the entire conjecture.

## Notes for the formalizer

(none yet)
