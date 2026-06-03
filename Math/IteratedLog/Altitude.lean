/-
# Iterated logarithms — the geometric-descent heart of the altitude principle

Provenance: `eliottcassidy2000/math` HYP-2180 (S615). Tao-style `loglog`/`logloglog` bounds arise because a
renormalization step contracts some level of the logarithm tower `N, log N, log log N, …`. If the relevant
"altitude" `aᵢ` (e.g. `log` of the value, or the bit-length, or `log` of the bit-length) satisfies a geometric
recurrence with offset `a_{i+1} ≤ ρ·aᵢ + C` with `0 ≤ ρ < 1`, then the altitude falls geometrically to the fixed
neighborhood `C/(1−ρ)`:

    aᵢ ≤ ρⁱ · a₀ + C/(1 − ρ).

So the altitude is driven below any target in `O(log a₀)` steps — and since `a₀` is itself a logarithm of the
original scale `N`, the iteration count is *one more logarithm* than the altitude: the iterated-log depth is the
altitude's tower-level plus one. This file formalizes that algebraic core (no Collatz/LRC specifics — pure
contraction), the reusable engine behind every iterated-log iteration bound.
-/
import Mathlib

namespace Math.IteratedLog

open Finset

variable {a : ℕ → ℝ} {ρ C : ℝ}

/-- **Geometric descent with offset.** If `0 ≤ ρ`, `ρ < 1`, `0 ≤ C`, and the altitude obeys
`a_{i+1} ≤ ρ·aᵢ + C` with `a₀ ≥ 0`, then `aᵢ ≤ ρⁱ·a₀ + C/(1−ρ)` for all `i`: the altitude decays geometrically
to the fixed neighborhood `C/(1−ρ)`. This is the engine that turns "the altitude contracts" into "the iteration
count is a logarithm of the altitude" — hence one extra `log` over the altitude's own tower-level. -/
theorem altitude_descent (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1) (hC : 0 ≤ C)
    (hstep : ∀ i, a (i + 1) ≤ ρ * a i + C) :
    ∀ i, a i ≤ ρ ^ i * a 0 + C / (1 - ρ) := by
  have h1ρ : 0 < 1 - ρ := by linarith
  intro i
  induction i with
  | zero => simp; positivity
  | succ n ih =>
      calc a (n + 1) ≤ ρ * a n + C := hstep n
        _ ≤ ρ * (ρ ^ n * a 0 + C / (1 - ρ)) + C := by
              have := mul_le_mul_of_nonneg_left ih hρ0; linarith
        _ = ρ ^ (n + 1) * a 0 + (ρ * C / (1 - ρ) + C) := by ring
        _ = ρ ^ (n + 1) * a 0 + C / (1 - ρ) := by
              have hne : (1 - ρ) ≠ 0 := ne_of_gt h1ρ
              have : ρ * C / (1 - ρ) + C = C / (1 - ρ) := by field_simp; ring
              rw [this]

/-- **Altitude reaches the fixed neighborhood in logarithmically many steps.** Once `ρⁱ·a₀ ≤ ε` (which holds for
`i ≥ logarithm of a₀`), the altitude is within `ε` of the fixed point `C/(1−ρ)`. Concretely: if
`ρ ^ i * a 0 ≤ ε` then `a i ≤ ε + C/(1−ρ)`. The required `i` is `Θ(log a₀ / log(1/ρ))` — the iterated-log count,
with leading coefficient `1/log(1/ρ)` set by the contraction ratio. -/
theorem altitude_within (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1) (hC : 0 ≤ C)
    (hstep : ∀ i, a (i + 1) ≤ ρ * a i + C) {i : ℕ} {ε : ℝ} (hi : ρ ^ i * a 0 ≤ ε) :
    a i ≤ ε + C / (1 - ρ) := by
  have := altitude_descent hρ0 hρ1 hC hstep i
  linarith

end Math.IteratedLog
