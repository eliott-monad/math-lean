/-
# The arithmetic of √−19: why 19 is the Heegner/CM frontier of LRC, and prime-hard for fibers

Provenance: `eliottcassidy2000/math` — HYP-2328 (S650).  The 19-runner LRC (S649) has its rational
witnesses `t = j/19` in the cyclotomic field `ℚ(ζ₁₉)`, whose **quadratic subfield is the Heegner field
`ℚ(√−19)`** (since `19 ≡ 3 (mod 4)`, the quadratic Gauss sum mod 19 squares to `−19`).  `ℚ(√−19)` has
**class number 1** — the conjectural `χ = 5` chromatic step in the Moser/Heegner tower
`√−3 → √−11 → √−19` (S687/S641).  This file formalizes the arithmetic core distinguishing 19:

* **`−1` is a non-square mod 19** (`19 ≡ 3 mod 4`): so the Gauss sum gives `√−19` (not `√19`), and the
  Paley-19 tournament exists (`σ`-self-converse, S638).
* **`2` is a non-square mod 19** (`2` is a primitive root): so `⟨2⟩ = (ℤ/19)* ≠ QR`, there is **no
  doubling sub-shell**, and the `n = 14` fiber reduction (S640) has *no analogue* at the prime 19.
* **Exactly `9 = (19−1)/2` quadratic residues** (the Paley connection set size; the `√−19` index-2 level).
-/
import Mathlib

namespace Math.NumberTheory

/-- **`−1` is a non-square mod 19** (`19 ≡ 3 mod 4`).  Hence the quadratic Gauss sum mod 19 squares to
`−19`, the quadratic subfield of `ℚ(ζ₁₉)` is the Heegner field `ℚ(√−19)`, and the Paley-19 tournament
exists (S638). -/
theorem neg_one_nonsquare_mod19 : ¬ IsSquare (-1 : ZMod 19) := by decide

/-- **`2` is a non-square mod 19** (`2` is a primitive root mod 19).  So `⟨2⟩ = (ℤ/19)* ≠ QR`: there is no
doubling sub-shell, and the `n = 14` fiber reduction has no analogue at the prime 19 (`19` is
*prime-hard* for divisor/fiber methods). -/
theorem two_nonsquare_mod19 : ¬ IsSquare (2 : ZMod 19) := by decide

/-- Euler's criterion at 2: `2^9 = −1` in `ℤ/19` — the same non-residue fact, in power form. -/
theorem two_pow_nine_mod19 : (2 : ZMod 19) ^ 9 = -1 := by decide

/-- **Exactly `9 = (19−1)/2` nonzero quadratic residues mod 19** — the Paley-19 connection-set size, the
index-2 (`√−19`) level of `(ℤ/19)*`. -/
theorem card_qr_mod19 :
    (Finset.univ.filter (fun a : ZMod 19 => a ≠ 0 ∧ IsSquare a)).card = 9 := by decide

end Math.NumberTheory
