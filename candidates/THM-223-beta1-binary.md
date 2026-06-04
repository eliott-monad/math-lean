---
id: THM-223-beta1-binary
source: 01-canon/theorems/THM-223-beta1-binary.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-223
name: β₁ is binary for tournaments
status: COMPUTATIONALLY VERIFIED (exhaustive n≤8, sampled n=9)
proved_by: opus-2026-03-15-S72b (verification + reformulation)
---

# THM-223: β₁(T) ∈ {0, 1} for all tournaments T

## Statement

For any tournament T on n ≥ 3 vertices, β₁(T) ∈ {0, 1}.

## Equivalent Formulation (Transitive Triple Rank)

Let C_TT be the transitive triple constraint matrix: rows indexed by
transitive triples (a,b,c) of T, columns indexed by directed edges,
with entries C[(a,b,c), (a,b)] = -1, C[(a,b,c), (b,c)] = -1, C[(a,b,c), (a,c)] = +1.

Then: rank(C_TT) ∈ {C(n,2) - n + 1, C(n,2) - n}

equivalently: nullity(C_TT) ∈ {n - 1, n}.

- β₁ = 0 iff rank(C_TT) = C(n,2) - n + 1 (maximal)
- β₁ = 1 iff rank(C_TT) = C(n,2) - n (one deficiency)

## Key Discovery: Cancellation Chains are Redundant

The cancellation chain constraints (from Ω₂ elements beyond transitive triples)
add ZERO independent constraints. Verified exhaustively at n = 4, 5, 6:
rank(TT + CC) = rank(TT) always.

This means β₁ is determined ENTIRELY by the transitive triple structure,
without needing the more complex cancellation chain analysis.

## Verification

| n | C(n,2) | β₁=0 rank | β₁=1 rank | exhaustive? |
|---|--------|-----------|-----------|-------------|
| 4 | 6 | 3 | 2 | yes (64) |

## Notes for the formalizer

(none yet)
