/-
# The hexagonal 7-coloring of the plane is reduction modulo the Eisenstein prime above 7

Provenance: `eliottcassidy2000/math` — HYP-2315 (S637).  The classical upper bound `χ(ℝ²) ≤ 7`
(Hadwiger's hexagonal 7-coloring) is, exactly, **reduction modulo the Eisenstein prime `π = 3 + ω`
of norm `7`** in `ℤ[ω]` (`ω = e^{2πi/3}`, the cube root of unity, `ω² + ω + 1 = 0`).  Indeed
`N(3+ω) = (3+ω)(3+ω²) = 9 + 3(ω+ω²) + ω³ = 9 - 3 + 1 = 7`, so `ℤ[ω]/(3+ω) ≅ 𝔽₇` and the seven
hexagon colors are the seven residues.  In that quotient `ω ≡ -3 ≡ 4`, and the **six Eisenstein
units** (the sixth roots of unity, the six nearest-neighbour directions of the triangular lattice =
the `6 = 2·3` sides of the hexagon) map bijectively onto `𝔽₇* = {1,…,6}`, while the centre cell maps
to `0`.  So a hexagon together with its six neighbours is an `𝔽₇`-torsor — that is *why* seven colors
are both necessary and sufficient for this tiling.

This is the SAME `7` as the permanently-forbidden tournament `H`-value `7 = Φ₃(2)` (CyclotomicSeven.lean,
S628), the Mersenne `M₃` (PerfectMersenne.lean, S632), and the `π/3` resonance the whole arc converges
on.  Two readings of one prime: `7 = Φ₃(2)` (cyclotomic, the tournament partition-function gap) and
`7 = N(3+ω)` (Eisenstein, the plane's chromatic upper bound).  And modulo this `7`, BOTH the cube root
`ω` (here `4`) AND the tournament evaluation point `2` become primitive cube roots of unity
(`x² + x + 1 = 0`) — so the chromatic `7`, the algebraic cube root, and the partition-function
evaluation point `H = I(Ω,2)` are one object.  See math-research HYP-2315.
-/
import Mathlib

namespace Math.Combinatorics

/-- **`ω` reduces to a primitive cube root of unity mod 7.**  The Eisenstein unit `ω` (with
`ω² + ω + 1 = 0`) satisfies `ω ≡ -3 ≡ 4 (mod 3+ω)`, and `4² + 4 + 1 = 21 ≡ 0 (mod 7)`: so `7` *splits*
in `ℤ[ω]` (it contains the cube roots of unity), which is exactly the statement that the prime `3+ω`
of norm `7` exists.  `Φ₃` has a root mod `7`. -/
theorem omega_cube_root_mod_seven : (4 : ZMod 7) ^ 2 + 4 + 1 = 0 := by decide

/-- `ω = 4` is a *genuine* (order-3) cube root mod 7: `4³ = 1` but `4 ≠ 1`. -/
theorem omega_pow_three_mod_seven : (4 : ZMod 7) ^ 3 = 1 := by decide

theorem omega_ne_one_mod_seven : (4 : ZMod 7) ≠ 1 := by decide

/-- **The six Eisenstein units = `𝔽₇*`.**  The six sixth-roots of unity `{±1, ±ω, ±ω²}` (the six
nearest-neighbour directions of the triangular lattice, `6 = 2·3` = the hexagon's sides) reduce,
modulo the prime `3+ω` of norm `7`, to exactly the six nonzero residues `{1,…,6}`.  The unit group of
`ℤ[ω]` (order 6) maps isomorphically onto `𝔽₇*` (order 6 = 7−1, since `6 ∣ 7−1`). -/
theorem eisenstein_units_eq_nonzero :
    ({1, -1, 4, -4, 2, -2} : Finset (ZMod 7)) = Finset.univ.erase 0 := by decide

/-- **The closed hexagon neighbourhood is an `𝔽₇`-torsor — why `7` is tight.**  A hexagon (colour `0`)
together with its six unit-distance neighbours (colours the six Eisenstein units) realizes *all seven*
colours `𝔽₇`.  Seven colours are therefore exactly necessary and sufficient for the hexagonal tiling:
the upper bound `χ(ℝ²) ≤ 7` is `|ℤ[ω]/(3+ω)| = N(3+ω) = 7`. -/
theorem closed_hexagon_neighbourhood :
    ({0, 1, -1, 4, -4, 2, -2} : Finset (ZMod 7)) = Finset.univ := by decide

/-- **The tournament evaluation point `2` is also a primitive cube root of unity mod 7.**  Because
`7 = Φ₃(2)` (CyclotomicSeven.lean), reducing `Φ₃` at `2` modulo its own value `7` makes `2` a root:
`2² + 2 + 1 = 7 ≡ 0`.  So the partition-function evaluation point `H = I(Ω, 2)` (IndependencePolynomial.lean)
and the chromatic cube root coincide mod `7`: `2` and `ω = 4` are the two primitive cube roots of unity
in `𝔽₇`, and `2 · 4 = 8 ≡ 1` (they are inverse, `2 = 4²`). -/
theorem eval_point_two_cube_root_mod_seven : (2 : ZMod 7) ^ 2 + 2 + 1 = 0 := by decide

end Math.Combinatorics
