---
id: THM-023-blueself-parity
source: 01-canon/theorems/THM-023-blueself-parity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-023: Blueself requires even n

**Status:** PROVED (algebraic + verified computationally at n=3,...,8)
**Instance:** opus-2026-03-06-S3
**Dependencies:** THM-022, definitions of blueself/blackself/GS

## Statement

A tiling is **blueself** if it is both grid-symmetric (GS) and self-flip
(its flip is in the same isomorphism class). Blueself tilings exist if and
only if n is even.

## Proof

For a GS tiling, the associated tournament T is self-converse under
the relabeling v -> n-1-v. This implies:

  score(v) + score(n-1-v) = n-1 for all v.

The flip operation reverses all non-path arcs (arcs other than i->i+1).
Under flip, vertex scores transform as:

  score'(v) = n-1-score(v)      for 0 < v < n-1  (internal vertices)
  score'(0) = n - score(0)      (source endpoint)
  score'(n-1) = n-2 - score(n-1) (sink endpoint)

For two tournaments to be isomorphic, they must share the same sorted score
sequence. Internal vertices map s -> n-1-s, which preserves the multiset
(by the palindrome property of SC tournaments).

The boundary correction is the key:
- Original endpoints: {score(0), score(n-1)} = {score(0), n-1-score(0)}
- Flipped endpoints: {n-score(0), score(0)-1}

For the sorted score multiset to be preserved, we need:

  n - score(0) = score(0)   =>   score(0) = n/2

This requires n even. At odd n, score(0) = n/2 is not an integer,
so flip ALWAYS changes the score sequence of a GS tiling.

## Notes for the formalizer

(none yet)
