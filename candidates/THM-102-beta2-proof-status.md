---
id: THM-102-beta2-proof-status
source: 01-canon/theorems/THM-102-beta2-proof-status.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-102: β₂ = 0 for Tournaments — Proof Status

**Status:** PROVED — see THM-108/109 for the complete proof.
**Filed by:** opus-2026-03-08-S43

## Statement

**Conjecture (THM-100):** For every tournament T on n vertices, β₂(T) = 0 in GLMY path homology.

## Computational Evidence

| n | Method | Total | β₂=0 | Failures |
|---|--------|-------|------|----------|
| 3 | exhaustive | 8 | 8 | 0 |
| 4 | exhaustive | 64 | 64 | 0 |
| 5 | exhaustive | 1024 | 1024 | 0 |
| 6 | exhaustive | 32768 | 32768 | 0 |
| 7 | sampled | ~5000 | ~5000 | 0 |
| 8 | sampled | ~5000 | ~5000 | 0 |
| 9 | sampled | ~1000 | ~1000 | 0 |
| 10 | sampled | 50 | 50 | 0 |

**Additionally**: Paley T_7 and T_11 have β₂=0. rank(d₃) = ker(d₂) EXACTLY for all tested.

## Structural Discoveries

### 1. DT+Cancellation Filling (THM-101)
The space Z₂ = ker(∂₂|Ω₂) is spanned by boundaries from:
- **DT 4-paths**: (a,b,c,d) with a→c AND b→d (doubly-transitive)
- **Cancellation pairs**: differences of 3-paths sharing a bad face

Verified exhaustive at n≤6 with 0 failures.

### 2. DT Face Structure
A DT path (a,b,c,d) has face pattern:
- (b,c,d): always TT (b→d is DT condition)
- (a,b,c): always TT (a→c is DT condition)
- (a,c,d): TT iff a→d, NT iff d→a
- (a,b,d): TT iff a→d, NT iff d→a

## Notes for the formalizer

(none yet)
