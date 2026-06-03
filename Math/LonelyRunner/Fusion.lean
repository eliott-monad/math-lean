/-
# Lonely Runner — the fusion dictionary and the energy/3-term symmetry mismatch

Provenance: `eliottcassidy2000/math` — **HYP-2120** (S585), the two-lens character study, and
`Math/LonelyRunner/SumFree.lean`.

S585's central rep-theory observation: a 3-term relation `v_c = v_a + v_b` among runner speeds is
a **fusion** of characters `χ_a · χ_b = χ_c`, because the characters of the time circle multiply by
adding indices. This module makes that precise on top of Mathlib's `AddChar`, defines the
3-term-free (sum-free) predicate it controls, and formalizes the *symmetry mismatch* that explains
why additive energy is the wrong invariant: additive energy is **translation-invariant**, whereas
both the 3-term structure and (informally) the lonely-runner gap are translation-*sensitive* —
they share the dilation-but-not-translation symmetry, energy does not. That mismatch is the formal
content of the S585 "AP-translation flip" (`{1..k}` tight, its translate `{m+1..m+k}` safe, same
energy).
-/
import Mathlib
import Math.LonelyRunner.SumFree

namespace Math.LonelyRunner

open AddChar

/-! ## The fusion dictionary: a 3-term relation is a product of characters -/

section Fusion
variable {R : Type*} [CommRing R] {M : Type*} [CommMonoid M]

/-- The character of "speed" `v` relative to a base additive character `ψ`: `χ_v = x ↦ ψ(v·x)`,
the irreducible of the time group attached to speed `v` (`ψ` the primitive character). -/
def speedChar (ψ : AddChar R M) (v : R) : AddChar R M := ψ.mulShift v

/-- **The fusion rule** `χ_{a+b} = χ_a · χ_b`: the speed → character map is
additive-to-multiplicative. A 3-term relation `c = a + b` among speeds is *exactly* the fusion
`χ_c = χ_a · χ_b`. (This is `AddChar.mulShift_mul`, the rep-theory core of HYP-2120.) -/
theorem speedChar_add (ψ : AddChar R M) (a b : R) :
    speedChar ψ (a + b) = speedChar ψ a * speedChar ψ b :=
  (mulShift_mul ψ a b).symm

/-- The trivial speed gives the trivial character. -/
theorem speedChar_zero (ψ : AddChar R M) : speedChar ψ 0 = 1 := mulShift_zero ψ

/-- The forward bridge: a 3-term relation `c = a + b` realizes a fusion of the corresponding
characters. (The converse needs a faithful `ψ`; see `speedChar`.) -/
theorem fusion_of_three_term {ψ : AddChar R M} {a b c : R} (h : c = a + b) :
    speedChar ψ c = speedChar ψ a * speedChar ψ b := by
  rw [h, speedChar_add]

end Fusion

/-! ## 3-term-free (sum-free) sets -/

section ThreeTerm
variable {R : Type*} [AddCommGroup R] [DecidableEq R]

/-- `S` is **3-term-free** (sum-free): no `a + b = c` with `a, b, c ∈ S`. In the character
picture this says no fusion `χ_a · χ_b` lands on a `χ_c` with `c ∈ S` — the speed set carries no
fusion relation. This is the LRC "circuit-free" condition of HYP-2120 (Lemma A regime). -/
def ThreeTermFree (S : Finset R) : Prop := ∀ a ∈ S, ∀ b ∈ S, a + b ∉ S

end ThreeTerm

/-- **Above the diagonal ⇒ 3-term-free.** Restates `sumFree_of_lo_add_lo_gt_hi` as the predicate:
a speed set in `[lo, hi]` with `hi < lo + lo` is 3-term-free. The translate `{m+1,…,m+k}` with
`m ≥ k` qualifies — the mechanism of the AP-translation flip. -/
theorem threeTermFree_of_above_diagonal {S : Finset ℤ} {lo hi : ℤ}
    (hlo : ∀ x ∈ S, lo ≤ x) (hhi : ∀ x ∈ S, x ≤ hi) (h : hi < lo + lo) :
    ThreeTermFree S :=
  sumFree_of_lo_add_lo_gt_hi hlo hhi h

/-! ## The symmetry mismatch — why additive energy is the wrong invariant

