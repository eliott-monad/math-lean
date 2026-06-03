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

/-! ### The apex trichotomy completed: empty / whole plane / proper line

`forbidden_univ_iff` is the degenerate whole-plane (apex) case.  Here are the other two thirds:
the inconsistent (empty) case, and the generic **transversal** case — a proper line, whose
cardinality is `|K|` (codimension 1).  These hold over any field; for finite `K` they read as
"empty / all of `K²` / exactly `q` points". -/

/-- A runner forbids the *empty* set iff it is the inconsistent `0 = c ≠ 0` condition. -/
theorem forbidden_empty_iff (a b c : K) :
    Forbidden a b c = ∅ ↔ a = 0 ∧ b = 0 ∧ c ≠ 0 := by
  constructor
  · intro h
    refine ⟨?_, ?_, ?_⟩
    · by_contra ha
      have : ((c / a, 0) : K × K) ∈ Forbidden a b c := by
        simp only [Forbidden, Set.mem_setOf_eq, mul_zero, add_zero]
        exact mul_div_cancel₀ c ha
      rw [h] at this; exact this
    · by_contra hb
      have : ((0, c / b) : K × K) ∈ Forbidden a b c := by
        simp only [Forbidden, Set.mem_setOf_eq, mul_zero, zero_add]
        exact mul_div_cancel₀ c hb
      rw [h] at this; exact this
    · intro hc
      have huniv : Forbidden a b c = Set.univ := by
        refine (forbidden_univ_iff a b c).2 ⟨?_, ?_, hc⟩
        · by_contra ha
          have : ((c / a, 0) : K × K) ∈ Forbidden a b c := by
            simp only [Forbidden, Set.mem_setOf_eq, mul_zero, add_zero]
            exact mul_div_cancel₀ c ha
          rw [h] at this; exact this
        · by_contra hb
          have : ((0, c / b) : K × K) ∈ Forbidden a b c := by
            simp only [Forbidden, Set.mem_setOf_eq, mul_zero, zero_add]
            exact mul_div_cancel₀ c hb
          rw [h] at this; exact this
      rw [huniv] at h
      exact (Set.univ_nonempty.ne_empty h)
  · rintro ⟨ha, hb, hc⟩
    ext p
    simp only [Forbidden, Set.mem_setOf_eq, ha, hb, zero_mul, add_zero,
      Set.mem_empty_iff_false, iff_false]
    exact fun h => hc h.symm

/-- **Transversal case.**  A non-degenerate runner (`(a,b) ≠ 0`) forbids a *proper line*:
its cardinality is exactly `|K|` (codimension 1).  Together with `forbidden_univ_iff` and
`forbidden_empty_iff` this is the full apex trichotomy.  The apex of HYP-2101 is precisely the
runner that fails this — its covector is `0`, so it is the whole plane instead of a line. -/
theorem card_forbidden_eq (a b c : K) (h : a ≠ 0 ∨ b ≠ 0) :
    Nat.card (Forbidden a b c) = Nat.card K := by
  rcases eq_or_ne b 0 with hb | hb
  · subst hb
    have ha : a ≠ 0 := h.resolve_right (by simp)
    have e : ↥(Forbidden a 0 c) ≃ K :=
      { toFun := fun p => (p : K × K).2
        invFun := fun r => ⟨(c / a, r), by
          show a * (c / a) + 0 * r = c
          rw [mul_div_cancel₀ c ha, zero_mul, add_zero]⟩
        left_inv := by
          rintro ⟨⟨x, y⟩, hxy⟩
          simp only [Forbidden, Set.mem_setOf_eq, zero_mul, add_zero] at hxy
          apply Subtype.ext
          show ((c / a, y) : K × K) = (x, y)
          have hx : c / a = x := by rw [div_eq_iff ha]; linear_combination -hxy
          rw [hx]
        right_inv := fun r => rfl }
    rw [Nat.card_congr e]
  · have e : ↥(Forbidden a b c) ≃ K :=
      { toFun := fun p => (p : K × K).1
        invFun := fun s => ⟨(s, (c - a * s) / b), by
          show a * s + b * ((c - a * s) / b) = c
          field_simp; ring⟩
        left_inv := by
          rintro ⟨⟨x, y⟩, hxy⟩
          simp only [Forbidden, Set.mem_setOf_eq] at hxy
          apply Subtype.ext
          show ((x, (c - a * x) / b) : K × K) = (x, y)
          have hy : (c - a * x) / b = y := by rw [div_eq_iff hb]; linear_combination -hxy
          rw [hy]
        right_inv := fun s => rfl }
    rw [Nat.card_congr e]

