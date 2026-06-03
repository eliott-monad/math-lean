/-
# Lonely Runner — the danger structure block-diagonalizes by divisor

Provenance: `eliottcassidy2000/math` — HYP-2145 / S599 (the divisor-block diagonalization of the
danger), the additive-face backbone behind the `n=2q` rank-1 two-block (HYP-2063/HYP-2150).

On the `n`-clock the arithmetic-progression danger depth at clock `j` is
`d(j) = #{v ∈ (0,n) : n ∣ v·j} = gcd(j,n) − 1`, and the clock is the tight lonely witness iff
`gcd(j,n) = 1`. The key structural fact — the danger is a direct sum of divisor-blocks, one per
divisor `d ∣ n`, each of size `φ(d)` and supported on the multiples of `d` — is the classical
identity `gcd(j,n) = Σ_{d ∣ n, d ∣ j} φ(d)`. We formalize it on Mathlib's `Nat.sum_totient`.
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

/-- **The danger block-diagonalization.** `gcd(j,n) = Σ_{d ∣ n, d ∣ j} φ(d)`: the danger depth
`gcd(j,n)` is the sum over the divisor-blocks of `n` that divide `j`, each weighted by `φ(d)`. The
unit block (`d=1`) is the lonely part; the proper-divisor blocks are the defect; for `n=2q` the
`d=2` block is the rank-`φ(2)=1` apex two-block. -/
theorem gcd_eq_sum_totient_divisors {n : ℕ} (hn : n ≠ 0) (j : ℕ) :
    ((n.divisors.filter (· ∣ j)).sum Nat.totient) = Nat.gcd j n := by
  have hg : Nat.gcd j n ≠ 0 := fun h => hn (Nat.eq_zero_of_gcd_eq_zero_right h)
  have hset : n.divisors.filter (· ∣ j) = (Nat.gcd j n).divisors := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hdn, _⟩, hdj⟩
      exact ⟨Nat.dvd_gcd hdj hdn, hg⟩
    · rintro ⟨hdg, _⟩
      obtain ⟨hdj, hdn⟩ := Nat.dvd_gcd_iff.mp hdg
      exact ⟨⟨hdn, hn⟩, hdj⟩
  rw [hset, Nat.sum_totient]

/-- The lonely (tight-witness) clocks are exactly the units: `gcd(j,n)=1` makes every proper-divisor
block vanish, so the danger sum collapses to the unit block `φ(1)=1`. -/
theorem danger_sum_eq_one_iff_coprime {n : ℕ} (hn : n ≠ 0) (j : ℕ) :
    ((n.divisors.filter (· ∣ j)).sum Nat.totient) = 1 ↔ Nat.Coprime j n := by
  rw [gcd_eq_sum_totient_divisors hn]

end Math.LonelyRunner
