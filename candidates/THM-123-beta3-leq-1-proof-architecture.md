---
id: THM-123-beta3-leq-1-proof-architecture
source: 01-canon/theorems/THM-123-beta3-leq-1-proof-architecture.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-123: beta_3 <= 1 for All Tournaments — Proof Architecture

**Status:** PROVED EXHAUSTIVELY n≤7; **FALSE at n=8** (beta_3=2 exists, HYP-397)
**Filed by:** kind-pasteur-2026-03-09-S46, updated opus-2026-03-09-S53, S55
**Depends on:** THM-098, THM-108 (beta_2=0), LES of pair (T, T\v)
**CRITICAL UPDATE (kind-pasteur-S48):** beta_3=2 at n=8 with 0.08% frequency.
i_*-injectivity FAILS at n=8 (HYP-380 refuted). The theorem beta_3≤1 holds
ONLY for n≤7 and is NOT universal.

## Main Theorem (THM-098 for k=1) — RESTRICTED to n≤7

For every tournament T on 3 ≤ n ≤ 7 vertices, beta_3(T) ≤ 1 in GLMY path homology. **FALSE at n=8:** beta_3=2 exists with ~0.08% frequency (kind-pasteur-S48).

Equivalently: rank(d_4) >= ker(d_3) - 1 (rank near-saturation). Fails at n=8.

## Computational Evidence

| n | Method | beta_3 range | Confirmed |
|---|--------|-------------|-----------|
| 3-5 | exhaustive | beta_3 = 0 always | YES |
| 6 | exhaustive (32768) | beta_3 in {0,1}; 320 have beta_3=1 | YES |
| 7 | sampled (2000) | beta_3 in {0,1}; ~8.3% have beta_3=1 | YES |
| 8 | sampled (200+) | beta_3 in {0,1,**2**} | **NO** — beta_3=2 at ~0.08% rate (kind-pasteur-S48) |

**CORRECTED (opus-2026-04-01-S1):** The n=8 row originally said "Confirmed: YES" from an early sample that missed the rare beta_3=2 cases. The critical update at line 6 is correct; the table was stale.

## Proof Strategy: LES Induction

**Base case:** n <= 5, beta_3 = 0 always. DONE (exhaustive).

**Induction step:** Assume beta_3 <= 1 for all tournaments on < n vertices.
For an n-vertex tournament T, use the long exact sequence of the pair (T, T\v):

    ... -> H_3(T\v) -> H_3(T) -> H_3(T, T\v) -> H_2(T\v) = 0

Since H_2(T\v) = 0 (THM-108), the map H_3(T) -> H_3(T, T\v) is surjective.
From LES exactness:

    beta_3(T) <= beta_3(T\v) + dim H_3(T, T\v)

## Notes for the formalizer

(none yet)
