---
id: THM-456-blowup-spectrum-law-and-twin-free-reframe-of-erdos-64
source: 01-canon/theorems/THM-456-blowup-spectrum-law-and-twin-free-reframe-of-erdos-64.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-456 — The Blowup Spectrum Law and the Twin-Free/Turán-Corridor Reframe of Erdős–Gyárfás (Problem 64)

**Status:** Interval lemma + path law PROVED (constructive) + verified exhaustively (995
connected atlas graphs, 0 failures). Exact spectrum law VERIFIED 995/995 (and the circumference
formula c = 2s verified independently by the adversarial verifier on all 144 nontrivial cases,
0 failures). Census results EXHAUSTIVE n ≤ 12. Erdős–Gyárfás itself remains OPEN — this is a
structural reframe + complete small-case census, not a proof.
**Source:** kind-pasteur-2026-06-09-S2 (branch II + verifier; `verify_II_blowup_interval_kps2.out`).
**Related:** THM-445/446 (E-G statement + Sidon ladder), THM-447/454 (doubling, twin-lift = the
tournament parity mixer), HYP-2358 (resolved into this), MISTAKE-068.

## (1) The interval lemma (PROVED)

If a graph G has a k-cycle (k ≥ 3), the twin blowup G[K₂] has cycles of EVERY length in
[k, 2k]: double t of the k cycle-vertices via twin detours u⁰→u¹, giving length k+t for all
0 ≤ t ≤ k. Since [k, 2k] always contains 2^⌈lg k⌉ ≥ 4, and δ(G[K₂]) = 2δ(G)+1 ≥ 3 whenever
δ(G) ≥ 1 — and in fact a SINGLE EDGE uv already plants the twin 4-cycle u⁰u¹v¹v⁰ —
**blowups can never be Erdős–Gyárfás counterexamples**, robustly (a power of 2 in every dyadic
window, not just one).

## (2) The full spectrum law (path law PROVED; exact law VERIFIED 995/995)

- PATH LAW: a path on r vertices in G gives cycles of lengths 2r and 2r−1 in G[K₂];
  so spec(G[K₂]) ⊇ [3, 2p(G)] (p = longest-path order). Verified 995/995.
- EXACT LAW: spec(G[K₂]) is the GAP-FREE interval [3, c(G[K₂])], and
  **c(G[K₂]) = 2·s(G)** where s(G) = max order of a subgraph carrying edge multiplicities {1,2}
  with all multi-degrees in {2,4} (paths, cycles, thetas, figure-eights, sun/jellyfish walks —
  closed stutter-walks visiting each vertex ≤ 2 times).
- c = 2p for 939/995 graphs; 56 beaters, smallest = the NET graph (C₃ + 3 pendants):
  c = 12 > 2p = 10 via the sun walk c₁p₁c₁c₂p₂c₂c₃p₃c₃. (Tie at n=6: C₄+2 pendants also beats.)
- 896/995 blowups are Hamiltonian.

## (3) The twin-free / Turán-corridor reframe (the structural heart)

An E-G counterexample contains no C₄ (a 4-cycle is the smallest power of 2), i.e. **no two
vertices with two common neighbors** — in particular any twin pair (true or false) in a δ≥3
graph creates a C₄, so counterexamples are automatically twin-free. Quantitatively:
C₄-freeness caps e ≤ ex(n; C₄) while δ ≥ 3 forces e ≥ ⌈3n/2⌉. The **Turán corridor**
ex(n;C₄) − ⌈3n/2⌉ has margins:
```

## Notes for the formalizer

(none yet)
