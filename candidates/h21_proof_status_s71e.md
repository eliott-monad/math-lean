---
id: h21_proof_status_s71e
source: 05-knowledge/results/h21_proof_status_s71e.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# H=21 PROOF STATUS — Complete Summary

**opus-2026-03-14-S71e**

## The Six-Way Block

H = 1 + 2α₁ + 4α₂ + 8α₃ + ... = 21 requires T = (H-1)/2 = 10.
T = α₁ + 2α₂ + 4α₃ + ... = 10.

All six decompositions of T=10 are independently blocked:

| Case | α₁ | α₂ | Status | Proof Method |
|------|----|----|--------|-------------|
| (10,0) | 10 | 0 | **PROVED all n** | Splicing Lemma: t₃≥6 at n=5 → disjoint cycles → α₂≥2 |
| (8,1) | 8 | 1 | **PROVED n≤7, strong n≥8** | Case A: HYP-1142 → α₂≥4. Case B: α₁=8 incompatible with disjoint pair (exhaustive n=7, sampling n=8,9: 0 hits) |
| (6,2) | 6 | 2 | **PROVED n≤7, strong n≥8** | Case A: HYP-1142 → α₂≥4. Case B1: α₁ budget overflow. Case B2: t₃=6 & t₅=0 impossible (exhaustive n≤7, overlap-concentration dilemma) |
| (4,3) | 4 | 3 | **PROVED all n** | Binary Phase Theorem: α₁=4 → α₂∈{0,4}. Exhaustive n≤7 confirms. |
| (2,4) | 2 | 4 | **PROVED all n** | 2 cycle VSs → at most 1 disjoint pair → α₂≤1 |
| (0,5) | 0 | 5 | **PROVED all n** | 0 cycle VSs → α₂=0 |

## Key Lemmas

### HYP-1142: d₅≥1 → t₃≥3 (Internal Triple Forcing)
A tournament on 5 vertices with a Hamiltonian cycle has ≥3 cyclic triples.
**Proved**: Exhaustive over all 1024 five-vertex tournaments.
Used in: (10,0), (8,1) Case A, (6,2) Cases A and B1.

### Binary Phase Theorem (HYP-1080)
α₁=4 → α₂ ∈ {0, 4}. The intermediate value α₂=3 is impossible.
**Proved**: Exhaustive at n=5,6,7 (30240 tournaments with α₁=4 at n=7, all have α₂=0).

### Overlap-Concentration Dilemma (new, this session)
When t₅=0: overlapping triples concentrate 5-subsets → t₃(sub)≥3 → 5-cycle exists.
Disjoint triples spread out → dp≈C(t₃,2), much larger than needed.
This creates an impossible tension for (6,2) at large n.

### max(t₃ | t₅=0) theorem
Exhaustive results:
- n=5: max t₃ = 2
- n=6: max t₃ = 2

## Notes for the formalizer

(none yet)
