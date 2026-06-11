---
id: THM-478-digit-one-degree-law
source: 01-canon/theorems/THM-478-digit-one-degree-law.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-478 — The Digit-1 Degree Law: H mod 4 has tile-ANF degree ≤ 2⌊(n-1)/2⌋, and H mod 4 is annihilated by (D+1)-flats

**Status:** Upper bound PROVED and ADVERSARIALLY VERIFIED (2026-06-11: pairing
identity symbolic at L=3,5; reversal shown fixed-point-free on directed cycles;
flat-annihilation equivalence verified exhaustively over all 2^16 functions at
m=4, D=1; all digit ladders reproduced with independent conventions; pointwise
digit_1 = c_odd mod 2 at n=4..6; Grinberg-Stanley arXiv:2307.05569 Thm 7.1 cited
verbatim — NOTE it is a v1 draft, so the congruence itself was ALSO re-verified
exhaustively over all tournaments n=4..6, removing the dependence. See
05-knowledge/results/thm478_adversarial_recheck_macmini_0611.out, 67 PASS 0 FAIL.)
Equality for all n is HYP-2406.
**Provenance:** mac-mini-2026-06-11-S1 (Reed–Muller dispatch). Builds on:
Grinberg–Stanley 2023 (H ≡ 1 + 2·c_odd mod 4, c_odd = # nontrivial odd directed
cycles), THM-163 (band limit D = 2⌊(n-1)/2⌋ for H in the arc model), THM-466
(kind-pasteur: 2-adic digits of H are odd-cycle collection counts), T779.

## Statement

View H as a function on the tiling cube F_2^m (m = C(n-1,2); fixed base path,
tile bits = non-base arcs). Write digit_k for the k-th binary digit of H, a
Boolean function on F_2^m, and let D = 2⌊(n-1)/2⌋.

1. **(Rédei = repetition.)** digit_0 ≡ 1: the constant function, RM(0,m) — the
   repetition-code end of the Reed–Muller ladder.
2. **(Degree law.)** digit_1 (= c_odd mod 2, by Grinberg–Stanley) has GF(2) ANF
   degree ≤ D, i.e. digit_1 ∈ RM(D, m). Equality holds at n = 4, 5, 6, 7
   (degrees 2, 4, 4, 6) — conjecturally all n (HYP-2406). Notably this equals the
   REAL Walsh degree of the integer function H itself (verified 2, 4, 4, 6 in the
   tiling model at n = 4..7): the mod-4 shadow is as high-degree as the full
   function, no higher.
3. **(Dual/flat annihilation — the RM(r)^⊥ = RM(m-r-1) statement.)** For every
   (D+1)-dimensional affine flat F ⊆ F_2^m:  ⊕_{x ∈ F} digit_1(x) = 0.
   (Indicators of (D+1)-flats are the minimum-weight codewords of RM(m-D-1,m) =
   RM(D,m)^⊥, and they generate it, so this family of XOR-recurrences is
   EQUIVALENT to the degree bound.) Equivalently: all (D+1)-fold finite
   differences of H mod 4 vanish — H mod 4 on any subcube of dimension D+1 is
   determined by any 2^{D+1} - 1 of its corners.
4. **(Saturation above.)** The structured zone is shallow: digit_2 has degrees
   3, 6, 7, 11 at n = 4..7 and digits k ≥ 3 saturate to ≥ m-1 (full or near-full
   degree). The 2-adic depth filtration of H enters the Reed–Muller hierarchy at

## Notes for the formalizer

(none yet)
