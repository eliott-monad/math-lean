---
id: THM-455-trans-subtournament-doubling-and-tower
source: 01-canon/theorems/THM-455-trans-subtournament-doubling-and-tower.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-455 — Transitive Subtournaments under Skew-Sylvester Doubling: the +1 law (with one exception), and the Mersenne tower's extremality window 7–31

**Status:** (1) PROVED. (2) PROVED for transitive T; the universal +1 conjecture REFUTED with
exact counterexample AND shown Ramsey-FORCED to fail (2b). (3)–(4) COMPUTED and INDEPENDENTLY
VERIFIED (source ≡ sink recursion; explicit witnesses; brute force 18/18 at n≤5; my
trans(Paley_31) = 7 matches the published Momihara–Suda Table 2 value — external validation
of the solver). Literature fully verified (agent report with sources; Erdős problem #1216).
**Source:** kind-pasteur-2026-06-09-S2 (T769, HYP-2356/2357; computed by session owner after
two branch-agent API failures).
**Related:** THM-447/448 (doubling, tower, labeled link recursion), THM-454, Erdős–Moser
(1964), mac-mini THM-453 Part A (Erdős 592's red target = order-faithful transitive
subtournament — this theorem is its finite shadow).

## (1) Lower bound: trans(D(T)) ≥ trans(T) + 1 (PROVED)

If S = {v₁ → ⋯ → v_t} is transitive with source v₁, then S ∪ {v₁'} is transitive in D(T):
v₁ → v₁' (twin), v₁' → v_j for j ≥ 2 (cross arcs follow T). ∎

## (2) The +1 law holds in 17/18 classes at n ≤ 5 — but is NOT universal

trans(D(T)) = trans(T) + 1 for 17 of the 18 iso classes n=3..5 (verified by fast recursion AND
brute force). For transitive T it is exact (the interleaving obstruction: primed elements must
appear in reversed T-order while cross arcs pin each v_j' to the slot after v_j — two primes
cannot straddle an unprimed element, so a chain-comparable configuration gains at most 1).

**EXCEPTION (refutes universality):** n=5 idx10, scores (1,2,2,3,2), arcs
{(0,4),(1,0),(1,3),(2,0),(2,1),(3,0),(3,2),(3,4),(4,1),(4,2)}: trans(T) = 3 but
trans(D(T)) = 5 (+2). Witness TT5 in D(T): the chain 1', 3, 2', 0, 4' — primed and unprimed
ALTERNATE, using cross arcs in both directions. The interleaving obstruction binds only
chain-comparable configurations; alternating mixed chains evade it. **n=6 census (ALL 32768 labeled tournaments): delta = trans(D)−trans(T) distribution
{+1: 27248, +2: 5520} — delta NEVER exceeds 2.** The +2 rate grows with n (1/18 classes at
n≤5 → 16.8% labeled at n=6), concentrated on (t,t+2) = (4,6) and (3,5). This upgrades the
trivial bound trans(D(T)) ≤ 2·trans(T) to the SANDWICH CONJECTURE
trans(T)+1 ≤ trans(D(T)) ≤ trans(T)+2 (HYP-2360).

## (2b) The exceptions are partly FORCED by directed Ramsey numbers (new, verified)

The literature notes no doubling lower-bound construction can exist (it would contradict
Reid–Parker). Sharply: if T is TT_{t+1}-free on n vertices and 2n ≥ R(t+2) (the directed
Ramsey number forcing TT_{t+2}), then EVERY 2n-vertex tournament — including D(T) — contains

## Notes for the formalizer

(none yet)