S585's AP-translation flip showed `{1..k}` (tight) and its translate `{m+1..m+k}` (safe) have the
*same* additive energy but different 3-term structure. The clean reason is a symmetry mismatch:
**3-term-freeness is dilation-invariant but translation-sensitive** (it shares the symmetry of the
lonely-runner gap `G`, which is dilation- but not translation-invariant), whereas **additive
energy is invariant under BOTH** dilation and translation. Energy therefore has a strictly larger
symmetry group than `G`, so it cannot determine `G`. We formalize both halves. -/

/-- **Dilation-invariance of 3-term-freeness.** Scaling all speeds by a nonzero `c` preserves the
sum-free property (over an integral domain): `c·a + c·b = c·e ⇒ a + b = e`. The lonely-runner gap
`G` is likewise dilation-invariant — they share this symmetry. -/
theorem threeTermFree_image_mul {R : Type*} [CommRing R] [IsDomain R] [DecidableEq R]
    {S : Finset R} (hS : ThreeTermFree S) {c : R} (hc : c ≠ 0) :
    ThreeTermFree (S.image (· * c)) := by
  intro a' ha' b' hb' hsum
  simp only [Finset.mem_image] at ha' hb'
  obtain ⟨a, ha, rfl⟩ := ha'
  obtain ⟨b, hb, rfl⟩ := hb'
  rw [Finset.mem_image] at hsum
  obtain ⟨e, he, hee⟩ := hsum
  have h1 : (a + b) * c = e * c := by rw [add_mul]; exact hee.symm
  have hcancel : a + b = e := mul_right_cancel₀ hc h1
  exact hS a ha b hb (hcancel.symm ▸ he)

section Energy
variable {R : Type*} [AddCommGroup R] [DecidableEq R]

/-- Additive energy `E(S) = #{(a,b,c,d) ∈ S⁴ : a + b = c + d}` — the `|p_S|⁴` / 4-term richness. -/
def addEnergy (S : Finset R) : ℕ :=
  ((S ×ˢ S ×ˢ S ×ˢ S).filter (fun q => q.1 + q.2.1 = q.2.2.1 + q.2.2.2)).card

/-- **Translation-invariance of additive energy.** `E(S + t) = E(S)`: the quadruple bijection
`(a,b,c,d) ↦ (a−t,b−t,c−t,d−t)` preserves both membership and the relation `a+b = c+d`. Together
with dilation-invariance, energy is invariant under the full affine group — strictly more symmetry
than `G` has, which is why energy cannot detect the LRC hardness (the AP-translation flip). -/
theorem addEnergy_map_addRight (S : Finset R) (t : R) :
    addEnergy (S.map (Equiv.addRight t).toEmbedding) = addEnergy S := by
  classical
  refine Finset.card_bij'
    (fun q _ => ((Equiv.addRight t).symm q.1, (Equiv.addRight t).symm q.2.1,
                 (Equiv.addRight t).symm q.2.2.1, (Equiv.addRight t).symm q.2.2.2))
    (fun q _ => ((Equiv.addRight t) q.1, (Equiv.addRight t) q.2.1,
                 (Equiv.addRight t) q.2.2.1, (Equiv.addRight t) q.2.2.2))
    ?_ ?_ ?_ ?_
  · rintro ⟨a, b, c, d⟩ hq
    simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_map_equiv,
      Equiv.addRight_symm, Equiv.coe_addRight] at hq ⊢
    obtain ⟨⟨ha, hb, hc, hd⟩, hP⟩ := hq
    refine ⟨⟨ha, hb, hc, hd⟩, ?_⟩
    have : a + -t + (b + -t) = a + b + -(t + t) := by abel
    rw [this, hP]; abel
  · rintro ⟨a, b, c, d⟩ hq
    simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_map_equiv,
      Equiv.addRight_symm, Equiv.coe_addRight, add_neg_cancel_right] at hq ⊢
    obtain ⟨⟨ha, hb, hc, hd⟩, hP⟩ := hq
    refine ⟨⟨ha, hb, hc, hd⟩, ?_⟩
    have : a + t + (b + t) = a + b + (t + t) := by abel
    rw [this, hP]; abel
  · rintro ⟨a, b, c, d⟩ _
    simp [Equiv.addRight_symm]
  · rintro ⟨a, b, c, d⟩ _
    simp [Equiv.addRight_symm]

end Energy

end Math.LonelyRunner
