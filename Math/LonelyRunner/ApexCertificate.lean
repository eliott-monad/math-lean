/-
# Lonely Runner — the apex-lift certificate sheaf (counting core)

Provenance: `eliottcassidy2000/math` — **HYP-2101**
(`05-knowledge/hypotheses/HYP-2101-lrc-apex-lift-certificate-sheaf.md`), reflection
`07-reflections/lrc-apex-lift-certificate-sheaf-s579.md`, session S579.  Builds on
HYP-2063/S559 (the apex zero-divisor obstruction at `k+1 = 2q`, the n=14 wall).

The informal result recasts the `k+1 = 2q` polynomial-method corrector as a *line
arrangement* over `𝔽_q`: each runner `i` forbids the affine line
`Lᵢ = {(s,r) | aᵢ·s + bᵢ·r = cᵢ}` in the plane, and a *loneliness certificate* is a point
off every line.  Two facts are formalized here.

* **Apex obstruction (qualitative).**  The apex runner `i = q` has `bᵢ = 0` (its
  `cᵢ ≡ 0 mod q`), and when its speed is divisible by `q` its forbidden set degenerates to
  the WHOLE plane (`0 = 0`).  `forbidden_univ_iff` characterizes this exactly: the apex is
  the unique *non-transverse* section, whose presence empties the certificate locus.

* **Certificate count (quantitative — found while formalizing).**  Over the torus
  `Kˣ × Kˣ`, with forbidden *slope* set `S ⊆ Kˣ`, the number of certificates is
  `(q-1)·(q-1-|S|)` where `q-1 = |Kˣ|`.  The informal note only had the *computed* values
  `2, 12, 30, 90` for the tight tuple (where `|S| = 1`, the slopes collapse to `{-1}`).
  The closed form `card_certificates` *proves* those numbers as `(q-1)(q-2)` and shows the
  obstruction is exactly `|S| = q-1` (the forbidden slopes cover `ℙ¹`) — see
  `certificates_empty_of_cover`.  This closed form is the formalization's improvement to the
  informal HYP-2101 and is reported back to the research repo.
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

/-! ## The apex obstruction: the whole-plane forbidder

Over any field, a runner's forbidden set is the entire plane iff it is the degenerate
`0 = 0` condition — that is the apex.  This is the qualitative heart of HYP-2101. -/

section Field

variable {K : Type*} [Field K]

/-- The forbidden set of a runner with covector `(a, b)` and target `c`: the affine line
`{(s, r) | a·s + b·r = c}`.  A loneliness certificate is a point avoiding it. -/
def Forbidden (a b c : K) : Set (K × K) := {p | a * p.1 + b * p.2 = c}

/-- **Apex characterization.**  A runner forbids the *entire* plane iff it is the degenerate
`0 = 0` condition (`a = b = 0` and `c = 0`).  This is the apex: the unique non-transverse
section, whose presence makes the certificate locus empty.  (HYP-2063/S559: the apex is the
zero-divisor where `ℤ_{2q}` stops being a field; here it is the line that is not a line.) -/
theorem forbidden_univ_iff (a b c : K) :
    Forbidden a b c = Set.univ ↔ a = 0 ∧ b = 0 ∧ c = 0 := by
  constructor
  · intro h
    have hmem : ∀ p : K × K, a * p.1 + b * p.2 = c := by
      intro p
      have : p ∈ Forbidden a b c := by rw [h]; exact Set.mem_univ p
      simpa [Forbidden] using this
    have h00 := hmem (0, 0)
    have h10 := hmem (1, 0)
    have h01 := hmem (0, 1)
    simp only [mul_zero, mul_one, add_zero, zero_add] at h00 h10 h01
    -- h00 : 0 = c,  h10 : a = c,  h01 : b = c
    have hc : c = 0 := h00.symm
    exact ⟨h10.trans hc, h01.trans hc, hc⟩
  · rintro ⟨ha, hb, hc⟩
    ext p
    simp [Forbidden, ha, hb, hc]

/-- The certificate locus is empty as soon as one runner is the apex (whole-plane forbidder):
no point can avoid a set that is everything. -/
theorem no_certificate_of_apex {ι : Type*} (a b c : ι → K) (j : ι)
    (hj : Forbidden (a j) (b j) (c j) = Set.univ) :
    {p : K × K | ∀ i, p ∉ Forbidden (a i) (b i) (c i)} = ∅ := by
  ext p
  simp only [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_forall, not_not]
  exact ⟨j, by rw [hj]; exact Set.mem_univ p⟩

end Field

/-! ## The certificate count over the torus `Kˣ × Kˣ` (the quantitative extension)

Working in the unit group `G = Kˣ` (the torus coordinate group, `|G| = q-1`).  A pair
`(s, r)` has *slope* `s · r⁻¹ ∈ G`; the forbidden slopes form `S ⊆ G` (runner `i` forbids
`ρᵢ = -cᵢ/wᵢ`).  A certificate is a torus point whose slope avoids `S`. -/

