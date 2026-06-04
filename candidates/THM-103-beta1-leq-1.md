---
id: THM-103-beta1-leq-1
source: 01-canon/theorems/THM-103-beta1-leq-1.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-103: β₁(T) ≤ 1 for All Tournaments

**Status:** PROVED (algebraically, for all n)
**Filed by:** opus-2026-03-08-S50

## Statement

For every tournament T on n ≥ 3 vertices, the first GLMY path homology Betti number satisfies β₁(T) ≤ 1.

## Proof

We work in path cohomology H¹(T; Q), which is isomorphic to H₁(T; Q) by GLMY universal coefficients.

**Setup.** A 1-cocycle is a function w: Ω₁ → Q satisfying w(∂₂(x)) = 0 for all x ∈ Ω₂. A 1-coboundary is w = δf for some f: V → Q, i.e., w(a,b) = f(b) - f(a). Then H¹ = (1-cocycles)/(1-coboundaries), and β₁ = dim H¹.

Since Ω₁ has basis {(a,b) : a → b in T}, there are C(n,2) edge variables.

The 1-coboundary space has dimension n-1 (one function per vertex modulo constants).

**Star constraints.** For each vertex v with out-degree d⁺(v), the out-neighborhood out(v) = {u : v → u} is a tournament on d⁺(v) vertices. By the classical theorem (every tournament has a Hamiltonian path), there exists a path u₁ → u₂ → ... → u_d in T[out(v)], where d = d⁺(v).

Each triple (v, uᵢ, uᵢ₊₁) for i = 1, ..., d-1 is a **transitive triple** in T:
- v → uᵢ (since uᵢ ∈ out(v))
- uᵢ → uᵢ₊₁ (from the HP)
- v → uᵢ₊₁ (since uᵢ₊₁ ∈ out(v))

The cocycle condition for each such triple gives:
  w(uᵢ, uᵢ₊₁) - w(v, uᵢ₊₁) + w(v, uᵢ) = 0

Rearranging: **w(v, uᵢ₊₁) = w(v, uᵢ) + w(uᵢ, uᵢ₊₁)**.

By induction on i: w(v, uⱼ) = w(v, u₁) + Σᵢ₌₁ʲ⁻¹ w(uᵢ, uᵢ₊₁) for all j = 2, ..., d.

Therefore the edges {(v, u₂), (v, u₃), ..., (v, u_d)} are **determined** by w(v, u₁) and the inter-neighbor edges {w(uᵢ, uᵢ₊₁)}. This eliminates d⁺(v) - 1 independent edge variables.

**Counting.** The eliminated edges from vertex v are all of the form (v, ?). For distinct vertices v₁ ≠ v₂, the eliminated edge sets are disjoint (different first coordinates). Therefore all eliminations are independent, and the total number of eliminated variables is:

  Σᵥ (d⁺(v) - 1) = Σᵥ d⁺(v) - n = C(n,2) - n

**Conclusion.** The cocycle space has dimension at most C(n,2) - (C(n,2) - n) = n. Therefore:

## Notes for the formalizer

(none yet)
