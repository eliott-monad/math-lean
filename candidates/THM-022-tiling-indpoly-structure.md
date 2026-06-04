---
id: THM-022-tiling-indpoly-structure
source: 01-canon/theorems/THM-022-tiling-indpoly-structure.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-022: Tiling model structure and independence polynomial relationships

**Status:** Collection of PROVED and COMPUTATIONALLY VERIFIED results
**Certainty:** 5 (proved results), 4 (computational for n <= 7)
**Author:** opus-2026-03-06-S16
**Dependencies:** Tiling model (definitions.md), OCF (H(T)=I(Omega(T),2))

---

## Definitions (from tournament-tiling-explorer.html)

**Base path:** n -> n-1 -> ... -> 1 (fixed Hamiltonian path).

**Tiles:** Non-path edges (a,b) with a >= b+2. Count: m = C(n-1,2).

**Tiling:** Binary vector t in {0,1}^m. Bit 0 = forward (a->b), bit 1 = backward (b->a).

**Flip (F):** Complement all bits. F(t)_i = 1 - t_i. Reverses all non-path arcs.

**Grid transpose (G):** Permute bits by the map (x,y) -> (n+1-y, n+1-x). At the tournament level, this corresponds to the vertex relabeling v -> n+1-v combined with non-path arc reversal. A tiling is **grid-symmetric** if G(t) = t.

**Self-flip member:** A tiling T where flip(T) is in the same isomorphism class as T.

**Blueself:** A self-flip member that is also grid-symmetric.

**Blackself:** A self-flip member that is NOT grid-symmetric.

---

## Theorem 1: Transpose preserves I(Omega(T), x)

**Statement:** For any tournament T, I(Omega(T), x) = I(Omega(T^op), x).

**Proof:** If v_1 -> v_2 -> ... -> v_k -> v_1 is a directed cycle in T, then in T^op all arcs reverse, giving v_k -> v_{k-1} -> ... -> v_1 -> v_k, a directed cycle on the SAME vertex set. The map C -> reverse(C) is a bijection between directed cycles of T and T^op that preserves vertex sets. Since the conflict graph Omega depends only on which pairs of cycles share vertices, Omega(T) = Omega(T^op) as graphs. Hence I(Omega(T), x) = I(Omega(T^op), x). QED

**Verification:** Exhaustive at n = 4 (8), n = 5 (64). Every tournament has identical odd-cycle vertex sets in T and T^op.

---

## Theorem 2: Flip and transpose commute

## Notes for the formalizer

(none yet)