end Field

/-! ## The lift: adjoining the `r/p` coordinate restores the apex to codimension 1

In `𝔸²` the apex covector is `(0,0)`, so its forbidden set is the *whole plane*
(`forbidden_univ_iff`) and the certificate locus is empty.  S559's `r/p` lift adds a third
coordinate `u` with a nonzero coefficient `d` (the apex speed mod `p`, a unit).  In `𝔸³` the
*same* apex — now `(0, 0, d)` with `d ≠ 0` — forbids only a proper hyperplane: `|K|²` of the
`|K|³` points, a `1/q` slice.  This is the formal content of "the lift restores transversality
at the apex": the whole-plane forbidder becomes codimension 1. -/

section Lift

variable {K : Type*} [Field K]

/-- A runner in the lifted (3-coordinate) plane: covector `(a, b, d)`, target `c`. -/
def Forbidden3 (a b d c : K) : Set (K × K × K) :=
  {p | a * p.1 + b * p.2.1 + d * p.2.2 = c}

/-- **Apex-lift.**  The degenerate apex covector `(0,0)` — the whole plane in `𝔸²` — becomes a
proper hyperplane in `𝔸³` once the lift coefficient `d` is nonzero: its cardinality is `|K|²`
(rather than the full `|K|³`).  Formal statement of "the `r/p` lift restores codimension 1." -/
theorem card_apex_lift (d : K) (hd : d ≠ 0) :
    Nat.card (Forbidden3 0 0 d 0) = Nat.card K * Nat.card K := by
  have e : (K × K) ≃ ↥(Forbidden3 0 0 d 0) :=
    { toFun := fun xy => ⟨(xy.1, xy.2, 0), by simp [Forbidden3]⟩
      invFun := fun p => ((p : K × K × K).1, (p : K × K × K).2.1)
      left_inv := fun _ => rfl
      right_inv := by
        rintro ⟨⟨x, y, z⟩, hz⟩
        simp only [Forbidden3, Set.mem_setOf_eq, zero_mul, zero_add] at hz
        have hz0 : z = 0 := (mul_eq_zero.1 hz).resolve_left hd
        subst hz0
        rfl }
  rw [← Nat.card_congr e, Nat.card_prod]

/-- The lifted apex is a genuine codimension-1 hyperplane: its size times `|K|` is the whole
space `|K|³`.  Contrast `forbidden_univ_iff`, where the unlifted apex *is* the whole plane. -/
theorem card_apex_lift_codim (d : K) (hd : d ≠ 0) :
    Nat.card (Forbidden3 0 0 d 0) * Nat.card K = Nat.card (K × K × K) := by
  rw [card_apex_lift d hd, Nat.card_prod, Nat.card_prod, Nat.mul_assoc]

end Lift

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

/-! ## The sheaf: restriction, gluing, and the apex as the gluing obstruction

The sections above build the *stalk* — the certificate locus at a single runner (the apex
trichotomy) and its `r/p` lift.  Here we assemble the **sheaf**: the certificate locus of a
*family* of runners indexed by a base `s : Finset ι` (the lanes of the n-gon).  It carries the
presheaf **restriction** (more lanes ⇒ fewer certificates, antitone) and satisfies the **gluing
law** `CertLocus (s ∪ t) = CertLocus s ∩ CertLocus t` — the sheaf condition for the "avoid every
forbidden set" presheaf.  The global sections are the certificates surviving every lane; the
**apex lane** (whole-plane forbidder) empties them — the gluing obstruction concentrated at the
self-antipodal seam — and the `r/p` lift is exactly what restores a nonempty stalk there. -/

section Sheaf

variable {ι X : Type*}

