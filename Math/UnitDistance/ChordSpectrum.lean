/-
# Chord-spectrum gate for resonant products

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-495-resonant-crossing-norm-is-the-small-factor-chord-spectrum.md`
(THM-495(A), chord-bottleneck corollary).

The informal theorem uses the resonant-product bonus
`Δ_t = 1/2 * ∑_{N α = t} m_α(G) m_α(H)`.  This file formalizes the support
statement that drives the bottleneck: a positive contribution at norm `t ≠ 0`
forces `t` to occur as a nonzero chord norm in both factors.  The statement is
abstracted from Eisenstein integers to any additive group with a natural-valued norm.
-/
import Mathlib

namespace Math.UnitDistance

variable {V : Type*} [AddGroup V] [DecidableEq V]

/-- The ordered displacement census `m_α(X)`: the number of ordered pairs in `X × X`
whose displacement is `α`. -/
def displacementCensus (X : Finset V) (α : V) : ℕ :=
  ((X.product X).filter fun p => p.1 - p.2 = α).card

/-- The chord spectrum of a finite set with respect to a norm: all norms of nonzero
pairwise displacements. -/
def chordSpectrum (norm : V → ℕ) (X : Finset V) : Set ℕ :=
  {t | ∃ x ∈ X, ∃ y ∈ X, x ≠ y ∧ norm (x - y) = t}

/-- The unhalved resonant bonus support sum.  Positivity of this sum is equivalent
to positivity of the informal `Δ_t`; the factor `1/2` is irrelevant for support. -/
def rawResonanceBonus (norm : V → ℕ) (directions : Finset V) (t : ℕ)
    (G H : Finset V) : ℕ :=
  (directions.filter (fun α => norm α = t)).sum fun α =>
    displacementCensus G α * displacementCensus H α

lemma displacementCensus_pos_iff (X : Finset V) (α : V) :
    0 < displacementCensus X α ↔
      ∃ x ∈ X, ∃ y ∈ X, x - y = α := by
  rw [displacementCensus, Finset.card_pos]
  constructor
  · rintro ⟨⟨x, y⟩, hxy⟩
    rw [Finset.mem_filter] at hxy
    exact ⟨x, (Finset.mem_product.mp hxy.1).1, y,
      (Finset.mem_product.mp hxy.1).2, hxy.2⟩
  · rintro ⟨x, hx, y, hy, hxy⟩
    exact ⟨(x, y), by simp [hx, hy, hxy]⟩

/-- **THM-495(A), chord-bottleneck support form.**  If the resonant bonus at a
nonzero norm `t` is positive, then `t` lies in the chord spectrum of both factors.

This is the formal core of the "small-factor chord spectrum" gate: every positive
summand has a displacement of norm `t` in `G` and the same displacement in `H`, so
both factors must be able to carry that chord norm. -/
theorem rawResonanceBonus_pos_imp_chordSpectrum {norm : V → ℕ} {directions : Finset V}
    {t : ℕ} {G H : Finset V} (hnorm_zero : norm 0 = 0) (ht : t ≠ 0)
    (hpos : 0 < rawResonanceBonus norm directions t G H) :
    t ∈ chordSpectrum norm G ∧ t ∈ chordSpectrum norm H := by
  have hsum_ne :
      rawResonanceBonus norm directions t G H ≠ 0 := by
    exact ne_of_gt hpos
  rw [rawResonanceBonus] at hsum_ne
  obtain ⟨α, hαmem, hαterm⟩ := Finset.exists_ne_zero_of_sum_ne_zero hsum_ne
  have hαnorm : norm α = t := (Finset.mem_filter.mp hαmem).2
  have hGne : displacementCensus G α ≠ 0 := by
    intro hG
    exact hαterm (by simp [hG])
  have hHne : displacementCensus H α ≠ 0 := by
    intro hH
    exact hαterm (by simp [hH])
  have hGpos : 0 < displacementCensus G α := Nat.pos_iff_ne_zero.mpr hGne
  have hHpos : 0 < displacementCensus H α := Nat.pos_iff_ne_zero.mpr hHne
  obtain ⟨xG, hxG, yG, hyG, hdispG⟩ :=
    (displacementCensus_pos_iff G α).mp hGpos
  obtain ⟨xH, hxH, yH, hyH, hdispH⟩ :=
    (displacementCensus_pos_iff H α).mp hHpos
  have hne_of_disp {x y : V} (hdisp : x - y = α) : x ≠ y := by
    intro hxy
    have hαzero : α = 0 := by
      rw [← hdisp, hxy, sub_self]
    have : t = 0 := by
      rw [← hαnorm, hαzero, hnorm_zero]
    exact ht this
  constructor
  · exact ⟨xG, hxG, yG, hyG, hne_of_disp hdispG, by rw [hdispG, hαnorm]⟩
  · exact ⟨xH, hxH, yH, hyH, hne_of_disp hdispH, by rw [hdispH, hαnorm]⟩

/-- Set-valued version of the chord-bottleneck: positive resonant norms are contained
in the intersection of the two chord spectra. -/
theorem resonantNorms_subset_chordSpectrum {norm : V → ℕ} {directions : Finset V}
    {G H : Finset V} (hnorm_zero : norm 0 = 0) :
    {t | t ≠ 0 ∧ 0 < rawResonanceBonus norm directions t G H} ⊆
      chordSpectrum norm G ∩ chordSpectrum norm H := by
  intro t ht
  exact rawResonanceBonus_pos_imp_chordSpectrum hnorm_zero ht.1 ht.2

end Math.UnitDistance
