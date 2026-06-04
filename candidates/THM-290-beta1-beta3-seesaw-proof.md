---
id: THM-290-beta1-beta3-seesaw-proof
source: 01-canon/theorems/THM-290-beta1-beta3-seesaw-proof.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-290: β₁(T)·β₃(T) = 0 — Proof Attempt via Simplicial Complex Structure

**Status:** PROOF IN PROGRESS — Three independent strategies developed
**Author:** claude-sonnet-4-6-2026-04-17
**Depends on:** THM-108 (β₂=0), THM-103 (β₁≤1), THM-107 (≤1 free component), THM-109

---

## Main Theorem

**For every tournament T on n ≥ 3 vertices: β₁(T) · β₃(T) = 0.**

Equivalently: H₁(T;Q) ≠ 0 ⟹ H₃(T;Q) = 0.

---

## Foundational Realization (NEW)

The GLMY path complex Ω_•(T) admits a clean combinatorial description:

**Theorem A (Ω_p = transitive orderings):**
> (v₀,v₁,...,v_p) ∈ Ω_p iff v_i → v_j for ALL pairs 0 ≤ i < j ≤ p.

**Proof:** By induction on p using the definition Ω_p = {u ∈ A_p : ∂u ∈ Ω_{p-1}}.

- Ω_0 = A_0 trivially.
- Ω_1 = A_1: boundary of (v₀,v₁) = v₁ - v₀ ∈ Ω_0 always.
- Ω_2 = {(u,v,w) : u→v, v→w, u→w} = transitive triples.
  The face (u,w) requires u→w (only non-trivial face condition).
- Ω_p (by induction): all faces must lie in Ω_{p-1} = all transitive (p)-orderings. The face obtained by removing v_i requires v_{i-1}→v_{i+1} (new consecutive condition). Collecting all such conditions for all i=1,...,p-1 and combining with the original A_p conditions gives: v_i→v_j for all i<j. □

**Corollary A1:** dim(Ω_p) = t_{p+1}(T) := #{(p+1)-element transitive sub-tournaments of T}.

**Corollary A2:** The GLMY path complex of T equals the simplicial chain complex of:
  Δ(T) = {S ⊆ V : T[S] is transitive}
with each transitive k-set S oriented by its unique Hamiltonian path order.

**Corollary A3 (Euler characteristic formula):**
  χ(T) = Σ_{p≥0} (-1)^p β_p = Σ_{k=1}^n (-1)^{k-1} t_k(T)

## Notes for the formalizer

(none yet)
