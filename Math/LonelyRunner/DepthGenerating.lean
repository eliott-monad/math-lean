/-
# Lonely Runner — the depth generating function (the partition-function sibling) and the overlap hierarchy

Provenance: `eliottcassidy2000/math` — HYP-2200 (S618), the consolidation of the covering-depth master object
(HYP-2195) under four lenses: Helly (overlap order), Vitali (finite moments cannot decide `p₀`), Collatz two-block
(density blind to the structured residue), and the partition-function / independence-polynomial sibling.

A loneliness certificate is a clock time avoiding every runner's forbidden arc; writing `xᵢ = 1_{Aᵢ}` for the
indicator of runner `i`'s forbidden arc, the **depth generating function**
`P(z) = ∫₀¹ z^{depth(t)} dt` has integrand `∏ᵢ (1 + (z−1)·xᵢ)` — a hard-core *partition function*.  Its value at
`z = 0` is the **lonely indicator** `∏ᵢ (1 − xᵢ)`, and `p₀ = P(0)`.  This file formalizes the algebraic skeleton:

* **Partition-function factorization** (lens 4).  Over non-interacting blocks the generating function *factors*:
  `depthGF (s ∪ t) = depthGF s · depthGF t` for disjoint `s, t`.  This is the independence-polynomial /
  hard-core-gas property — the depth GF is the sibling object.

* **The overlap hierarchy** (lenses 1, 2 — Helly/Vitali).  At `z = 0`, `depthGF s x 0 = ∏ᵢ (1 − xᵢ) =
  ∑_{u ⊆ s} (−1)^{|u|} ∏_{i∈u} xᵢ` — the inclusion-exclusion alternating sum over overlap-orders.  Integrating
  gives `p₀ = ∑ (−1)^k S_k`; the partial sums (Bonferroni) bracket `p₀`, the circular Helly number 3 makes the
  order-3 truncation a loneliness certificate off the collapse boundary, and at collapse no finite order closes
  (the Vitali wall).
-/
import Mathlib

namespace Math.LonelyRunner

open Finset

variable {ι R : Type*} [CommRing R]

/-- The **depth generating function** integrand: `∏ᵢ (1 + (z−1)·xᵢ)`, a hard-core partition function whose `z`
tracks depth (`xᵢ = 1_{forbidden arc i}`).  `P(z) = ∫ this`, and `p₀ = P(0)`. -/
def depthGF (s : Finset ι) (x : ι → R) (z : R) : R := ∏ i ∈ s, (1 + (z - 1) * x i)

/-- **Normalization.**  `depthGF s x 1 = 1`: at `z = 1` the integrand is `1` (total measure). -/
theorem depthGF_one (s : Finset ι) (x : ι → R) : depthGF s x 1 = 1 := by
  simp [depthGF]

/-- **Partition-function factorization (lens 4: the independence-polynomial sibling).**  Over disjoint
(non-interacting) blocks the depth generating function factors: `depthGF (s ∪ t) = depthGF s · depthGF t`.  This is
the hard-core-gas multiplicativity over independent subsystems. -/
theorem depthGF_union [DecidableEq ι] {s t : Finset ι} (h : Disjoint s t) (x : ι → R) (z : R) :
    depthGF (s ∪ t) x z = depthGF s x z * depthGF t x z := by
  simp only [depthGF]
  exact Finset.prod_union h

/-- **The overlap hierarchy / inclusion-exclusion (lenses 1, 2: Helly/Vitali).**  The lonely indicator
`∏ᵢ (1 − xᵢ)` is the alternating sum over overlap-orders `∑_{u ⊆ s} (−1)^{|u|} ∏_{i∈u} xᵢ`.  Integrating gives
`p₀ = ∑ (−1)^k S_k`; finite (Bonferroni) truncations bracket `p₀` and close only at the top order on the collapse
family (the Vitali wall). -/
theorem prod_one_sub_eq_inclusion_exclusion [DecidableEq ι] (s : Finset ι) (x : ι → R) :
    ∏ i ∈ s, (1 - x i) = ∑ u ∈ s.powerset, (-1) ^ u.card * ∏ i ∈ u, x i := by
  have h : ∏ i ∈ s, (1 - x i) = ∏ i ∈ s, ((fun i => -x i) i + (fun _ => (1 : R)) i) := by
    refine Finset.prod_congr rfl (fun i _ => ?_); ring
  rw [h, Finset.prod_add]
  refine Finset.sum_congr rfl (fun u _ => ?_)
  rw [Finset.prod_const_one, mul_one]
  have hneg : ∏ i ∈ u, -x i = ∏ i ∈ u, ((-1 : R) * x i) :=
    Finset.prod_congr rfl (fun i _ => by ring)
  rw [hneg, Finset.prod_mul_distrib, Finset.prod_const]

/-- **`p₀` is `P(0)` is the overlap hierarchy.**  `depthGF s x 0 = ∑_{u ⊆ s} (−1)^{|u|} ∏_{i∈u} xᵢ`: evaluating the
partition function at `z = 0` recovers the inclusion-exclusion alternating sum — the lonely measure as the full
overlap hierarchy. -/
theorem depthGF_zero [DecidableEq ι] (s : Finset ι) (x : ι → R) :
    depthGF s x 0 = ∑ u ∈ s.powerset, (-1) ^ u.card * ∏ i ∈ u, x i := by
  have : depthGF s x 0 = ∏ i ∈ s, (1 - x i) := by
    simp only [depthGF]; refine Finset.prod_congr rfl (fun i _ => ?_); ring
  rw [this, prod_one_sub_eq_inclusion_exclusion]

end Math.LonelyRunner
