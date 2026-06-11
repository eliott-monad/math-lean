---
id: THM-440-u22-unit-cocyclic-extension-reduction-and-moser-census
source: 01-canon/theorems/THM-440-u22-unit-cocyclic-extension-reduction-and-moser-census.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-440 — u(22)∈{60,61} reduces to a faithful unit-cocyclic extension of a near-densest 21-core; the δ=4 route is empty and the Moser ring caps at 60

**Status:** PROVED (the extension reduction, given Alexeev–Mixon–Parshall u(21)=57 & the proven
u(22)≤61) + VERIFIED (the Moser-ring census: δ=4 route empty, M_L caps at 60). Does **NOT** resolve
u(22) (an open problem); it sharpens the reduction and gives Moser-ring evidence for 60.
**Source:** opus-2026-06-07-S705. Builds on Alexeev–Mixon–Parshall (arXiv:2412.11914, u(16..21)=
41,43,46,50,54,57; 60≤u(22)≤61; densest graphs enumerated, #densest-21 = 5), Engel et al.
(arXiv:2406.15317, Moser ring, u(22)≥60), S614 (the deletion reduction), THM-432/HYP-2301 (M_L).

## The unit-cocyclic extension reduction (PROVED)

> Let `G` be a hypothetical 61-edge unit-distance graph on 22 vertices. `Σdeg = 122 < 132 = 6·22`,
> so `δ(G) ≤ 5`; deleting a min-degree vertex `v` leaves a UDG on 21 vertices with `61−δ ≤ u(21)=57`
> edges, so `δ ≥ 4`. Hence `δ∈{4,5}` and the 21-core `C=G−v` has **57** (δ=4) or **56** (δ=5) edges.
> The `δ` neighbours of `v` lie on a common **unit circle centred at `v` (circumradius exactly 1)** —
> a faithful **unit-cocyclic `δ`-set** (no other core vertex at distance 1 from `v`).
>
> **Therefore `u(22)=61` ⟺**
> - **(δ=4)** one of the **5 densest 21-vertex UDGs** admits a faithful 4-point unit-cocyclic
>   extension, **OR**
> - **(δ=5)** some **56-edge** 21-vertex UDG admits a faithful 5-point unit-cocyclic extension.
>
> Both are *finite* checks given the (enumerated) embeddings.

**Sharpening via the proven `u(22)≤61`.** A center `v` added to a 57-edge core can have at most **4**
core-neighbours (5 would give `U≥62 > u(22)`); added to a 56-edge core, at most **5**. So each route
is the single question "is the maximal extension degree attained?" — degree 4 on a 57-core, or 5 on a
56-core.

## The unit-cocyclic obstruction

> A degree-`d` extension vertex requires `d` core points **concyclic with circumradius exactly 1**.
> Since `U_count` (exact unit-distance count) equals the faithful edge count, **any 22-point subset
> of a carrier lattice with `U=61` proves `u(22)=61`**; conversely the routes above must be empty for
> `u(22)=60`.

## Moser-ring census (VERIFIED, this session)

In `M_L = ℤ[ζ₆]` extended by `w₃=(5+i√11)/6` (the biquadratic CM ring `ℚ(√−3,√−11)` carrying all
known dense small configs), exact arithmetic over `ℚ(√3,√11)` (no float decides adjacency):

## Notes for the formalizer

(none yet)
