/-
# The triangle decomposition is 3-set inclusion–exclusion: +A+B+C − D−E−F + G (the Euler-characteristic sign)

Provenance: `eliottcassidy2000/math` — HYP-2329 (S651).  A user tiling-model decomposition of an `n`-node
tournament into 7 sub-tournaments — `A,B,C` (size `n−1`, the three corners), `D,E,F` (size `n−2`, the
three edge/overlap corrections, *subtracted*), `G` (size `n−3`, the interior triple, *added back*) — with
the regional count `+A+B+C − D−E−F + G`.  This is exactly **3-set inclusion–exclusion** realized on the
triangle: the corners are the sets, the edges are the pairwise intersections, the interior is the triple
intersection; the alternating signs `+,−,+` are the **Euler-characteristic / chain-complex signs** (the
same alternation as the Pfaffian `det = Σ ± `, S645/S646) over the dimensions `0` (corners), `1` (edges),
`2` (interior).  `χ = 3 − 3 + 1 = 1` (a disk).

Formalized here as the subtraction-free `card` identity (the rigorous content of the decomposition).
-/
import Mathlib

namespace Math.Combinatorics

variable {α : Type*} [DecidableEq α]

/-- **The triangle = 3-set inclusion–exclusion.**  For finite sets (`A,B,C` = the corners; `A∩B, A∩C,
B∩C` = the edge overlaps `D,E,F`; `A∩B∩C` = the interior `G`):
`|A∪B∪C| + |A∩B| + |A∩C| + |B∩C| = |A| + |B| + |C| + |A∩B∩C|`,
i.e. `|A∪B∪C| = (A+B+C) − (D+E+F) + G` — the `+,−,+` Euler-characteristic signature of the user's
tiling decomposition. -/
theorem card_union_three (A B C : Finset α) :
    (A ∪ B ∪ C).card + ((A ∩ B).card + (A ∩ C).card + (B ∩ C).card)
      = (A.card + B.card + C.card) + (A ∩ B ∩ C).card := by
  have h1 := Finset.card_union_add_card_inter (A ∪ B) C
  have h2 := Finset.card_union_add_card_inter A B
  have h3 : (A ∪ B) ∩ C = A ∩ C ∪ B ∩ C := by rw [Finset.union_inter_distrib_right]
  have h4 := Finset.card_union_add_card_inter (A ∩ C) (B ∩ C)
  have h5 : A ∩ C ∩ (B ∩ C) = A ∩ B ∩ C := by
    ext x; simp only [Finset.mem_inter]; tauto
  rw [h3] at h1
  rw [h5] at h4
  omega

end Math.Combinatorics
