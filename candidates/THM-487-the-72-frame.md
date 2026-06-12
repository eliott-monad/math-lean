---
id: THM-487-the-72-frame
source: 01-canon/theorems/THM-487-the-72-frame.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-487: the [72,36,16] frame — its extremal enumerator is positive, its lattice exists, so the obstruction is purely code-combinatorial (and the Paley gauge route stalls at d=12)

**Status:** VERIFIED (the enumerator facts, exact) + LITERATURE-PINNED (SOTA, with
DOIs from the recon round) + framing (the obstruction localization). No new
theorem about existence is claimed — this is the precise statement of WHERE the
problem lives, sharpening OPEN-Q-061/HYP-2415.
**Source:** kind-pasteur-2026-06-11-S3 (HYP-2421). Uses THM-489 (the η-bridge and
n = 3696), THM-481 (the Paley/eQR gauge), THM-484/claudebox (the 72-as-3·Δ gate).

## A. The enumerator is not the obstruction (VERIFIED)

The extremal Type II enumerator W₇₂ (the unique Gleason-invariant degree-72
enumerator with A₄ = … = A₁₂ = 0, minimum weight 16) has
  A₀ = 1, **A₁₆ = 249849** (Sloane's value), A₂₀ = 18106704, …, all coefficients
  POSITIVE (built exactly from W_{ê₈}, P₂₄; full vector in the .out).
By THM-489 C the first negative coefficient in the extremal Type II family appears
only at **n = 3696** (Zhang's exact threshold, reproduced). Length 72 = m·24 with
m = 3 sits FAR below — so:

> The obstruction to a [72,36,16] code is NOT weight-enumerator positivity, NOT
> the Mallows–Sloane bound (it is the bound, and attainable as a polynomial), and
> NOT Rains' shadow bound (72 ≡ 0 mod 24, no shadow penalty). The extremal W₇₂ is
> a bona-fide non-negative integer enumerator. The obstruction, if the code does
> not exist, is purely **code-combinatorial existence** — a question about ℤ₂
> realizability, not modular forms.

This is the asymmetry with the LATTICE side, which is SOLVED: Nebe's extremal
even unimodular Γ₇₂ (min 8) exists (arXiv:1008.2862; Crelle 673 (2012) 237–247),
built as Barnes ⊗ Leech over ℤ[(1+√−7)/2] with (PSL₂(7)×SL₂(25)):2 ⊆ Aut. The
modular-form-side enumerator/theta is non-negative and realized by a lattice;
only the binary-code realization is open.

## B. The Paley/eQR gauge route reaches exactly d = 12 (VERIFIED, THM-481)

72 = q+1 at the prime q = 71 ≡ 7 (mod 8), so THM-481's tournament-gauge identity
applies: C(border(Paley₇₁)) = eQR(72), a Type II self-dual [72,36] code — but with
**d = 12, not 16** (eQR(72) is the classical d=12 code, Aut ⊇ PSL₂(71)). This is
the FIRST failure of the eQR extremal ladder: extremal at lengths 8, 24, 32, 48
(d = 4,8,8,12 = 4⌊n/24⌋+4), the Paley gauge stops being extremal at 72. The
symmetry that makes the eQR codes natural (a transitive PSL₂ action) is exactly

## Notes for the formalizer

(none yet)