/-- The **certificate locus** of a family of forbidden sets `F` over a base `s`: the points
avoiding every forbidden set indexed by `s`.  (All lanes ⇒ the global sections; a singleton ⇒ a
single stalk.) -/
def CertLocus (F : ι → Set X) (s : Finset ι) : Set X := {p | ∀ i ∈ s, p ∉ F i}

/-- The certificate locus over a single lane is the complement of that lane's forbidden set. -/
theorem certLocus_singleton (F : ι → Set X) (i : ι) :
    CertLocus F {i} = (F i)ᶜ := by
  ext p; simp [CertLocus]

/-- **Restriction (the presheaf map).**  More lanes ⇒ fewer certificates: `s ⊆ t` gives
`CertLocus F t ⊆ CertLocus F s`.  The certificate presheaf is *antitone* in the base. -/
theorem certLocus_antitone (F : ι → Set X) {s t : Finset ι} (h : s ⊆ t) :
    CertLocus F t ⊆ CertLocus F s :=
  fun _ hp i hi => hp i (h hi)

/-- **The gluing law (sheaf axiom).**  The certificate locus over a union of bases is the
intersection of the loci: a certificate is global iff it is a certificate on each piece of a
cover.  This is the sheaf condition for the "avoid every forbidden set" presheaf. -/
theorem certLocus_union [DecidableEq ι] (F : ι → Set X) (s t : Finset ι) :
    CertLocus F (s ∪ t) = CertLocus F s ∩ CertLocus F t := by
  ext p
  constructor
  · intro h
    exact ⟨fun i hi => h i (Finset.mem_union_left t hi),
           fun i hi => h i (Finset.mem_union_right s hi)⟩
  · rintro ⟨h1, h2⟩ i hi
    rcases Finset.mem_union.mp hi with hi | hi
    exacts [h1 i hi, h2 i hi]

/-- **The apex obstruction.**  If any lane `j ∈ s` is the apex — its forbidden set is the whole
space — then the global certificate locus is empty: no section can be glued past the apex seam.
(The sheaf-level form of `no_certificate_of_apex`.) -/
theorem certLocus_eq_empty_of_apex (F : ι → Set X) {s : Finset ι} {j : ι}
    (hj : j ∈ s) (hapex : F j = Set.univ) : CertLocus F s = ∅ := by
  ext p
  simp only [CertLocus, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_forall]
  exact ⟨j, hj, not_not.mpr (by rw [hapex]; exact Set.mem_univ p)⟩

/-- **Geometric apex obstruction.**  Specialised to runner forbidden lines: a lane `j` whose
covector and target both vanish (`a j = b j = c j = 0`, the degenerate apex of
`forbidden_univ_iff`) empties the global certificate locus. -/
theorem certLocus_empty_of_apex_runner {K : Type*} [Field K] (a b c : ι → K)
    {s : Finset ι} {j : ι} (hj : j ∈ s) (h0 : a j = 0 ∧ b j = 0 ∧ c j = 0) :
    CertLocus (fun i => Forbidden (a i) (b i) (c i)) s = ∅ :=
  certLocus_eq_empty_of_apex _ hj ((forbidden_univ_iff (a j) (b j) (c j)).2 h0)

/-- **Apex-lift restores the stalk.**  In the lift, the apex's forbidden set is the *proper*
hyperplane `Forbidden3 0 0 d 0` (`d ≠ 0`), so its certificate locus — the complement — is
nonempty: the point `(0,0,1)` avoids it.  Contrast `certLocus_eq_empty_of_apex`: the `r/p` lift
turns the section-killing whole-plane apex into a stalk that *has* sections, which is precisely
why the global section can be glued in the lifted arrangement. -/
theorem certLocus_apex_lift_nonempty {K : Type*} [Field K] (d : K) (hd : d ≠ 0) :
    (CertLocus (fun _ : Unit => Forbidden3 (0 : K) 0 d 0) {()}).Nonempty := by
  refine ⟨(0, 0, 1), fun i _ hmem => ?_⟩
  simp only [Forbidden3, Set.mem_setOf_eq, mul_zero, zero_add, mul_one] at hmem
  exact hd hmem

end Sheaf

end Math.LonelyRunner
