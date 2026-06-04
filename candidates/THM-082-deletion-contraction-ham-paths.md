---
id: THM-082-deletion-contraction-ham-paths
source: 01-canon/theorems/THM-082-deletion-contraction-ham-paths.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-082: Deletion-Contraction for Hamiltonian Path Counts

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-07-S35
**Verified computationally:** n=4 exhaustive (384 edge tests), n=5 exhaustive (10240 edge tests), 0 failures
**Scope:** All digraphs (not just tournaments)

---

## Statement

Let D be a digraph on n vertices and e = (u → v) a directed edge of D. Define:

- **D \ e** (deletion): the digraph obtained by removing edge e (same vertex set, one fewer edge).
- **D / e** (contraction): the digraph on n−1 vertices obtained by merging u and v into a single vertex w, where:
  - For x ≠ u,v: edge (x, w) exists iff (x, u) exists in D
  - For x ≠ u,v: edge (w, x) exists iff (v, x) exists in D
  - Edges among other vertices: unchanged
  - (Convention: w inherits **IN-edges from the tail** u and **OUT-edges from the head** v)

Then:

**H(D) = H(D \ e) + H(D / e)**

where H(·) denotes the number of Hamiltonian paths.

---

## Proof

Partition Ham(D) = {Hamiltonian paths of D} into two disjoint sets:

1. **Paths not using e:** These are exactly Ham(D \ e), since removing e from D doesn't affect any path that avoids e. Contributes H(D \ e).

2. **Paths using e:** We construct a bijection φ : {P ∈ Ham(D) : e ∈ P} → Ham(D / e).

### Bijection φ

Let P = (p₀, p₁, ..., pₙ₋₁) be a Hamiltonian path in D using edge e = (u → v). Then u = pₖ and v = pₖ₊₁ for some unique position k (0 ≤ k ≤ n−2).

## Notes for the formalizer

(none yet)
