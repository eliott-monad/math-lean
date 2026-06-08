/-
# Erdős 625: the cochromatic number is the complement-invariant (σ-symmetric) chromatic number

Provenance: `eliottcassidy2000/math` — HYP-2330 (S652).  **Erdős Problem 625** (Erdős–Gimbel, ~1991, $100
/ $1000): for `G ~ G(n, 1/2)`, is `χ(G) − ζ(G) → ∞` whp?  Here `ζ(G)` = the **cochromatic number** = the
fewest colours so that every colour class is an **independent set _or a clique_** (Heckel–Steiner 2024:
yes for ≈95% of `n`).

The repo connection is the project's spine, the **involution `σ` = complement**: `σ` swaps cliques ↔
independent sets, so the cochromatic colourings of `G` and `Gᶜ` are the **same** — `ζ` is
**complement-invariant** (`ζ(G) = ζ(Gᶜ)`), the *σ-symmetric* coloring number, whereas `χ(G) ≠ χ(Gᶜ)` in
general.  Hence **`χ − ζ` measures the σ-asymmetry of the chromatic number** — and on `G(n,1/2)`, which is
σ-self-complementary in distribution, `ζ` is the σ-symmetric core and `χ − ζ` is the gap from breaking it.

This file formalizes that σ-symmetry: cochromatic colourability is complement-invariant.
-/
import Mathlib

namespace Math.Combinatorics

variable {V : Type*}

/-- A set is a clique in `Gᶜ` iff it is independent in `G`: the involution `σ = complement` swaps the
two "pure phases". -/
theorem isClique_compl_iff (G : SimpleGraph V) (s : Set V) :
    Gᶜ.IsClique s ↔ G.IsIndepSet s := by
  constructor
  · intro h a ha b hb hab
    have hadj := h ha hb hab
    rw [SimpleGraph.compl_adj] at hadj
    exact hadj.2
  · intro h a ha b hb hab
    rw [SimpleGraph.compl_adj]
    exact ⟨hab, h ha hb hab⟩

/-- A set is independent in `Gᶜ` iff it is a clique in `G`. -/
theorem isIndepSet_compl_iff (G : SimpleGraph V) (s : Set V) :
    Gᶜ.IsIndepSet s ↔ G.IsClique s := by
  constructor
  · intro h a ha b hb hab
    have hn : ¬ Gᶜ.Adj a b := h ha hb hab
    rw [SimpleGraph.compl_adj] at hn
    push_neg at hn
    exact hn hab
  · intro h a ha b hb hab hcon
    rw [SimpleGraph.compl_adj] at hcon
    exact hcon.2 (h ha hb hab)

/-- **The "pure-phase" predicate is complement-invariant.**  A colour class is `(clique ∨ independent)`
in `G` iff it is `(clique ∨ independent)` in `Gᶜ` — `σ` just swaps the two disjuncts. -/
theorem cliqueOrIndep_compl_iff (G : SimpleGraph V) (s : Set V) :
    (Gᶜ.IsClique s ∨ Gᶜ.IsIndepSet s) ↔ (G.IsClique s ∨ G.IsIndepSet s) := by
  rw [isClique_compl_iff, isIndepSet_compl_iff]
  exact or_comm

/-- `k`-**cochromatic-colourable**: a `k`-colouring whose every class is a clique or an independent set. -/
def CochromColorable (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ c : V → Fin k, ∀ i : Fin k, G.IsClique {v | c v = i} ∨ G.IsIndepSet {v | c v = i}

/-- **Cochromatic colourability is complement-invariant (the σ-symmetry).**  `G` is `k`-cochromatic-
colourable iff `Gᶜ` is — so the cochromatic number `ζ(G) = ζ(Gᶜ)`.  This is the structural fact that
distinguishes `ζ` (σ-symmetric) from `χ` (not), the heart of Erdős 625's `χ − ζ`. -/
theorem cochromColorable_compl_iff (G : SimpleGraph V) (k : ℕ) :
    CochromColorable G k ↔ CochromColorable Gᶜ k := by
  constructor
  · rintro ⟨c, hc⟩
    exact ⟨c, fun i => (cliqueOrIndep_compl_iff G _).mpr (hc i)⟩
  · rintro ⟨c, hc⟩
    exact ⟨c, fun i => (cliqueOrIndep_compl_iff G _).mp (hc i)⟩

end Math.Combinatorics
