/-
# The half-tiling is the complement-quotient fundamental domain (quarter-square count)

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-549-halftiling-complement-quotient.md` (source_commit `808d9d41`).

In the tiling model, an `n`-vertex tournament fixes the base path `n → … → 1` and orients
each remaining **tile** — an arc `(x, y)` with `x > y` and gap `x - y ≥ 2`.  There are
`C(n-1, 2)` tiles.  The grid reflection `σ(x, y) = (n+1-y, n+1-x)` is, in these tile
coordinates, the complement (converse) involution `φ(Tᵒᵖ)` of THM-280 (reverse all arcs,
relabel `i ↦ n+1-i`).  THM-549 studies its fundamental domain — the **half-tiling**.

This file formalizes the tile-coordinate geometry of `σ`:

* `gridRefl_mem` / `gridRefl_involutive`: `σ` is an involution of the tile set;
* `gridRefl_fixed_iff`: its fixed tiles are exactly the diagonal `x + y = n + 1`
  (the self-complementary "spine"), and `fixedDiagonal_card` counts them as `⌊(n-1)/2⌋`;
* `halfRegion_card`: the half-tiling `{x + y ≤ n + 1}` has `⌊(n-1)²/4⌋` tiles
  (A002620, the quarter-squares) — splitting (THM-549 item 6) into the perfect **square**
  `k²` for odd `n = 2k+1` (`halfRegion_card_odd`) and the **pronic** rectangle `k(k-1)` for
  even `n = 2k` (`halfRegion_card_even`).
-/
import Mathlib

namespace Math.Tournaments

open Finset

/-- Tiles of the tiling model on `{1, …, n}`: pairs `(x, y)` with `1 ≤ y`, `y + 2 ≤ x ≤ n`
(the non-base-path arcs, gap `≥ 2`). -/
def tiles (n : ℕ) : Finset (ℕ × ℕ) :=
  (Icc 1 n ×ˢ Icc 1 n).filter (fun p => p.2 + 2 ≤ p.1)

lemma mem_tiles {n : ℕ} {p : ℕ × ℕ} :
    p ∈ tiles n ↔ 1 ≤ p.1 ∧ p.1 ≤ n ∧ 1 ≤ p.2 ∧ p.2 ≤ n ∧ p.2 + 2 ≤ p.1 := by
  simp only [tiles, mem_filter, mem_product, mem_Icc]
  tauto

/-- The grid reflection `σ(x, y) = (n+1-y, n+1-x)` — the complement involution in tile
coordinates (THM-280 / THM-549). -/
def gridRefl (n : ℕ) (p : ℕ × ℕ) : ℕ × ℕ := (n + 1 - p.2, n + 1 - p.1)

/-- `σ` maps tiles to tiles. -/
lemma gridRefl_mem {n : ℕ} {p : ℕ × ℕ} (hp : p ∈ tiles n) : gridRefl n p ∈ tiles n := by
  rw [mem_tiles] at hp ⊢
  obtain ⟨h1, h2, h3, h4, h5⟩ := hp
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> simp only [gridRefl] <;> omega

/-- `σ` is an involution on tiles. -/
lemma gridRefl_involutive {n : ℕ} {p : ℕ × ℕ} (hp : p ∈ tiles n) :
    gridRefl n (gridRefl n p) = p := by
  rw [mem_tiles] at hp
  obtain ⟨h1, h2, h3, h4, h5⟩ := hp
  rw [Prod.ext_iff]
  simp only [gridRefl]
  omega

/-- The fixed tiles of `σ` are exactly the diagonal `x + y = n + 1` (the SC spine). -/
lemma gridRefl_fixed_iff {n : ℕ} {p : ℕ × ℕ} (hp : p ∈ tiles n) :
    gridRefl n p = p ↔ p.1 + p.2 = n + 1 := by
  rw [mem_tiles] at hp
  obtain ⟨h1, h2, h3, h4, h5⟩ := hp
  rw [Prod.ext_iff]
  simp only [gridRefl]
  omega

/-- The fixed diagonal `{(x, y) ∈ tiles : x + y = n + 1}`. -/
def fixedDiagonal (n : ℕ) : Finset (ℕ × ℕ) := (tiles n).filter (fun p => p.1 + p.2 = n + 1)

lemma fixedDiagonal_eq_fixed (n : ℕ) :
    (tiles n).filter (fun p => gridRefl n p = p) = fixedDiagonal n := by
  ext p
  simp only [fixedDiagonal, mem_filter]
  constructor
  · rintro ⟨hp, hfix⟩; exact ⟨hp, (gridRefl_fixed_iff hp).mp hfix⟩
  · rintro ⟨hp, hd⟩; exact ⟨hp, (gridRefl_fixed_iff hp).mpr hd⟩

lemma fixedDiagonal_eq_image (n : ℕ) :
    fixedDiagonal n = (Icc 1 ((n - 1) / 2)).image (fun y => (n + 1 - y, y)) := by
  ext ⟨a, b⟩
  simp only [fixedDiagonal, mem_filter, mem_tiles, mem_image, mem_Icc, Prod.mk.injEq]
  constructor
  · rintro ⟨⟨ha1, ha2, hb1, hb2, hab⟩, hsum⟩
    exact ⟨b, ⟨hb1, by omega⟩, by omega, by omega⟩
  · rintro ⟨y, ⟨hy1, hy2⟩, hae, hbe⟩
    subst hbe; subst hae
    refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, ?_⟩ <;> omega

/-- **THM-549 item 1/4.** The fixed diagonal (the self-complementary spine) has `⌊(n-1)/2⌋`
tiles. -/
theorem fixedDiagonal_card (n : ℕ) : (fixedDiagonal n).card = (n - 1) / 2 := by
  rw [fixedDiagonal_eq_image, Finset.card_image_of_injective, Nat.card_Icc]
  · omega
  · intro a b h
    exact ((Prod.mk.injEq _ _ _ _).mp h).2

/-- The half-tiling: the fundamental domain `{x + y ≤ n + 1}` of `σ` (one representative per
2-element orbit, together with the whole fixed diagonal). -/
def halfRegion (n : ℕ) : Finset (ℕ × ℕ) := (tiles n).filter (fun p => p.1 + p.2 ≤ n + 1)

lemma mem_halfRegion {n : ℕ} {p : ℕ × ℕ} :
    p ∈ halfRegion n ↔
      (1 ≤ p.1 ∧ p.1 ≤ n ∧ 1 ≤ p.2 ∧ p.2 ≤ n ∧ p.2 + 2 ≤ p.1) ∧ p.1 + p.2 ≤ n + 1 := by
  simp only [halfRegion, mem_filter, mem_tiles]

/-- The `y`-fiber of the half-tiling is the column `y + 2 ≤ x ≤ n + 1 - y`. -/
lemma halfRegion_fiber (n y : ℕ) (hy : 1 ≤ y) :
    (halfRegion n).filter (fun p => p.2 = y)
      = (Icc (y + 2) (n + 1 - y)).image (fun x => (x, y)) := by
  ext ⟨a, b⟩
  simp only [mem_filter, mem_halfRegion, mem_image, mem_Icc, Prod.mk.injEq]
  constructor
  · rintro ⟨⟨⟨ha1, ha2, hb1, hb2, hab⟩, hsum⟩, hby⟩
    exact ⟨a, ⟨by omega, by omega⟩, by omega, by omega⟩
  · rintro ⟨x, ⟨hx1, hx2⟩, hxa, hyb⟩
    subst hxa; subst hyb
    refine ⟨⟨⟨?_, ?_, ?_, ?_, ?_⟩, ?_⟩, ?_⟩ <;> omega

/-- The half-tiling, decomposed columnwise, has `∑_{y=1}^{n} (n - 2y)` tiles. -/
lemma halfRegion_card_eq_sum (n : ℕ) :
    (halfRegion n).card = ∑ y ∈ Icc 1 n, (n - 2 * y) := by
  rw [Finset.card_eq_sum_card_fiberwise (f := fun p => p.2) (t := Icc 1 n)
        (by
          intro p hp
          obtain ⟨⟨_, _, hb1, hb2, _⟩, _⟩ := mem_halfRegion.mp hp
          show p.2 ∈ Icc 1 n
          rw [mem_Icc]; omega)]
  apply Finset.sum_congr rfl
  intro y hy
  rw [mem_Icc] at hy
  rw [halfRegion_fiber n y hy.1,
      Finset.card_image_of_injective _ (by intro a b h; simpa using h), Nat.card_Icc]
  omega

/-- Reindex a sum over `Icc 1 n` to a sum over `range n`. -/
lemma sum_Icc_one_shift {β : Type*} [AddCommMonoid β] (g : ℕ → β) (n : ℕ) :
    ∑ y ∈ Icc 1 n, g y = ∑ i ∈ range n, g (i + 1) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hins : Icc 1 (n + 1) = insert (n + 1) (Icc 1 n) := by
      ext x; simp only [mem_Icc, mem_insert]; omega
    rw [hins, Finset.sum_insert (by simp), Finset.sum_range_succ, ih, add_comm]

lemma sum_trunc_range (n : ℕ) :
    ∑ y ∈ Icc 1 n, (n - 2 * y) = ∑ i ∈ range n, (n - 2 * (i + 1)) :=
  sum_Icc_one_shift (fun y => n - 2 * y) n

/-- Sum of the first `k` odd numbers is `k²`. -/
lemma sum_odd (k : ℕ) : ∑ i ∈ range k, (2 * i + 1) = k ^ 2 := by
  induction k with
  | zero => simp
  | succ k ih => rw [Finset.sum_range_succ, ih]; ring

/-- **THM-549 item 6 (odd / square).** For odd `n = 2k+1` the half-tiling has `k²` tiles. -/
theorem halfRegion_card_odd (k : ℕ) : (halfRegion (2 * k + 1)).card = k ^ 2 := by
  rw [halfRegion_card_eq_sum, sum_trunc_range]
  have hsub : range k ⊆ range (2 * k + 1) := Finset.range_subset_range.mpr (by omega)
  have hzero : ∀ x ∈ range (2 * k + 1), x ∉ range k → (2 * k + 1 - 2 * (x + 1)) = 0 := by
    intro x _ hx; simp only [mem_range] at hx; omega
  rw [← Finset.sum_subset hsub hzero]
  have hodd : ∑ i ∈ range k, (2 * k + 1 - 2 * (i + 1)) = ∑ i ∈ range k, (2 * i + 1) := by
    rw [← Finset.sum_range_reflect (fun i => 2 * i + 1) k]
    apply Finset.sum_congr rfl
    intro i hi; rw [mem_range] at hi
    show 2 * k + 1 - 2 * (i + 1) = 2 * (k - 1 - i) + 1
    omega
  rw [hodd]
  exact sum_odd k

/-- **THM-549 item 6 (even / pronic).** For even `n = 2k` the half-tiling has `k(k-1)` tiles. -/
theorem halfRegion_card_even (k : ℕ) : (halfRegion (2 * k)).card = k * (k - 1) := by
  rw [halfRegion_card_eq_sum, sum_trunc_range]
  have hsub : range k ⊆ range (2 * k) := Finset.range_subset_range.mpr (by omega)
  have hzero : ∀ x ∈ range (2 * k), x ∉ range k → (2 * k - 2 * (x + 1)) = 0 := by
    intro x _ hx; simp only [mem_range] at hx; omega
  rw [← Finset.sum_subset hsub hzero]
  have heven : ∑ i ∈ range k, (2 * k - 2 * (i + 1)) = ∑ i ∈ range k, (2 * i) := by
    rw [← Finset.sum_range_reflect (fun i => 2 * i) k]
    apply Finset.sum_congr rfl
    intro i hi; rw [mem_range] at hi
    show 2 * k - 2 * (i + 1) = 2 * (k - 1 - i)
    omega
  rw [heven, ← Finset.mul_sum, mul_comm]
  exact Finset.sum_range_id_mul_two k

lemma qsq_odd (k : ℕ) : k ^ 2 = (2 * k + 1 - 1) ^ 2 / 4 := by
  rw [show 2 * k + 1 - 1 = 2 * k by omega, show (2 * k) ^ 2 = 4 * k ^ 2 by ring]
  omega

lemma qsq_even (k : ℕ) : k * (k - 1) = (2 * k - 1) ^ 2 / 4 := by
  rcases k with _ | k'
  · decide
  · rw [show (k' + 1) * (k' + 1 - 1) = (k' + 1) * k' by rw [Nat.add_sub_cancel],
        show 2 * (k' + 1) - 1 = 2 * k' + 1 by omega,
        show (2 * k' + 1) ^ 2 = 4 * ((k' + 1) * k') + 1 by ring]
    omega

/-- **THM-549 item 3.** The half-tiling has `⌊(n-1)²/4⌋` tiles (A002620, the quarter-squares):
the Burnside orbit count of the complement involution `σ`. -/
theorem halfRegion_card (n : ℕ) : (halfRegion n).card = (n - 1) ^ 2 / 4 := by
  rcases Nat.even_or_odd n with ⟨k, hk⟩ | ⟨k, hk⟩
  · subst hk
    rw [show k + k = 2 * k by ring, halfRegion_card_even]
    exact qsq_even k
  · subst hk
    rw [halfRegion_card_odd]
    exact qsq_odd k

end Math.Tournaments
