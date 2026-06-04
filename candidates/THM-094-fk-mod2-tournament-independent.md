---
id: THM-094-fk-mod2-tournament-independent
source: 01-canon/theorems/THM-094-fk-mod2-tournament-independent.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-094: F_k(T) mod 2 is Tournament-Independent

**Type:** Theorem (proved modulo universal Taylor zeros mod 2)
**Certainty:** 4.5 — PROOF SKETCH COMPLETE (verified exhaustively n<=6, sampled n=7,8)
**Status:** PROOF SKETCH + VERIFIED
**Added by:** kind-pasteur-2026-03-07-S38
**Tags:** #f-polynomial #modular-arithmetic #redei #eulerian-numbers

---

## Statement

**Theorem:** For any tournament T on n >= 1 vertices,

  F_k(T) = A(n,k) (mod 2)  for all k = 0, 1, ..., n-1,

where A(n,k) is the Eulerian number.

Equivalently: F_k(T) = C(n-1, k) (mod 2) for all k, since A(n,k) = C(n-1,k) mod 2.

Equivalently: F(T,x) = (1+x)^{n-1} (mod 2) for all tournaments T.

**Corollary (Rédei's theorem):** F_{n-1}(T) is odd for all tournaments T. This is exactly
Rédei's theorem: every tournament has an odd number of Hamiltonian paths.

---

## Proof Sketch

### Step 1: Universal Taylor zeros mod 2

**Claim:** c_j(T) = 0 mod 2 for all j < n-1 and all tournaments T on n vertices.

Verified computationally:
- n=2,...,6: exhaustive (0 failures)
- n=7: 5000 random samples (0 failures)
- n=8: 3000 random samples (0 failures)

The (x-1)-adic valuation of A_n(x) mod 2 is exactly n-1 (since A_n(x) = (1+x)^{n-1} mod 2
and (1+x) = (x-1) + 2 = (x-1) mod 2). The claim says this maximal valuation carries over

## Notes for the formalizer

(none yet)
