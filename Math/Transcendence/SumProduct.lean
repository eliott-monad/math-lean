/-
# The additive–multiplicative exclusion: a pair is algebraic iff its sum AND product are both nice

Provenance: `eliottcassidy2000/math` — HYP-2270 (S629).  `π + e` and `π · e` cannot both be rational: their
(sum, product) are the elementary symmetric functions of `{π, e}`, the coefficients of
`(X − π)(X − e) = X² − (π+e)X + πe`; if both were rational, `π` and `e` would be roots of a rational quadratic, hence
algebraic — contradicting transcendence (Lindemann).  So **at least one of the additive invariant `π+e` and the
multiplicative invariant `π·e` is irrational.**  This is the **additive–multiplicative complementarity**: the sum and
product cannot both collapse to `ℚ` unless the pair is tame — the same exclusion as the LRC's additive resonance
(`Σ mᵢ vᵢ = 0`) vs the multiplicative cycle (`2^K = 3^L`), the `α₁` (sum) vs `α₂` (product) of the independence
polynomial, and rational/irrational ↔ even/odd ↔ addition/multiplication.  (The general lemma is formalized here over
`ℚ`; the `π, e` instance is its application to any transcendental — Lindemann's `π` — and is recorded in the docstring
of `not_sum_and_prod_rat_of_transcendental`.)
-/
import Mathlib

namespace Math.Transcendence

open Polynomial

/-- **The Vieta root.**  If the sum `a+b` and product `a·b` of two reals are both rational, then `a` is algebraic over
`ℚ` — a root of the rational quadratic `X² − (a+b)X + ab`.  The additive and multiplicative invariants cannot both be
rational unless the pair is algebraic. -/
theorem isAlgebraic_of_sum_prod_rat {a b : ℝ} {s p : ℚ}
    (hs : (s : ℝ) = a + b) (hp : (p : ℝ) = a * b) : IsAlgebraic ℚ a := by
  refine ⟨X ^ 2 - C s * X + C p, ?_, ?_⟩
  · intro h
    have h2 : (X ^ 2 - C s * X + C p : ℚ[X]).coeff 2 = (0 : ℚ[X]).coeff 2 := by rw [h]
    simp [coeff_X_pow] at h2
  · rw [map_add, map_sub, map_mul, map_pow, aeval_X, aeval_C, aeval_C,
      eq_ratCast (algebraMap ℚ ℝ) s, eq_ratCast (algebraMap ℚ ℝ) p, hs, hp]
    ring

/-- **The additive–multiplicative exclusion.**  If `a` is transcendental over `ℚ`, then for any `b` the sum `a+b` and
the product `a·b` are NOT both rational: at least one is irrational.  Applied to `a = π` (transcendental, Lindemann)
and `b = e`, this is the classical fact that `π + e` and `π · e` are not both rational. -/
theorem not_sum_and_prod_rat_of_transcendental {a b : ℝ} (ha : Transcendental ℚ a) :
    ¬ (∃ s p : ℚ, (s : ℝ) = a + b ∧ (p : ℝ) = a * b) := by
  rintro ⟨s, p, hs, hp⟩
  exact ha (isAlgebraic_of_sum_prod_rat hs hp)

end Math.Transcendence
