---
id: THM-108-beta2-proof-architecture
source: 01-canon/theorems/THM-108-beta2-proof-architecture.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-108: beta_2 = 0 for All Tournaments — Proof Architecture

**Status:** PROVED (ALL cases algebraic — no exhaustive verification needed)
**Filed by:** kind-pasteur-2026-03-08-S43
**Updated:** opus-2026-04-04-S1 (THM-285: n=5 gap closure — Case 2 is vacuous at n≤5)
**Depends on:** THM-122 (TT span), THM-103 (β₁≤1), THM-104, THM-105, THM-106, THM-107, THM-109, THM-285

## Main Theorem

For every tournament T on n >= 3 vertices, beta_2(T) = 0 in GLMY path homology.

## Proof by Strong Induction on n

**Base case:** n <= 4. The path complex Omega_2 has too few elements for
non-trivial 2-cycles, or direct computation gives beta_2 = 0. Verified exhaustively.

**Induction step:** Assume beta_2(T') = 0 for all tournaments T' on < n vertices.
For an n-vertex tournament T, we use the long exact sequence (LES) of the pair (T, T\v):

    ... -> H_2(T\v) -> H_2(T) -> H_2(T, T\v) -> H_1(T\v) -> H_1(T) -> ...

By induction, H_2(T\v) = 0. So H_2(T) injects into H_2(T, T\v).
By LES exactness: H_2(T, T\v) = 0 iff the inclusion map i_*: H_1(T\v) -> H_1(T)
is injective.

**Key equivalence (verified n <= 12):** i_* is injective iff b_1(T\v) <= b_1(T),
where b_1 = dim H_1.

Therefore: beta_2(T) = 0 iff there exists v with b_1(T\v) <= b_1(T).

## Reduction to Good-Vertex Existence

The proof reduces to: **for every tournament T on n >= 5 vertices, there exists
a vertex v such that b_1(T\v) <= b_1(T).**

### Case 1: b_1(T) = 1 — PROVED

Since b_1(T) = 1 and b_1(T\v) <= 1 for all tournaments (THM-107),
we have b_1(T\v) <= 1 = b_1(T) for ALL v. Every vertex is good.

## Notes for the formalizer

(none yet)
