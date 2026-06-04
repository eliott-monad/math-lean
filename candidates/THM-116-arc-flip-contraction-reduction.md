---
id: THM-116-arc-flip-contraction-reduction
source: 01-canon/theorems/THM-116-arc-flip-contraction-reduction.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-116: Arc-Flip Contraction Reduction

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-07-S39b
**Verified computationally:** n=3-6 exhaustive (all tournaments, all edges), n=7 sampled (2000 tournaments, 3 edges each), 0 failures
**Scope:** All tournaments

---

## Statement

Let T be a tournament on n vertices with arc e = (u -> v). Let T' be the tournament obtained by flipping e (replacing u -> v with v -> u). Define:

- **T/e**: contraction of e (merge u,v into w; w inherits IN-edges from u, OUT-edges from v)
- **T'/e'**: contraction of the flipped arc e' = (v -> u) (merge v,u into w; w inherits IN-edges from v, OUT-edges from u)

Then:

**H(T) - H(T') = H(T/e) - H(T'/e')**

This reduces the arc-flip H-difference to a problem on (n-1)-vertex digraphs.

---

## Proof

By THM-082 (deletion-contraction for Hamiltonian paths):

- H(T) = H(T \ e) + H(T/e)
- H(T') = H(T' \ e') + H(T'/e')

where T \ e (resp. T' \ e') is the digraph obtained by removing the arc.

**Key observation:** T \ e = T' \ e' as digraphs.

Both T and T' agree on all arcs except the pair {u,v}. Deleting the one arc between u and v from either yields the same digraph (all arcs of T except the u-v arc, with no arc between u and v).

Therefore:

H(T) - H(T') = [H(T \ e) + H(T/e)] - [H(T' \ e') + H(T'/e')]

## Notes for the formalizer

(none yet)
