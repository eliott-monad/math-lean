---
id: THM-285-beta2-proof-gap-closure
source: 01-canon/theorems/THM-285-beta2-proof-gap-closure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-285: Closure of the β₂=0 Proof Gap at n=4,5

**Status:** PROVED (algebraic, no computation needed)
**Filed by:** opus-2026-04-04-S1
**Depends on:** THM-108, THM-109
**Impact:** Removes the ONLY non-algebraic step in the β₂=0 proof

## Statement

THM-109's Case 2 (free cycles exist, worst-case n-5=0 good vertices) is **vacuous** at n ≤ 5. Specifically:

1. At n=4: No tournament has κ(T) ≥ 2. THM-109 is never invoked.
2. At n=5: Every tournament with κ(T) ≥ 2 has b₁(T) = 1 ≠ 0. THM-109's b₁=0 precondition fails.

Combined with the algebraic handling of n ≥ 6 (Lemma B gives n-5 ≥ 1 ≥ 1 good vertices), **the entire β₂=0 proof (THM-108) is fully algebraic** for all n.

## Proof of (1): No n=4 tournament has κ ≥ 2

**Claim:** For every tournament T on 4 vertices, κ(T) ≤ 1.

**Proof:** κ(T) ≥ 2 requires every single-vertex deletion T\v to be strongly connected. A tournament on 3 vertices is SC iff it is a directed 3-cycle. So every 3-element subset of V must form a 3-cycle. This requires c₃(T) = C(4,3) = 4. But c₃ = C(4,3) - Σ_{i} C(d_i, 2), so Σ C(d_i, 2) = 0, meaning all scores d_i ∈ {0,1}. But Σ d_i = C(4,2) = 6 while max Σ d_i with each d_i ≤ 1 is 4 < 6. **Contradiction.** ∎

## Proof of (2): At n=5, κ ≥ 2 implies b₁ = 1

**Claim:** If T is a tournament on 5 vertices with κ(T) ≥ 2, then every 3-cycle of T is free (non-dominated), and b₁(T) = 1.

**Proof (no dominator can exist):**

Let C = (a,b,c) be a 3-cycle in T. The external vertices are {d,e} = V \ {a,b,c}.

Suppose d dominates C from above: d→a, d→b, d→c.
Then in T\e (the deletion of the OTHER external vertex), vertex d still beats a, b, c. So score(d) in T\e equals 3 = n-2 (the maximum). Vertex d is a **source** in T\e. But a tournament with a source is not strongly connected (no arc enters the source). This contradicts κ(T) ≥ 2, which requires T\e to be SC.

Suppose d dominates C from below: a→d, b→d, c→d.
Then in T\e, score(d) = 0 (the minimum). Vertex d is a **sink** in T\e. A tournament with a sink is not SC (no arc leaves the sink). Same contradiction.

The identical argument applies with d and e swapped. **Therefore no 3-cycle of T has any dominator.** All 3-cycles are free.

**Consequence for b₁:** T is SC (since κ ≥ 2 ≥ 1) and has n=5 vertices, so it has at least one 3-cycle (every SC tournament on ≥3 vertices has a 3-cycle). Since all cycles are free, the free-cycle component is non-empty, giving b₁(T) ≥ 1. Combined with b₁ ≤ 1 (THM-107), we get b₁(T) = 1. ∎

## Notes for the formalizer

(none yet)
