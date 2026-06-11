---
id: THM-442-pfaffian-translator-IE-tiling-third-difference-and-maxH-minimal-pfaffian
source: 01-canon/theorems/THM-442-pfaffian-translator-IE-tiling-third-difference-and-maxH-minimal-pfaffian.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-442 — The IE tiling decomposition is the third finite difference (cell-affine recursion); H is multiplicative not additive; and the max-H tournament has minimal Pfaffian |Pf|=1

**Status:** PROVED (the IE third-difference identity; the additive/multiplicative dichotomy) +
VERIFIED (max-H = A038375 small n; `H²−Pf²=8Q`; max-H ⟹ `|Pf|=1` at n=4,6) + SYNTHESIS (the Pfaffian
translator). **CONJECTURE:** max-H ⟹ `|Pf|=1` for all even n (HYP-2312).
**Source:** opus-2026-06-07-S707, from the user's "Pfaffian-angle / 7-piece inclusion-exclusion tiling
/ recursive max-H (A038375)" prompt. Builds on THM-174 (Pf(S)²=det(I+2A)=det(S)), S531 (recursive
H-law, apex/modular), HYP-2283 (converse swaps H±Pf), S706/THM-441 (converse = adjoint), Rédei (H odd),
Szele/Alon (max-H bounds).

## (1) The user's 7-piece IE tiling decomposition = the third finite difference (PROVED)

The staircase `Δ_{n−2}` (the tournament tiling carrier, `C(n−1,2)` cells) decomposes as **3 sub-pieces
of size `n−1` (`A,B,C`) minus 3 of size `n−2` (`D,E,F`) plus 1 of size `n−3` (`G`)** — corners get one
piece, edges `A+B−D` (a 2-set union), the interior `A+B+C−D−E−F+G` (the inclusion–exclusion of 3
sets). This is exactly:
```
   C(n−1,2) = 3·C(n−2,2) − 3·C(n−3,2) + C(n−4,2)          (VERIFIED n=4..29)
```
i.e. the **third finite difference of the quadratic cell-count vanishes** (`Δ³` annihilates degree-2).
So `A,B,C` are the three size-`(n−1)` sub-staircases, `D,E,F` their pairwise overlaps (size `n−2`),
`G` the triple overlap (size `n−3`) — the simplicial IE of a triangle covered by three sub-triangles.

> **Corollary (which invariants the IE recursion computes).** Any tournament invariant that is
> **affine in the cells** (a sum over cells/arcs, degree ≤... matching) satisfies the 3-term recursion
> `F(n)=3F(n−1)−3F(n−2)+F(n−3)`. **H does NOT** — and neither does the max-cyclic-triangle count.

## (2) H is multiplicative (modular), not additive (IE) — the dichotomy (PROVED/VERIFIED)

The exact max-H sequence (A038375), `max_T H(T)`:
```
   n :   2  3  4  5  6   7
  max H: 1  3  5 15 45 189     (exact n≤6 brute force; 189 best-found n=7; Szele n!/2^{n−1} ≤ · ≤ Alon)
```
The IE recursion gives `3·m(n−1)−3·m(n−2)+m(n−3) = 7,33,95` for `n=5,6,7` — **not** `15,45,189`. So
**max-H is not cell-affine; the additive/IE tiling recursion does not compute it.** The *correct*
recursion for H is **multiplicative over the modular/apex tree** (S531): a single apex-flipped block of
size `s` has `H=1+2^{s−2}` (verified `3,5,9,17,33`), and **disjoint modules multiply**
(`H=∏ H(module)`, verified `3·3=9`), with nesting coupling toward the regular tournament.

## Notes for the formalizer

(none yet)
