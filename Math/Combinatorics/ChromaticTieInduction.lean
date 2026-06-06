/-
# Tie induction for graph colorings: adding ties (removing edges) only lowers the chromatic number

Provenance: `eliottcassidy2000/math` — HYP-2299 (S633).  "Everything as a coloring": the resonance/3-cycle structure
is the odd-cycle obstruction to 2-coloring (the triangle needs 3 colors), and the unit-distance graph's chromatic
number is the Hadwiger–Nelson problem.  **Tie induction** is the monotonicity of colorings: a *tie* is a removed
edge, and removing edges (`G ≤ H`) only makes coloring easier — a proper coloring of `H` restricts to one of `G`, so
`χ(G) ≤ χ(H)`.  This is the deletion side of deletion–contraction (the Tutte recursion), the inductive engine for the
incomplete oriented graphs (tie-graphs) that carry the LRC and unit-distance extremal problems.
-/
import Mathlib

namespace Math.Combinatorics

open SimpleGraph

variable {V : Type*} {G H : SimpleGraph V}

/-- **A proper coloring restricts to a subgraph.**  If `G ≤ H` (G has fewer edges — more ties), any proper coloring
of `H` is a proper coloring of `G`: the validity condition is only easier with fewer adjacencies. -/
def Coloring.ofLE (h : G ≤ H) {α : Type*} (c : H.Coloring α) : G.Coloring α :=
  SimpleGraph.Coloring.mk (fun v => c v) (fun hab => c.valid (h hab))

/-- **Tie induction (colorability).**  Removing edges preserves `n`-colorability: `G ≤ H` and `H.Colorable n` give
`G.Colorable n`. -/
theorem Colorable.ofLE (h : G ≤ H) {n : ℕ} (hc : H.Colorable n) : G.Colorable n :=
  ⟨Coloring.ofLE h hc.some⟩

/-- **Tie induction (chromatic number).**  Adding ties (removing edges, `G ≤ H`) only lowers the chromatic number:
`G.chromaticNumber ≤ H.chromaticNumber`.  The deletion side of the deletion–contraction (Tutte) recursion for the
tie-graphs of LRC and unit distance. -/
theorem chromaticNumber_mono (h : G ≤ H) : G.chromaticNumber ≤ H.chromaticNumber := by
  unfold SimpleGraph.chromaticNumber
  exact biInf_mono fun n hn => Colorable.ofLE h hn

end Math.Combinatorics