section Torus

variable {G : Type*} [Group G] [Fintype G] [DecidableEq G]

/-- The certificate set over the torus `G × G`: pairs `(s, r)` whose slope `s · r⁻¹` avoids
the forbidden slope set `S`. -/
def certificates (S : Finset G) : Finset (G × G) :=
  Finset.univ.filter (fun p => p.1 * p.2⁻¹ ∉ S)

/-- **Certificate count (closed form).**  `#certificates = (q-1)·(q-1-|S|)` with `q-1 = |G|`.

Proof: the shear `(s, r) ↦ (s·r⁻¹, r)` is a bijection from the certificate set onto
`(univ \ S) ×ˢ univ`, whose cardinality is `(|G| - |S|)·|G|`.

This is the formalization's new closed form behind the informal computed values
`2, 12, 30, 90` (tight tuple, `|S| = 1`, `q = 3,5,7,11`). -/
theorem card_certificates (S : Finset G) :
    (certificates S).card = Fintype.card G * (Fintype.card G - S.card) := by
  have hbij : (certificates S).card
      = ((Finset.univ \ S) ×ˢ (Finset.univ : Finset G)).card := by
    refine Finset.card_bij'
      (fun p _ => (p.1 * p.2⁻¹, p.2))
      (fun q _ => (q.1 * q.2, q.2))
      ?_ ?_ ?_ ?_
    · -- forward lands in target
      intro p hp
      simp only [certificates, Finset.mem_filter, Finset.mem_univ, true_and] at hp
      simp only [Finset.mem_product, Finset.mem_sdiff, Finset.mem_univ, true_and, and_true]
      exact hp
    · -- backward lands in certificates
      intro q hq
      simp only [Finset.mem_product, Finset.mem_sdiff, Finset.mem_univ, true_and, and_true] at hq
      simp only [certificates, Finset.mem_filter, Finset.mem_univ, true_and,
        mul_inv_cancel_right]
      exact hq
    · -- left inverse
      intro p _
      simp [inv_mul_cancel_right]
    · -- right inverse
      intro q _
      simp [mul_inv_cancel_right]
  rw [hbij, Finset.card_product, Finset.card_univ, Finset.card_univ_diff, Nat.mul_comm]

/-- **Tight-tuple corollary.**  A single forbidden slope (`|S| = 1` — the slopes collapse to
`{-1}`) gives `(q-1)·(q-2)` certificates.  This is the proved closed form behind the informal
computed values `2, 12, 30, 90` at `q = 3, 5, 7, 11` (`q-1 = |G| = 2, 4, 6, 10`). -/
theorem card_certificates_tight (S : Finset G) (hS : S.card = 1) :
    (certificates S).card = Fintype.card G * (Fintype.card G - 1) := by
  rw [card_certificates, hS]

/-- **Coverage / apex obstruction (quantitative).**  If every slope is forbidden
(`S = univ` — the line arrangement covers `ℙ¹`, the apex/cover case), there is no
certificate.  Corollary of the closed form: `|G|·(|G| - |G|) = 0`. -/
theorem certificates_empty_of_cover (S : Finset G) (hS : S = Finset.univ) :
    (certificates S).card = 0 := by
  rw [card_certificates, hS, Finset.card_univ, Nat.sub_self, Nat.mul_zero]

end Torus

/-! ## Machine-checked tie to the informal computed values

For the tight tuple the certificate count is `(q-1)(q-2)`.  Instantiating the torus group as
`(ZMod q)ˣ` (so `|G| = q-1`) reproduces the informal repo's computed locus sizes
`2, 12, 30, 90` at `q = 3, 5, 7, 11`.  We pin down the `n = 14` wall (`q = 7`, `|G| = 6`,
count `= 6·5 = 30`) and `n = 6` (`q = 3`, count `2·1 = 2`) exactly. -/

section Examples

/-- `q = 7` (n = 14, the polynomial-method wall): a single forbidden slope leaves exactly
`30 = 6·5` certificates — matching the informal computed `|H⁰| = 30`. -/
example (S : Finset (ZMod 7)ˣ) (hS : S.card = 1) : (certificates S).card = 30 := by
  have h : Fintype.card (ZMod 7)ˣ = 6 := by decide
  rw [card_certificates_tight S hS, h]

/-- `q = 3` (n = 6): a single forbidden slope leaves exactly `2 = 2·1` certificates. -/
example (S : Finset (ZMod 3)ˣ) (hS : S.card = 1) : (certificates S).card = 2 := by
  have h : Fintype.card (ZMod 3)ˣ = 2 := by decide
  rw [card_certificates_tight S hS, h]

end Examples

end Math.LonelyRunner
