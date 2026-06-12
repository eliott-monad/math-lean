---
id: THM-484-involution-modulus-24
source: 01-canon/theorems/THM-484-involution-modulus-24.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-484 — The involution modulus 24: the arithmetic source of the 8/24 Gleason orders

**Status:** PROVED (claudebox-2026-06-11-S4) + VERIFIED. The arithmetic (parts 1-2) is
classical; the contribution is the BRIDGE: identifying 24 = the maximal involution modulus
as the common source of the lengths 8 and 24 of the two Gleason Type II generators, both of
which THM-480/481 realize as Paley tournament gauges, and the additive/multiplicative
grading of those two code families.
**Provenance:** claudebox-2026-06-11-S4, user dispatch (p²≡1 mod 24 + the happy-number
8-cycle puzzle). **Companions:** THM-480 (ê₈ = C(I+S(Paley₇)) = RM(1,3)), THM-481 (g₂₄ =
C(I+S(Paley₂₃)); eQR ladder), THM-482 (doubling thermalizes to d⁺), HYP-2415 ([72,36,16]),
THM-447 (skew-Walsh doubling). **Classical context (cited):** the 24 of η²⁴/Leech/Δ and of
the Gleason ring's second generator W_{g₂₄} (Conway–Sloane SPLAG; Gleason 1970).

## Part 1 — The maximal involution modulus (elementary, verified)

For p coprime to 24, p² ≡ 1 (mod 24): p is coprime to 8 ⟹ p² ≡ 1 (mod 8); p coprime to 3 ⟹
p² ≡ 1 (mod 3); CRT. Equivalently (ℤ/24)* has exponent 2.

**24 is the LARGEST n with (ℤ/n)* of exponent ≤ 2.** Proof: (ℤ/n)* has exponent ≤ 2 iff
every unit is its own inverse iff n | 24. (The 2-part: (ℤ/2^k)* is cyclic·(ℤ/2^{k-2}) for
k≥3, exponent 2 only for 2^k | 8; the p-part for odd p: (ℤ/p^k)* cyclic of order
p^{k-1}(p-1), exponent ≤2 only for p=3, k=1. So n | 8·3 = 24.) Verified: exponent-2 moduli =
{1,2,3,4,6,8,12,24}, max 24.

**Consequence:** φ(24) = 8 and (ℤ/24)* = {1,5,7,11,13,17,19,23} ≅ 𝔽₂³ — the elementary
abelian group of order 8, all eight units involutions.

## Part 2 — The two Gleason generators sit at φ(24) and 24

Gleason's theorem: every Type II (doubly-even self-dual) weight enumerator lies in
ℂ[W_{ê₈}, W_{g₂₄}], generators of degrees **8 and 24** (Molien 1/((1−t⁸)(1−t²⁴)),
Clifford–Weil group order 192 = 8·24). Both lengths are read off the involution modulus:
**8 = φ(24)** and **24** itself. THM-480/481 realize both generators as Paley tournament
gauges:
- ê₈ = C(I+S(Paley₇)) = RM(1,3): its 8 coordinates are the points of 𝔽₂³ ≅ (ℤ/24)* — the
  eight involutions index the first generator.
- g₂₄ = C(I+S(Paley₂₃)): length 24 = the modulus; defining prime **23 ≡ −1 (mod 24)**, the
  antipode unit (the σ:v↦−v involution of the perspective key, at the top of the modulus).

So the full Type II weight-enumerator ring is generated at the two scales {φ(24), 24} of the

## Notes for the formalizer

(none yet)
