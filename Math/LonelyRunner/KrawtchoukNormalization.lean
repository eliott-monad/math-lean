/-
# Lonely Runner — Krawtchouk normalization of the lonely measure

Provenance: `eliottcassidy2000/math` — HYP-2210 (S620). The covering-depth distribution (HYP-2195/2200) is a
**weight enumerator**: at clock `t` the codeword is `X(t) = (1_{A₁}(t), …, 1_{Aₙ}(t)) ∈ {0,1}ⁿ` and `depth(t)` is
its Hamming weight, so the lonely measure `p₀ = meas{depth = 0}` is the weight-0 coefficient.  Writing the `±1`
characters `sᵢ = 1 − 2·1_{Aᵢ}`, Fourier inversion on the cube gives the **Krawtchouk normalization**

    2ⁿ · ∏ᵢ (1 − xᵢ)  =  ∑_{S ⊆ [n]} ∏_{i∈S} (1 − 2 xᵢ),

i.e. `p₀ = (1/2ⁿ) ∑_S R_S` with `R_S = E_t ∏_{i∈S} (1 − 2·1_{Aᵢ})` the subset resonance correlation.  Grouping by
`|S| = k` gives `p₀ = (1/2ⁿ) ∑_k ρ_k`, `ρ_k = ∑_w K_k(n,w) p_w` the Krawtchouk transform of the depth distribution
(`K` = `Math.Krawtchouk.K`).  Levels `k = 0,1` sit at the independent baseline; all resonance lives in `ρ_{k≥2}`,
and loneliness `p₀ > 0` is the Krawtchouk-positivity (Delsarte-LP) condition.  This file formalizes the algebraic
identity, the `2ⁿ` being the Krawtchouk normalization.
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

variable {ι R : Type*} [CommRing R]

/-- **Krawtchouk normalization of the lonely indicator.**  `2^{|s|} · ∏ (1 − xᵢ) = ∑_{t ⊆ s} ∏_{i∈t} (1 − 2 xᵢ)`:
the (normalized) lonely measure is the sum of the subset resonance characters `∏_{i∈t}(1 − 2xᵢ)`.  Grouping the
right side by `|t| = k` is the Krawtchouk transform `ρ_k` of the depth distribution; `p₀ = (1/2ⁿ) ∑_k ρ_k`. -/
theorem two_pow_mul_prod_one_sub [DecidableEq ι] (s : Finset ι) (x : ι → R) :
    2 ^ s.card * ∏ i ∈ s, (1 - x i) = ∑ t ∈ s.powerset, ∏ i ∈ t, (1 - 2 * x i) := by
  have h2 : (2 : R) ^ s.card = ∏ _i ∈ s, (2 : R) := (Finset.prod_const 2).symm
  rw [h2, ← Finset.prod_mul_distrib]
  have hcong : ∏ i ∈ s, (2 * (1 - x i)) = ∏ i ∈ s, ((1 - 2 * x i) + 1) :=
    Finset.prod_congr rfl (fun i _ => by ring)
  rw [hcong, Finset.prod_add]
  refine Finset.sum_congr rfl (fun t ht => ?_)
  rw [Finset.prod_const_one, mul_one]

/-- **Level-0 resonance is the trivial baseline.**  The `|t| = 0` (empty-subset) term is `1`; together with the
level-1 terms `∑ᵢ (1 − 2 xᵢ)` these match the independent binomial exactly (verified: `ρ₀, ρ₁` carry zero excess),
so all genuine resonance (deviation from independence) lives in levels `k ≥ 2`. -/
theorem char_sum_level_zero (x : ι → R) :
    ∏ i ∈ (∅ : Finset ι), (1 - 2 * x i) = 1 := by simp

end Math.LonelyRunner
