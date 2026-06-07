/-
# The n = 2p CRT fiber bundle: the p-clock base section, and doubling = the cube root on the 7-fiber

Provenance: `eliottcassidy2000/math` — HYP-2318 (S640).  Extends the "fiber bundle over the 7-runner
base" idea (external prompt; refined by HYP-2346/S643 and HYP-2317/S639) into the general composite case
`n = 2p` (`p` an odd prime), `ℤ/2p ≅ ℤ/2 × ℤ/7` by CRT.

**Base section (formalized here, general `p`).**  At the *p-clock* time `t = b/p` (`gcd(b,p)=1`), a runner
of speed `v` has clock distance `‖v·b/p‖ = (1/p)·min(s, p−s)` where `s = (v·b) mod p`.  If `p ∤ v` then
`s ≠ 0`, so `min(s, p−s) ≥ 1` and the clock distance is `≥ 1/p`.  For `n = 2p` the loneliness threshold
is `δ = 1/(2p)`, and `1/p = 2δ > δ`: **every non-multiple-of-`p` runner is automatically clear at the
p-clock, with a factor-2 margin.**  So `LRC(p)` (the base, proven for small `p`) handles all
non-mult-of-`p` runners; the *only* obstruction is the **mult-of-`p` fiber** (HYP-2346).  `pclock_margin`
is exactly `min(s, p−s) ≥ 1` for `s ≠ 0`.

**Fiber automorphism = the cube root (`p = 7`).**  The doubling map `t ↦ 2t` (the `2` of `14 = 2·7`)
permutes the 7-clock by multiplication-by-2, which has order `ord₇(2) = 3` — a **cube root / 3-cycle**.
Its two orbits on `(ℤ/7)\{0}` are `{1,2,4}` and `{3,6,5}` = the **quadratic-residue / non-residue cosets
= the Paley-7 connection set** (`PaleyRado.paleySet`, S638) = the cube roots of unity `μ₃` and their
complement.  So the fiber's symmetry is the same `ω`-resonance the whole arc converges on (`7 = Φ₃(2) =
N(3+ω)`), and the "2-and-3 seam" of `14 = 2·7` (HYP-2225) is literally: the half-turn `7` carries the
`ℤ/2` part (a mod-2 detector, blind to the fiber — S639), while doubling `2` carries the `ℤ/7` part as
the cube root.
-/
import Mathlib
import Math.Tournaments.PaleyRado

namespace Math.LonelyRunner

open Math.Tournaments (paleySet)

/-- **The p-clock base section.**  For a nonzero residue `s` mod `p`, `min(s, p − s) ≥ 1`; i.e. the clock
distance `‖·/p‖ = min(s,p−s)/p` of any non-multiple-of-`p` runner at the p-clock is `≥ 1/p`.  For
`n = 2p` this is `2δ > δ`, so `LRC(p)` clears every non-mult-of-`p` runner — the fiber bundle has a
section over the proven base. -/
theorem pclock_margin {p : ℕ} [NeZero p] (s : ZMod p) (hs : s ≠ 0) :
    1 ≤ min s.val (p - s.val) := by
  have h1 : 0 < s.val := (ZMod.val_pos).mpr hs
  have h2 : s.val < p := ZMod.val_lt s
  exact le_min h1 (by omega)

/-- **Doubling is a cube root on the 7-fiber.**  `2³ = 1` in `ℤ/7`: the doubling map `t ↦ 2t` (the `2` of
`14 = 2·7`) has order dividing 3 — the `ord₇(2) = 3` cube-root / 3-cycle structure. -/
theorem seven_doubling_cube : (2 : ZMod 7) ^ 3 = 1 := by decide

theorem seven_doubling_ne_one : (2 : ZMod 7) ≠ 1 := by decide

/-- **Doubling's 3-cycle on the quadratic residues.**  `(1 → 2 → 4 → 1)` — the orbit of `1` under `×2`
is `{1,2,4}`. -/
theorem doubling_threecycle_QR :
    (2 : ZMod 7) * 1 = 2 ∧ (2 : ZMod 7) * 2 = 4 ∧ (2 : ZMod 7) * 4 = 1 := by decide

/-- **Doubling's 3-cycle on the non-residues.**  `(3 → 6 → 5 → 3)`. -/
theorem doubling_threecycle_nonQR :
    (2 : ZMod 7) * 3 = 6 ∧ (2 : ZMod 7) * 6 = 5 ∧ (2 : ZMod 7) * 5 = 3 := by decide

/-- **The doubling orbit of `1` is the Paley connection set.**  `{1,2,4} = paleySet` (S638) = the
quadratic residues = the cube roots of unity `μ₃`.  So the 7-fiber's doubling automorphism *is* the
Paley/cube-root structure — the `2`-and-`3` seam of `14 = 2·7` (HYP-2225). -/
theorem doubling_orbit_eq_paley : ({1, 2, 4} : Finset (ZMod 7)) = paleySet := by decide

end Math.LonelyRunner
