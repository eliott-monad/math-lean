/-
# Lonely Runner — the danger depth is exactly `gcd(j,n) − 1`

Provenance: `eliottcassidy2000/math` — HYP-2170 / HYP-2145 (S599/S611) and
`01-canon/theorems/THM-403-cyclotomic-witness-orbit-of-the-AP.md`. At clock `t = j/n` the
number of moving runners `v ∈ {1,…,n−1}` sitting at the origin (`n ∣ v·j`) is
`gcd(j,n) − 1` — the danger depth `d(j)`. The clock is lonely (the tight witness) iff
`d(j) = 0` iff `gcd(j,n) = 1`. For the arithmetic-progression speed set `AP = {1,…,n−1}`,
this gives exactly the unit/cyclotomic witness orbit: `j/n` is a floor witness iff
`gcd(j,n)=1`, so there are `φ(n)` such clocks.
-/
import Mathlib
import Math.LonelyRunner.UnitClock

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

/-! ## The AP witness orbit -/

/-- `APWitness n j` means that the clock `j/n` is a floor witness for the arithmetic-progression
speed set `{1, ..., n-1}` in the purely arithmetic sense: no AP speed lies at the origin. -/
def APWitness (n j : ℕ) : Prop :=
  ∀ v, 1 ≤ v → v < n → ¬ n ∣ v * j

/-- **THM-403(a), arithmetic form.** For the arithmetic-progression speed set `{1, ..., n-1}`,
the unit clock `j/n` is a floor witness exactly when `j` is coprime to `n`. -/
theorem apWitness_iff_coprime {n j : ℕ} (hn : 0 < n) :
    APWitness n j ↔ Nat.Coprime j n := by
  constructor
  · intro h
    have hcard : #{v ∈ Finset.Ioc 0 (n - 1) | n ∣ v * j} = 0 := by
      rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
      intro v hv hdvd
      rw [Finset.mem_Ioc] at hv
      obtain ⟨h0v, hvle⟩ := hv
      exact h v (by omega) (by omega) hdvd
    have hgsub : Nat.gcd n j - 1 = 0 := by
      simpa [danger_count hn j] using hcard
    have hgpos : 0 < Nat.gcd n j := Nat.gcd_pos_of_pos_left j hn
    have hg : Nat.gcd n j = 1 := by omega
    exact Nat.coprime_iff_gcd_eq_one.mpr (by simpa [Nat.gcd_comm] using hg)
  · intro hcop v hv1 hvlt
    have hvndvd : ¬ n ∣ v := by
      rintro ⟨k, hk⟩
      rcases k with _ | k
      · simp at hk
        omega
      · have hkpos : 1 ≤ k.succ := Nat.succ_pos k
        have hle : n ≤ v := by
          rw [hk]
          exact Nat.le_mul_of_pos_right n hkpos
        omega
    exact not_dvd_mul_of_coprime hcop hvndvd

/-- The finite set of AP floor witnesses on the `n`-clock. -/
noncomputable def APWitnesses (n : ℕ) : Finset ℕ :=
  by
    classical
    exact (Finset.range n).filter (fun j => APWitness n j)

/-- **THM-403(b), cardinal form.** The AP has exactly `φ(n)` floor witnesses on the `n`-clock,
matching the primitive `n`-th-root/unit orbit. -/
theorem apWitnesses_card (n : ℕ) (hn : 0 < n) :
    (APWitnesses n).card = Nat.totient n := by
  classical
  rw [APWitnesses, Nat.totient_eq_card_coprime]
  have hset :
      (Finset.range n).filter (fun j => APWitness n j) =
        (Finset.range n).filter (fun j => n.Coprime j) := by
    apply Finset.ext
    intro j
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · rintro ⟨hj, hw⟩
      exact ⟨hj, ((apWitness_iff_coprime hn).mp hw).symm⟩
    · rintro ⟨hj, hc⟩
      exact ⟨hj, (apWitness_iff_coprime hn).mpr hc.symm⟩
  rw [hset]

end Math.LonelyRunner
