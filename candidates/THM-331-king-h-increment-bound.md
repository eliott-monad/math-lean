---
id: THM-331-king-h-increment-bound
source: 01-canon/theorems/THM-331-king-h-increment-bound.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-331
name: King H-Increment Lower Bound
status: PROVED
session: opus-2026-05-27-S1
verified: exhaustively n=3..6 (0 violations)
depends_on: THM-070 (Claim A), THM-019 (King theorem / max-degree reachability)
---

## Statement

Let T be a tournament on n ≥ 3 vertices. Let Q be any vertex with **maximum outdegree** d⁺(Q). Define:
- **Court**: N⁺(Q) = {a : Q → a}, |Court| = d⁺(Q)
- **Rivals**: N⁻(Q) = {b : b → Q}, |Rivals| = n − 1 − d⁺(Q)

Then:

**H(T) − H(T−Q) ≥ 2 · |N⁻(Q)|**

with H(T−Q) = number of Hamiltonian paths in the tournament T with vertex Q removed.

## Proof

By Claim A (proved, THM-070; Grinberg-Stanley):
$$H(T) - H(T-Q) = 2 \sum_{C \ni Q,\, C \text{ odd}} \mu(C) \geq 2 \cdot \#\{\text{directed odd cycles through } Q\}$$

since each μ(C) ≥ 1. It therefore suffices to show that the number of directed odd cycles through Q is at least |N⁻(Q)|.

**The King theorem step.** Q has maximum outdegree, so Q is a king: every vertex is reachable from Q in ≤ 2 steps (classical result, see e.g. Moon 1966). In particular, for every rival b ∈ N⁻(Q) (b beats Q), since b is not in N⁺(Q), it must be reachable via some court member a: Q → a → b. This gives a directed **3-cycle Q → a → b → Q** (since b → Q already). So every rival b is in at least one 3-cycle through Q.

Therefore: #{directed odd cycles through Q} ≥ #{directed 3-cycles through Q} ≥ |N⁻(Q)|.

Combining: H(T) − H(T−Q) ≥ 2|N⁻(Q)|. □

## Tight Cases

The bound is tight (H(T)−H(T−Q) = 2|N⁻(Q)|) in the following cases (exhaustively classified for n ≤ 6):

| n | Tight+SC | Tight+non-SC |
|---|----------|--------------|

## Notes for the formalizer

(none yet)
