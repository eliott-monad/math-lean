---
id: THM-250-flip-formula
source: 01-canon/theorems/THM-250-flip-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-250: The Near-Transitive Flip Formula

**Status:** PROVED
**Session:** kind-pasteur-2026-03-17-S116n33
**Verified:** Computationally for n = 3 through n = 9, all skip lengths.

## Statement

Let T_n be the transitive tournament on n vertices {0, 1, ..., n-1} where i → j for all i < j. Let T_n^{(a,b)} denote the tournament obtained by reversing the single arc (a,b) to b → a, where 0 ≤ a < b ≤ n-1. Then:

**H(T_n^{(a,b)}) = 2^{b-a-1} + 1** if b - a ≥ 2

**H(T_n^{(a,b)}) = 1** if b - a = 1

where H denotes the number of Hamiltonian paths.

## Proof

### Case 1: b - a = 1 (adjacent flip)

The transitive tournament has a unique Hamiltonian path π = (0, 1, 2, ..., n-1), which uses arc a → a+1. After reversing this arc to (a+1) → a, the original path is destroyed.

The only Hamiltonian path in T_n^{(a,a+1)} is obtained by swapping positions a and a+1 in the original path: π' = (0, 1, ..., a-1, a+1, a, a+2, ..., n-1).

**Verification that π' is valid:** Each consecutive pair is connected by a forward arc:
- i → i+1 for i < a-1 (unchanged transitive arcs)
- (a-1) → (a+1): transitive arc with skip 2 (exists since a+1 > a-1)
- (a+1) → a: the reversed arc (exists by construction)
- a → (a+2): transitive arc with skip 2 (exists since a+2 > a)
- i → i+1 for i > a+1 (unchanged transitive arcs)

**Verification that no other path exists:** Any other path must use the arc (a+1) → a at some point (since vertex a can only be reached from a+1, given that all other arcs from vertices > a to a are absent — the only arc INTO a is from a+1). After using (a+1) → a, the path must continue from a forward, giving the unique continuation. Similarly, before (a+1), the path must reach a+1 from below, giving a unique prefix. ∎

### Case 2: b - a = k ≥ 2 (non-adjacent flip)

**Step 1: The original path persists.**

The path π = (0, 1, ..., n-1) uses only skip-1 arcs (i → i+1). Since k ≥ 2, the arc (a,b) has skip k ≥ 2 and is NOT used by π. The reversal does not affect π. So π remains a valid Hamiltonian path.

**Step 2: Counting new paths using the reversed arc b → a.**

## Notes for the formalizer

(none yet)
