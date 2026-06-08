/-
# Erdős 625, cont.: ζ ≤ min(χ(G), χ(Gᶜ)), so χ − ζ ≥ the chromatic σ-asymmetry

Provenance: `eliottcassidy2000/math` — HYP-2331 (S653, thread A).  Closes the S652 handoff.  The
cochromatic number `ζ` is bounded by *both* chromatic numbers across the `σ = complement` involution:
a proper colouring of `G` has independent classes (`ζ ≤ χ(G)`); a proper colouring of `Gᶜ` cuts `G` into
cliques (`ζ ≤ χ(Gᶜ)`).  So `ζ(G) ≤ min(χ(G), χ(Gᶜ))`, hence **Erdős 625's gap `χ(G) − ζ(G) ≥ χ(G) −
χ(Gᶜ)`** — the `χ − ζ` difference is at least the *σ-asymmetry of the chromatic number*.
-/
import Mathlib
import Math.Combinatorics.Cochromatic

namespace Math.Combinatorics

variable {V : Type*}

/-- **`ζ(G) ≤ χ(G)`.**  A proper `k`-colouring of `G` is a cochromatic colouring: each colour class is an
independent set (the "down" pure phase). -/
theorem cochromColorable_of_colorable {G : SimpleGraph V} {k : ℕ} (h : G.Colorable k) :
    CochromColorable G k := by
  obtain ⟨c⟩ := h
  refine ⟨fun v => c v, fun i => Or.inr ?_⟩
  intro a ha b hb _ hadj
  exact c.valid hadj (ha.trans hb.symm)

/-- **`ζ(G) ≤ χ(Gᶜ)`.**  A proper `k`-colouring of `Gᶜ` is a cochromatic colouring of `G`: each class is
`Gᶜ`-independent `=` a `G`-clique (the "up" pure phase).  With the previous lemma, `ζ(G) ≤ min(χ(G),
χ(Gᶜ))`, so `χ(G) − ζ(G) ≥ χ(G) − χ(Gᶜ)` (Erdős 625's gap ≥ the chromatic σ-asymmetry). -/
theorem cochromColorable_of_compl_colorable {G : SimpleGraph V} {k : ℕ} (h : Gᶜ.Colorable k) :
    CochromColorable G k := by
  obtain ⟨c⟩ := h
  refine ⟨fun v => c v, fun i => Or.inl ((isIndepSet_compl_iff G _).mp ?_)⟩
  intro a ha b hb _ hadj
  exact c.valid hadj (ha.trans hb.symm)

end Math.Combinatorics
