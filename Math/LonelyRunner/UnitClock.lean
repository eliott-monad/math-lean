/-
# Lonely Runner — the unit-clock sieve handles every config with no speed divisible by n

Provenance: `eliottcassidy2000/math` — HYP-2170 / S611 (the reduction of LRC(n) to the
multiple-of-n configs). At a unit clock `t = a/n` (`gcd(a,n)=1`), runner `v` sits at the origin
(`‖v·a/n‖ < 1/n`, i.e. at distance 0) iff `n ∣ v·a`, and since `gcd(a,n)=1` that is iff `n ∣ v`.
So a speed set with no multiple of `n` has *no* runner at the origin at any unit clock — every
runner is at distance `≥ 1/n`, i.e. the config is lonely there (LRC holds), elementarily. This
formalizes the arithmetic core: the "danger set" at a unit clock is empty.

The whole difficulty of LRC(n) is therefore the residual — configs that DO contain a multiple of
`n` (the `d=n` divisor-block / the apex), handled by the owner-congruence machinery
(`OwnerCongruence.lean`, the large-owner CRT automaton).
-/
import Mathlib

namespace Math.LonelyRunner

/-- **The arithmetic core of the unit-clock sieve.** If `gcd(a,n)=1` and `n ∤ v`, then `n ∤ v·a`:
the runner `v` does not sit at the origin at the clock `t = a/n`. (`‖v·a/n‖ ≥ 1/n ⇔ n ∤ v·a`.) -/
theorem not_dvd_mul_of_coprime {n a v : ℕ} (hcop : Nat.Coprime a n) (hv : ¬ n ∣ v) :
    ¬ n ∣ v * a := by
  intro h
  exact hv (hcop.symm.dvd_of_dvd_mul_right h)

/-- **The unit-clock sieve (loneliness for no-multiple configs).** If `gcd(a,n)=1` and no speed in
`V` is divisible by `n`, then no runner sits at the origin at `t = a/n` — every `v ∈ V` satisfies
`n ∤ v·a`, i.e. the config is lonely at that unit clock (gap `≥ 1/n`). -/
theorem lonely_at_unit_clock {n a : ℕ} (hcop : Nat.Coprime a n) {V : Finset ℕ}
    (hV : ∀ v ∈ V, ¬ n ∣ v) : ∀ v ∈ V, ¬ n ∣ v * a :=
  fun v hv => not_dvd_mul_of_coprime hcop (hV v hv)

/-- The danger set (runners at the origin) at a unit clock is **empty** when no speed is a multiple
of `n`. This is the formal "LRC holds trivially off the residual": only configs containing a
multiple of `n` (the `d=n` block) can fail the unit-clock witness. -/
theorem danger_empty_at_unit_clock {n a : ℕ} (hcop : Nat.Coprime a n) {V : Finset ℕ}
    [DecidablePred fun v => n ∣ v * a] (hV : ∀ v ∈ V, ¬ n ∣ v) :
    V.filter (fun v => n ∣ v * a) = ∅ := by
  rw [Finset.filter_eq_empty_iff]
  exact fun v hv => not_dvd_mul_of_coprime hcop (hV v hv)

/-- **n = 14 specialization.** Any speed set with no multiple of 14 is lonely at the clock `t = 1/14`
(no runner at the origin). LRC(14) thus reduces to the configs containing a multiple of 14. -/
theorem lonely_n14_of_no_multiple {V : Finset ℕ} (hV : ∀ v ∈ V, ¬ (14 : ℕ) ∣ v) :
    ∀ v ∈ V, ¬ (14 : ℕ) ∣ v * 1 :=
  lonely_at_unit_clock (by decide) hV

end Math.LonelyRunner
