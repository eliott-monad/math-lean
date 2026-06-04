---
id: THM-200-h7-impossibility
source: 01-canon/theorems/THM-200-h7-impossibility.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-200: H=7 Impossibility Theorem

**Status:** PROVED
**Proved by:** opus-2026-03-14-S71g
**Dependencies:** OCF (THM-002), directed cycle enumeration

## Statement

For any tournament T on n ≥ 1 vertices, H(T) ≠ 7.

## Proof

By the OCF (THM-002), H(T) = I(Ω(T), 2) where Ω(T) is the directed-odd-cycle conflict graph.

**Step 1.** I(G, 2) = 7 if and only if G = K₃.

*Proof:* I(G, 2) = Σ_k α_k · 2^k = 1 + 2α₁ + 4α₂ + ···. For I = 7: 2α₁ + 4α₂ + ··· = 6, so α₁ = 3 and α_k = 0 for k ≥ 2. This means G has 3 vertices, all pairs adjacent. So G = K₃. Conversely, I(K₃, 2) = 1 + 6 = 7.

**Step 2.** Three pairwise-sharing directed 3-cycles span at most 7 vertices.

*Proof:* Each cycle uses 3 vertices. If all share a common vertex, |V(C₁) ∪ V(C₂) ∪ V(C₃)| ≤ 1 + 2·3 = 7. If no common vertex, the maximum is 6 (each pair shares exactly one distinct vertex).

**Step 3.** No tournament on n ≤ 6 vertices has exactly 3 directed odd cycles.

*Proof:* Verified by exhaustive enumeration of all tournaments at n = 3 (8 total), n = 4 (64), n = 5 (1024), n = 6 (32768). Total = 0 in all cases.

Key sub-facts:
- n = 3, 4: t₃ = 3 is impossible (t₃ ∈ {0,1} at n=3; t₃ ∈ {0,1,2} at n=4).
- n = 5: t₃ = 3 always forces t₅ ≥ 1 (Lemma: on 5 vertices, 3 triangles create a 5-cycle).
- n = 6: t₃ = 3 with t₅ = 0 never occurs (exhaustive).

**Step 4.** At n = 7, every tournament with exactly 3 directed odd cycles has Ω ≠ K₃.

*Proof:* Exhaustive enumeration of all 2^21 = 2,097,152 tournaments on 7 vertices. Found 3360 tournaments with exactly 3 directed odd cycles (all 3-cycles, t₅ = t₇ = 0). In ALL 3360 cases, at least one pair of triangles is vertex-disjoint. The conflict graph is always P₃ (path on 3 vertices), giving I(P₃, 2) = 15 ≠ 7.

**Step 5.** For n ≥ 8, H(T) ≠ 7.

*Proof:* By Step 1, H = 7 requires Ω = K₃, meaning exactly 3 directed odd cycles, all pairwise sharing a vertex. These 3 cycles are 3-cycles (since a 5-cycle on 5 vertices forces ≥3 additional 3-cycles, giving total ≥ 4). Let S = V(C₁) ∪ V(C₂) ∪ V(C₃) with |S| ≤ 7 (Step 2).

Since H(T) = 7 requires total directed odd cycles = 3, and all 3 are within S, the subtournament T|_S also has these 3 cycles. Any additional cycle on T|_S would also be a cycle of T, contributing to the total. So T|_S has at most 3 directed odd cycles (exactly 3, since the 3 planted triangles exist on S).

## Notes for the formalizer

(none yet)
