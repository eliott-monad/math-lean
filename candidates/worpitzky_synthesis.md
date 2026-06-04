---
id: worpitzky_synthesis
source: 05-knowledge/results/worpitzky_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Worpitzky Polynomial Investigation — Synthesis

## Session: opus-2026-03-07-S37 (Phase 2)

### Definition
For a tournament T on [n], the **forward-edge polynomial** (ascent polynomial) is:

F(T,x) = sum_{k=0}^{n-1} F_k x^k

where F_k = #{Hamiltonian paths with exactly k ascents} (positions i where P_i < P_{i+1}).

### Key Results

#### 1. Complement Duality (PROVED)
**F_k(T) = F_{n-1-k}(T^op)** where T^op is the complement tournament.

Proof: Reversing a HP P of T gives a HP of T^op, and ascents become descents.
Consequence: F(T,x) = x^{n-1} F(T^op, 1/x).
F(T,x) is palindromic iff T and T^op have the same HP structure.

#### 2. Sum Over All Tournaments (PROVED)
**Sum_T F(T,x) = A_n(x) * 2^{C(n,2)-(n-1)}**

Each permutation is a HP of exactly 2^{C(n,2)-(n-1)} tournaments.
Average H = n! / 2^{n-1}.
Average F(T,x) = A_n(x) / 2^{n-1}.

#### 3. Unimodality (CONJECTURE — very strong evidence)
F(T,x) is ALWAYS unimodal: F_0 <= F_1 <= ... <= F_peak >= ... >= F_{n-1}.

Evidence: 100% at n=3,4,5 (exhaustive), 100% at n=6,7,8 (500 samples each).

#### 4. Log-Concavity (near-universal)
F_k^2 >= F_{k-1} * F_{k+1} almost always.
- n=3,4: 100% (exhaustive)
- n=5: 1020/1024 (4 failures, all with H=11)
- n=6,7,8: 100% (500 samples each)

The 4 failures at n=5:
- F=[0,0,8,2,1], F=[0,2,6,2,1], F=[1,2,6,2,0], F=[1,2,8,0,0]

## Notes for the formalizer

(none yet)
