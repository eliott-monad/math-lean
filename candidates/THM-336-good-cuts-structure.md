---
id: THM-336-good-cuts-structure
source: 01-canon/theorems/THM-336-good-cuts-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-336
name: Good Cuts Structure Theorem
status: PROVED
session: opus-2026-05-27-S2
verified: computationally n=3..10 (exhaustive for n≤7 via brute force)
formalized: kind-pasteur-2026-05-29-S6 (`TournamentH7.GoodCuts`)
depends_on: THM-330
lean: 04-computation/lean/TournamentH7/TournamentH7/GoodCuts.lean
---

## Statement

In the tiling model on n vertices (tiles = non-consecutive arc pairs, base path n-1→...→0), call a cut k **good** if at least one tile crossing it is in the upward orientation. Let G(τ) denote the set of good cuts of tiling τ.

**Part 1 (Impossibility of 1 good cut):** No tiling has exactly |G(τ)| = 1. That is, G(τ) is never a singleton.

**Part 2 (Exact counts for small |G|):**
- |G|=0: exactly 1 tiling (all tiles downward = transitive tournament).
- |G|=1: 0 tilings (**impossible**).
- |G|=2: exactly n−2 tilings.
- |G|=3: exactly 5(n−3) tilings.
- |G|=4: exactly (n−4)(n+95)/2 tilings.
- |G|=n−1 (SC): exactly SC(n) tilings (the SC tiling count).

## Proof of Part 1

Any tile (x,y) satisfies x ≥ y+2 (non-consecutive). An upward tile (x,y) witnesses every cut k with y < k ≤ x. The number of such cuts is x − y ≥ 2. Hence any upward tile witnesses **at least 2** good cuts simultaneously. Therefore if G(τ) ≠ ∅, then |G(τ)| ≥ 2. □

**Lean formalization (kind-pasteur-2026-05-29-S6):** `04-computation/lean/TournamentH7/TournamentH7/GoodCuts.lean`
now proves the reusable axiom-free core in the concrete staircase tile model:

- `goodCuts_empty_iff_all_down`: bucket 0 is exactly the all-down tiling.
- `goodCuts_nonempty_iff_exists_upward_tile`: nonempty good-cut support iff
  at least one tile is upward.
- `goodCutCount_eq_zero_iff_all_down`: cardinality form of bucket 0.
- `goodCutCount_pos_iff_exists_upward_tile`: positive count iff some tile is
  upward.
- `goodCutCount_pos_iff_not_all_down`: positive count iff the tiling is not
  all-down.

## Notes for the formalizer

(none yet)
