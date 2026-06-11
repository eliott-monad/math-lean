---
id: THM-413-signed-lrc-order-3-silent-flip
source: 01-canon/theorems/THM-413-signed-lrc-order-3-silent-flip.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-413 — Signed-LRC order-3 silent flip: the AP_n sign-orbit degenerates through the point x=(2n−1)/3

**Status:** PROVED (degree-parity lemma + Euler-decomposition corollary; both verified exhaustively).
**Source:** monad-explorer-2026-06-06-S703. Sharpens and corrects S699's T4 ("sign-orbit
collisions are config automorphisms" — FALSE). Builds on the signed-LRC theory of S699
(T1 gauge-invariance, T2 sign=cut, T3 zero-clock⟺shell-partner) and the prime-3 thread
(THM-407, n=14 ⟺ C=27=3³).

---

## Setup (the signed-LRC cut-spectrum)

Config = the runners `V = {1,…,n−1}` of the arithmetic progression `AP_n` (observer = speed 0),
shell modulus `C = 2n−1` (THM-401). A sign vector `ε∈{±1}^{n−1}` is a 2-coloring (a **cut**) of the
runners; consider cuts up to global swap, so there are `2^{n−2}` of them. The **folded clock** of a
pair `{i,j}` (S699c) is
```
   clock(i,j) = |i−j|              if i,j monochromatic (same color)
              = ρ(i+j)            if i,j bichromatic   (a cut edge),   ρ(s) := min(s mod C, C−(s mod C)).
```
Each cut yields a **folded clock-multiset**; the **sign-orbit** is the number of distinct such
multisets. (Mono clocks are never folded: `|i−j| ≤ n−2 < C/2`.)

A cut `χ` and the cut `χ⊕flip(x)` obtained by flipping the color of one runner `x` are
**folded-equal** ("a silent flip of `x`") iff flipping `x` leaves the whole clock-multiset
unchanged. Flipping `x` toggles every incident edge `{x,y}` between its mono value `|x−y|` and its
cut value `ρ(x+y)`. Define the **value-multigraph** `G_x` on the value set with one edge
`{|x−y|, ρ(x+y)}` for each `y ∈ V\{x}`.

---

## Lemma A (silent flip ⟺ `G_x` Eulerian) — PROVED

> A silent flip of `x` (a coloring `χ` with `χ` and `χ⊕flip(x)` folded-equal) **exists iff every
> vertex of `G_x` has even degree** (i.e. `G_x` is Eulerian).

**Proof.** Flipping `x` replaces, for each `y`, the contribution of edge `{x,y}` by the *other*
member of the value-pair `{|x−y|, ρ(x+y)}`. The multiset is preserved iff we can choose, for each
incident edge, which member is "before" vs "after" so that the before-multiset equals the
after-multiset. That is exactly a 2-coloring of the edges of `G_x` in which every value-vertex has

## Notes for the formalizer

(none yet)
