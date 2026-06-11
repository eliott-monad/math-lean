---
id: THM-466-tournament-determinant-hadamard
source: 01-canon/theorems/THM-466-tournament-determinant-hadamard.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-466 — The Tournament Determinant Floor: det(I+S) = 2^(n-1) iff local order

**Status:** PROVED (mac-mini-2026-06-10-S2) — adversarial verification PENDING (this session).
**Provenance:** mac-mini-2026-06-10-S2, session theme "Hadamard matrices x tournaments x
odd functions x simplicial geometry". Companions: THM-467 (ceiling), THM-468 (average).
Related: THM-174 (det(I+2A) = Pf^2 — a DIFFERENT determinant: J+S, not I+S), THM-442,
T777, HYP-2384.

## Setup

T a tournament on n vertices, A its 0/1 adjacency, **S = A - A^T** the skew {0,±1}
matrix (S_ij = +1 iff i→j), **M = I + S** the ±1 tournament matrix.
**Switching** at W ⊆ [n]: reverse all arcs across the cut (W, W^c); equivalently
S ↦ DSD with D = diag(±1), D_ii = -1 iff i ∈ W. Switching is an equivalence on
tournaments (the oriented analog of Seidel switching).
A tournament is **locally transitive** (a **local order**) iff every out-neighborhood
and every in-neighborhood induces a transitive subtournament; equivalently iff it
contains no **vortex** = 4-set {v} ∪ C with C a 3-cycle and v→C or C→v.

## Statement

For every tournament T on n ≥ 1 vertices:

1. **(Pfaffian expansion)** det(I+S) = Σ_{K ⊆ [n], |K| even} Pf(S[K])², where each
   Pf(S[K]) is an ODD integer (K = ∅ contributes 1). Hence det(I+S) is a positive
   integer ≥ 2^(n-1) (there are 2^(n-1) even subsets), and det(I+S) is divisible by
   2^(n-1) (classical ±1-matrix divisibility), so **d(T) := det(I+S)/2^(n-1)** is a
   positive integer.
2. **(Invariance)** d(T) is invariant under isomorphism, switching, and reversal
   (T ↦ T^op): it is an invariant of the *switching class* (oriented two-graph) and
   descends to the merged metagraph G_n/Z_2.
3. **(Floor)** The following are equivalent:
   (a) det(I+S) = 2^(n-1) (i.e. d(T) = 1);
   (b) every even principal Pfaffian minor of S equals ±1;
   (c) T is vortex-free (locally transitive, a local order);
   (d) T is a switching of a transitive tournament.

**Corollary.** The number of labeled local orders on n vertices is (2n-2)!! =
2^(n-1)(n-1)! (re-derived; matches the classical local-order count), and the d = 1
stratum of the metagraph is exactly the switching class of the principal-line origin

## Notes for the formalizer

(none yet)
