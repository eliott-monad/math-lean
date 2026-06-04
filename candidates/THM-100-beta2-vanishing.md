---
id: THM-100-beta2-vanishing
source: 01-canon/theorems/THM-100-beta2-vanishing.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-100: β₂ Vanishing for Tournaments

**Status:** PROVED for all tournaments (THM-108/109, kind-pasteur-S43). Proof by induction + LES + isolation characterization.
**Proposed by:** kind-pasteur-2026-03-08-S40

## Statement

**Conjecture:** For any tournament T on n ≥ 3 vertices, the GLMY path homology satisfies β₂(T) = 0.

## Evidence

| n | Method | #Tested | β₂>0 found |
|---|---|---|---|
| 3 | exhaustive | 8 | 0 |
| 4 | exhaustive | 64 | 0 |
| 5 | exhaustive | 1024 | 0 |
| 6 | exhaustive | 32768 | 0 |
| 7 | random | 10000 | 0 |
| 8 | random | 3000 | 0 |
| 9 | random | 500 | 0 |

Total: 0 counterexamples in ~47,000 tournaments tested.

## Known Betti Numbers for Tournaments

The Betti numbers that DO appear for tournaments are:
- β₀ = 1 always (connected)
- β₁ ∈ {0, 1} at n=3,4,5,6 (C-phase)
- β₂ = 0 always (CONJECTURE)
- β₃ ∈ {0, 1} at n=6 (S-phase), = 0 at n≤5
- β₄ ∈ {0, 1, 6} at n=7,8

The gap at dimension 2 is remarkable: β₁ and β₃ both appear but β₂ never does.

## Proof Sketch

In GLMY path homology, β₂ = dim(ker ∂₂) / dim(im ∂₃). A 2-cycle is a
linear combination of allowed 2-paths (a→b→c) whose boundary vanishes.

Key observations:

## Notes for the formalizer

(none yet)
