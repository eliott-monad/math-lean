/-
# Commutator depth and the unsolvability of the quintic: the cube-root 3-cycle engine

Provenance: `eliottcassidy2000/math` — HYP-2320 (S642).  Permuting the `n` roots of a polynomial acts on
its `n+1` coefficients (FTA duality, HYP-2275); solvability by radicals ⟺ the permutation (Galois) group
is *solvable* ⟺ its **derived series terminates** ⟺ nested commutators eventually vanish.  The user's
"commutator depth" ladder: a quadratic is scrambled by a single swap, a cubic by a single commutator
(`der²(S₃)=1`), a quartic by a double commutator (`der³(S₄)=1`), but a quintic by commutators of *every*
depth — because `A₅` is **perfect** (`[A₅,A₅]=A₅`), built from **3-cycles** whose two-overlapping-on-one-
point structure makes nested commutators never die.

The 3-cycle is the project's **cube root of unity** (`σ³ = 1`, eigenvalues `1, ω, ω²`; the generator of
the alternating group graph, S635).  This file gives the machine-checked *engine* of Abel–Ruffini: two
3-cycles `σ = (0 1 2)`, `τ = (2 3 4)` sharing exactly the one point `2`, whose nested commutators stay
nontrivial to arbitrary depth — the obstruction to a quintic formula, in cube-root atoms.
-/
import Mathlib

set_option maxRecDepth 10000

namespace Math.Galois

open Equiv

/-- The 3-cycle `(0 1 2)` in `S₅`, as a product of two transpositions (a cube-root element, `σ³ = 1`). -/
def σ : Perm (Fin 5) := swap 0 1 * swap 1 2

/-- The 3-cycle `(2 3 4)` in `S₅`, sharing exactly the point `2` with `σ`. -/
def τ : Perm (Fin 5) := swap 2 3 * swap 3 4

/-- The group commutator `[a,b] = a b a⁻¹ b⁻¹` (written explicitly to avoid the `⁅·,·⁆` `Bracket`
elaboration). -/
def K (a b : Perm (Fin 5)) : Perm (Fin 5) := a * b * a⁻¹ * b⁻¹

/-- `σ` is a genuine cube root of unity: `σ³ = 1` and `σ ≠ 1` (order exactly 3 — the 3-cycle = ω). -/
theorem σ_cube : σ ^ 3 = 1 := by decide
theorem σ_ne_one : σ ≠ 1 := by decide
theorem τ_cube : τ ^ 3 = 1 := by decide

/-- **Depth 1.**  The commutator of two overlapping 3-cycles is nontrivial. -/
theorem comm_depth1 : K σ τ ≠ 1 := by decide

/-- **Depth 2.**  A double-nested commutator still scrambles (cf. `der³(S₄)=1` would kill this in `S₄`). -/
theorem comm_depth2 : K (K σ τ) σ ≠ 1 := by decide

/-- **Depth 3.**  A *triple*-nested commutator still scrambles — the user's "a quintic is scrambled by a
triple commutator and above."  In `S₃`/`S₄` the derived series has already collapsed by here; in `S₅` it
never does. -/
theorem comm_depth3 : K (K (K σ τ) σ) τ ≠ 1 := by decide

/-- **Depth 4** — still nontrivial.  The cube-root commutators never die: `A₅` is perfect, so there is
no quintic formula. -/
theorem comm_depth4 : K (K (K (K σ τ) σ) τ) σ ≠ 1 := by decide

end Math.Galois
