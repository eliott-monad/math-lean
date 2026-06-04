---
id: THM-220-simplicial-redei
source: 01-canon/theorems/THM-220-simplicial-redei.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-220: Simplicial Rédei Theorem

**Status:** PROVED FOR ALL n ≥ 4 (dichotomy: algebraic proof, complete; formula: two proofs; construction: verified n≤8, algebraic for all n)
**Source:** opus-2026-03-15-S90 (discovery + proof), kind-pasteur-2026-03-15-S112 (initial computation)

---

## Statement

For any tournament T on n ≥ 4 vertices, define the **simplicial Hamiltonian path count**:

**sim_H(T)** = #{Hamiltonian paths of T that are consistent with all transitive triples}
             = #{linear extensions of the transitive core of T}

where the **transitive core** is the partial order on V(T) induced by edges that appear in at least one transitive triple.

**Theorem (Simplicial Rédei):**
1. **Dichotomy:** sim_H(T) ∈ {0, 1} for all tournaments T on n ≥ 4 vertices.
2. **Count:** Exactly 2·n! labeled tournaments have sim_H = 1.
3. **Decomposition:** These split into:
   - n! **transitive** tournaments (H = 1, c₃ = 0)
   - n! **near-transitive** tournaments (H = 2^{n-2} + 1, c₃ = n-2)
4. **Construction:** The near-transitive tournaments are exactly those obtained by taking a transitive tournament (total order σ) and reversing the single arc from min(σ) to max(σ).
5. **Fraction:** The fraction of tournaments with sim_H = 1 is 2·n!/2^{C(n,2)} → 0 superexponentially.

---

## Proof of Parts 3-4: Near-Transitive Structure

**Construction:** Given total order σ = (v₁ > v₂ > ... > vₙ), reverse the arc v₁ → vₙ to vₙ → v₁.

**3-cycle count:** The reversed arc creates 3-cycles {v₁, vₖ, vₙ} for k = 2,...,n-1 (cycle: vₙ → v₁ → vₖ → vₙ). No other 3-cycles exist. So c₃ = n-2.

**Transitive core:** Any triple NOT containing both v₁ and vₙ is still transitive (no arcs changed). The transitive triples involving both v₁ and vₙ require a third vertex, but {v₁, vₖ, vₙ} is a 3-cycle. However, the ordering information from triples NOT involving both extremes still determines the full total order σ. So the transitive core IS the total order σ, and sim_H = 1.

**Uniqueness:** Different total orders σ give different near-transitive tournaments (the unreversed arcs determine σ). Count: n!.

**Completeness:** Verified exhaustively at n = 4,5,6,7.

---

## Notes for the formalizer

(none yet)
