---
id: THM-436-solvability-threshold-is-the-overlapping-triangle-threshold-C5
source: 01-canon/theorems/THM-436-solvability-threshold-is-the-overlapping-triangle-threshold-C5.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-436 — The quintic solvability threshold IS the two-overlapping-cyclic-triangles threshold, realized as the round tournament C₅; A_n-perfectness mirrors the LRC Vitali wall (no finite commutator/Bonferroni tower)

**Status:** PROVED (group theory — classical, recomputed exactly) + PROVED (combinatorial 5-point
threshold) + VERIFIED (tournament realization) + ESTABLISHED-ANALOGY (the monodromy/FTA dictionary
and the Vitali-wall mirror). The LRC *solvability stratification* it motivates is **CONJECTURE**
(HYP-2303), not proved here.
**Source:** opus-2026-06-07-S703, from the user's derived-series picture of the roots↔coefficients
monodromy. Builds on S699p/HYP-2282 (monodromy = Galois), S699l (FTA n↔n+1 duality), THM-403
(cyclotomic worry-set = round tournament), THM-406 (Vitali wall), THM-420/430 (witness hierarchy),
S699h (A₅ icosahedral unit-distance).

## The dictionary (S699l / S699p)

A monic degree-`n` polynomial has `n+1` coefficients (the "+1" = the leading/normalisation, or dually
the constant = the `z=0` root) and `n` roots. The map *coefficients ↦ roots* is a branched cover; a
loop in coefficient space around the **discriminant** (two roots colliding) lifts to a **swap of two
roots** — the monodromy, which equals the **Galois group**, generically `S_n`. Coefficients
(symmetric functions) are *fixed* by the deck action; the `n`-root **fiber** is permuted. Repo
dictionary: **`n` roots ↔ `n` runners ↔ `n` tournament vertices**; loop-swap ↔ Galois transposition ↔
arc/runner crossing (S699p).

## The theorem

> **(1) Derived-series threshold (classical; recomputed exact).** The largest `k` with
> `S_n^{(k)} ≠ 1` is
> ```
>    n=2: 0   n=3: 1   n=4: 2   (= n−2, solvable, derived length n−1)
>    n≥5: ∞   — the derived series STABILISES at A_n ≠ 1 (perfect), unsolvable.
> ```
> Verified orders: `S₂[2,1]`, `S₃[6,3,1]`, `S₄[24,12,4,1]`, `S₅[120,60,60]`, `S₆[720,360,360]`.
> This is the user's "quadratic↔swap, cubic↔single, quartic↔double, quintic↔triple-and-above
> commutator," and **Abel–Ruffini**: no radical formula for `n≥5`.
>
> **(2) The 5-point cause (PROVED).** `A_n` is perfect for `n≥5` because every 3-cycle is a commutator
> of two 3-cycles **sharing exactly one point**, and `3+3−1 = 5` points are required for two 3-subsets
> to meet in exactly one element. Verified: the number of such triangle-pairs is `0` for `n=3,4` and
> jumps to `15` at `n=5`; `⟨(123),(345)⟩ = A₅` (order 60), `[A₅,A₅]=A₅`, and `[(123),(345)] = (032)`
> exhibits a 3-cycle as a commutator. **The "5" of the quintic is the overlap number `3+3−1`.**
>
> **(3) Tournament realisation (VERIFIED).** A 3-cycle = a **cyclic triangle** of a tournament. The

## Notes for the formalizer

(none yet)
