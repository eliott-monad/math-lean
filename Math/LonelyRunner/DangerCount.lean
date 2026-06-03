/-
# Lonely Runner — the danger depth is exactly `gcd(j,n) − 1`

Provenance: `eliottcassidy2000/math` — HYP-2170 / HYP-2145 (S599/S611). At clock `t = j/n` the number
of moving runners `v ∈ {1,…,n−1}` sitting at the origin (`n ∣ v·j`) is `gcd(j,n) − 1` — the danger
depth `d(j)`. The clock is lonely (the tight witness) iff `d(j) = 0` iff `gcd(j,n) = 1`. This is the
runner-count companion to the divisor-sum identity in `DangerBlocks.lean`.
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

/-- A runner `v` sits at the origin at clock `j` (`n ∣ v·j`) iff `(n / gcd n j) ∣ v`. -/
theorem dvd_mul_iff_div_gcd_dvd {n j : ℕ} (hn : 0 < n) (v : ℕ) :
    n ∣ v * j ↔ (n / Nat.gcd n j) ∣ v := by
  set g := Nat.gcd n j with hgdef
  have hg : 0 < g := hgdef ▸ Nat.gcd_pos_of_pos_left j hn
  obtain ⟨n', hn'⟩ : g ∣ n := hgdef ▸ Nat.gcd_dvd_left n j
  obtain ⟨j', hj'⟩ : g ∣ j := hgdef ▸ Nat.gcd_dvd_right n j
  have hcop : Nat.Coprime n' j' := by
    have h1 : g * Nat.gcd n' j' = g := by
      rw [← Nat.gcd_mul_left, ← hn', ← hj']
    exact Nat.eq_of_mul_eq_mul_left hg (by rw [Nat.mul_one]; exact h1)
  rw [hn', hj', Nat.mul_div_cancel_left _ hg]
  constructor
  · intro h
    have h2 : g * n' ∣ g * (v * j') := by rwa [show v * (g * j') = g * (v * j') by ring] at h
    exact (hcop.dvd_mul_right).mp ((Nat.mul_dvd_mul_iff_left hg).mp h2)
  · rintro ⟨c, hc⟩
    exact ⟨c * j', by rw [hc]; ring⟩

/-- **The danger depth.** The number of moving runners `v ∈ {1,…,n−1}` at the origin at clock `j` is
`gcd(j,n) − 1`. (Lonely iff this is `0` iff `gcd(j,n) = 1`.) -/
theorem danger_count {n : ℕ} (hn : 0 < n) (j : ℕ) :
    #{v ∈ Finset.Ioc 0 (n - 1) | n ∣ v * j} = Nat.gcd n j - 1 := by
  have hg : 0 < Nat.gcd n j := Nat.gcd_pos_of_pos_left j hn
  have hfilter : {v ∈ Finset.Ioc 0 (n - 1) | n ∣ v * j}
      = {v ∈ Finset.Ioc 0 (n - 1) | (n / Nat.gcd n j) ∣ v} := by
    apply Finset.filter_congr; intro v _; simp only [dvd_mul_iff_div_gcd_dvd hn v]
  rw [hfilter, Nat.Ioc_filter_dvd_card_eq_div]
  obtain ⟨g', hg'⟩ := Nat.gcd_dvd_left n j        -- n = gcd n j * g'
  set g := Nat.gcd n j with hgdef                  -- opaque: no nested rewrites
  have hg'pos : 0 < g' := by
    rcases Nat.eq_zero_or_pos g' with h | h
    · rw [h, Nat.mul_zero] at hg'; omega
    · exact h
  have hnd : n / g = g' := by rw [hg', Nat.mul_div_cancel_left _ hg]
  obtain ⟨G, hG⟩ : ∃ G, g = G + 1 := ⟨g - 1, by omega⟩
  obtain ⟨G', hG'⟩ : ∃ G', g' = G' + 1 := ⟨g' - 1, by omega⟩
  rw [hnd, hg', hG, hG']
  -- ⊢ ((G+1)*(G'+1) - 1) / (G'+1) = (G+1) - 1
  have e : (G + 1) * (G' + 1) = (G' + G * (G' + 1)) + 1 := by ring
  rw [e]
  simp only [Nat.add_sub_cancel]
  rw [Nat.add_mul_div_right _ _ (Nat.succ_pos G'), Nat.div_eq_of_lt (Nat.lt_succ_self G'),
    Nat.zero_add]

end Math.LonelyRunner
