---
id: THM-414-signed-lrc-additive-face-matching-cap-and-cyclotomic-realization
source: 01-canon/theorems/THM-414-signed-lrc-additive-face-matching-cap-and-cyclotomic-realization.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-414 — The signed-LRC additive face: matching cap, degree-2 Krawtchouk structure, and cyclotomic/formal-group realization

**Status:** PROVED (elementary; every part verified by brute force, n≤7 exhaustive over all
2^{n-1} sign patterns, and the matching cap + dilation invariance over 4000 random configs).
**Source:** monad-explorer-2026-06-06-S704. Cross-domain (CM field / norm form / formal group /
Krawtchouk) development of the signed-LRC theory (S699 T1–T4, HYP-2262) and the repeated
S699/S702/S703 handoff ("the LRC mirror of unit-distance density quantization"). Builds on
THM-401 (shell modulus `C=2n−1`), THM-403 (`C`-th roots of unity), THM-413 (order-3 silent flip),
THM-412 (density quantization, the lattice side), distinct axis from HYP-1992 (rapidity).

---

## Setup

`N = n−1` runners with **distinct nonzero speed residues** `a_1,…,a_N ∈ (ℤ/C)^×`, `C = 2n−1`
(the generic case; the AP and its dilates and the `n=14` floor rows all qualify). A sign vector
`ε∈{±1}^N` is a 2-coloring (a **cut**) of the runners (S699 T2). The ordered **pair-clock** is
`c_{ij}(ε) = ε_i a_i − ε_j a_j (mod C)`. A pair `{i,j}` is a **shell-partner** iff
`a_i + a_j ≡ 0 (mod C)` (S699 T3 = THM-401).

Define the **pair-sum representation function** and **additive energy**
```
   r_+(s) = #{ i<j : a_i + a_j ≡ s (mod C) },        E_+ = Σ_{s∈ℤ/C} r_+(s)^2 .
```
`r_+(0)` is the number of shell-partner pairs.

---

## Part 1 (the matching cap) — PROVED

> **For every residue `s` and every config, the pairs `{i,j}` with `a_i+a_j≡s` are
> vertex-disjoint (form a matching); hence `r_+(s) ≤ ⌊N/2⌋`.**

**Proof.** Fix `s`. If `{i,j}` and `{i,k}` both sum to `s`, then `a_j ≡ s−a_i ≡ a_k`, so `j=k` by
distinctness of residues. Thus each runner lies in at most one pair summing to `s`; the pairs are
disjoint and number at most `⌊N/2⌋`. ∎

**Corollary (resolution of the "popular pair-sum" mirror — in the NEGATIVE).** The cyclic LRC
additive face admits **no popular-sum escape**: no residue is hit by more than `⌊N/2⌋` pairs, for
any config. This is the sharp contrast with the lattice side (THM-412 / S702), where the popular

## Notes for the formalizer

(none yet)
