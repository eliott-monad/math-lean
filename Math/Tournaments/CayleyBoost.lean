/-
# Tournaments — Cayley boost spectrum of the flip chain

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-251-cayley-boost-spectrum.md` (source commit `9f7fc6e`).

This file formalizes the algebraic core of THM-251.  The random single-bit flip
chain on an `m`-dimensional Boolean tiling cube has eigenvalues
`λₖ = (m - 2k) / m`; the Cayley transform `Q(x) = (1+x)/(1-x)` sends the
nontrivial modes to the reciprocal-paired boost values `(m-k)/k`.
-/
import Mathlib

namespace Math.Tournaments

/-- The `k`th eigenvalue `(m - 2k) / m` of the normalized flip-chain operator. -/
def flipChainEigenvalue (m k : ℚ) : ℚ :=
  (m - 2 * k) / m

/-- The Cayley transform `Q(x) = (1+x)/(1-x)`. -/
def cayleyTransform (x : ℚ) : ℚ :=
  (1 + x) / (1 - x)

/-- The boost coordinate predicted by THM-251: `Q(λₖ) = (m-k)/k`. -/
def cayleyBoost (m k : ℚ) : ℚ :=
  (m - k) / k

/--
**THM-251, Cayley boost spectrum.**  Away from the trivial `k = 0` pole, the
Cayley transform sends the flip-chain eigenvalue
`λₖ = (m - 2k)/m` to the rational boost `(m-k)/k`.
-/
theorem cayleyTransform_flipChainEigenvalue (m k : ℚ) (hm : m ≠ 0) (hk : k ≠ 0) :
    cayleyTransform (flipChainEigenvalue m k) = cayleyBoost m k := by
  unfold cayleyTransform flipChainEigenvalue cayleyBoost
  field_simp [hm, hk]
  ring

/-- The bottom mode `k = m` maps to boost `0`, matching `Q(λ_m) = Q(-1) = 0`. -/
theorem cayleyTransform_flipChainEigenvalue_top (m : ℚ) (hm : m ≠ 0) :
    cayleyTransform (flipChainEigenvalue m m) = 0 := by
  unfold cayleyTransform flipChainEigenvalue
  field_simp [hm]
  ring

/--
**THM-251, functional equation.**  Mirror modes `k` and `m-k` have reciprocal
Cayley boosts.
-/
theorem cayleyBoost_mul_mirror (m k : ℚ) (hk : k ≠ 0) (hmk : m - k ≠ 0) :
    cayleyBoost m k * cayleyBoost m (m - k) = 1 := by
  unfold cayleyBoost
  field_simp [hk, hmk]
  ring

/--
The same functional equation stated directly for the Cayley-transformed
eigenvalues.
-/
theorem cayleyTransform_flipChainEigenvalue_mul_mirror
    (m k : ℚ) (hm : m ≠ 0) (hk : k ≠ 0) (hmk : m - k ≠ 0) :
    cayleyTransform (flipChainEigenvalue m k) *
        cayleyTransform (flipChainEigenvalue m (m - k)) = 1 := by
  rw [cayleyTransform_flipChainEigenvalue m k hm hk]
  rw [cayleyTransform_flipChainEigenvalue m (m - k) hm hmk]
  exact cayleyBoost_mul_mirror m k hk hmk

end Math.Tournaments
