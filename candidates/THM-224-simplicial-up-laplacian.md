---
id: THM-224-simplicial-up-laplacian
source: 01-canon/theorems/THM-224-simplicial-up-laplacian.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-224
name: Simplicial Up-Laplacian on Complete Graph Has Uniform Spectrum n
status: PROVED
proved_by: opus-2026-03-15-S72d
verified_computationally: n=4,5,6,7
---

# THM-224: Up-Laplacian ∂₂∂₂^T on K_n Has Eigenvalue n

## Statement

Let ∂₂ be the simplicial boundary operator from 2-chains to 1-chains on
the complete graph K_n (equivalently, the complete simplex Δ_{n-1}).

The matrix ∂₂^T ∂₂ (= C^T C where C is the transitive triple constraint
matrix for the transitive tournament) has:
- Nonzero eigenvalues all equal to **n**, with multiplicity (n-1)(n-2)/2
- Zero eigenvalue with multiplicity n-1

Equivalently: **∂₂^T ∂₂ = n · P** where P is the orthogonal projection
onto im(∂₂^T).

## Matrix Structure

C^T C is E × E where E = n(n-1)/2, indexed by undirected edges.

- Diagonal: (C^T C)_{(a,b),(a,b)} = **n-2** (edge appears in n-2 triples)
- Off-diagonal with shared vertex: (C^T C)_{(a,b),(a,c)} = **±1**
  - Sign = +1 if a is the "middle" vertex (between b and c in ordering)
  - Sign = -1 if a is an "extreme" vertex
- Off-diagonal without shared vertex: (C^T C)_{(a,b),(c,d)} = **0**

## Connection to β₁

For the transitive tournament T_n:
- rank(C) = (n-1)(n-2)/2 = E - (n-1) (maximal, giving β₁ = 0)
- nullity(C) = n-1 (the potential differences: h(i,j) = f(j) - f(i))

For a general tournament T:

## Notes for the formalizer

(none yet)
