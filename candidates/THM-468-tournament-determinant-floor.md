---
id: THM-468-tournament-determinant-floor
source: 01-canon/theorems/THM-468-tournament-determinant-floor.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-468 — The Tournament Determinant Floor: det(I+S) = 2^(n-1) iff local order

**Status:** PROVED and ADVERSARIALLY VERIFIED (2026-06-11: independent re-derivation
of every step — principal-minor expansion, Pfaffian parity, 2^(n-1) divisibility,
4-set classification, the ε-induction (traced exhaustively incl. apex edge cases),
the transitive Pfaffian recursion with sign convention — plus fresh-code exhaustive
verification of all four predicate equivalences at n=5,6 and the (2n-2)!! counts.
See 05-knowledge/results/thm468_adversarial_check_fresh.out. See also ATTRIBUTION.)
**Provenance:** mac-mini-2026-06-10-S2 (renumbered THM-466->THM-468 per first-come collision with kind-pasteur-2026-06-10-S2 commit a394a6ae; see MSG-099), session theme "Hadamard matrices x tournaments x
odd functions x simplicial geometry". Companions: THM-472 (ceiling), THM-473 (average).
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

## Notes for the formalizer

(none yet)
