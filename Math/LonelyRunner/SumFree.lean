/-
# Lonely Runner — sum-free above the diagonal (the 3-term / circuit-free crux)

Provenance: `eliottcassidy2000/math` — **HYP-2120** (S585), the two-lens character-grading study.

The S585 exploration isolated the *3-term relation count* `N₃ = #{(a,b,c)∈S³ : a+b=c}` as the
unique leading-order obstruction in the Lonely Runner Lemma A/B split: a 3-term relation is a
fusion `χ_a·χ_b = χ_c` and contributes an `O(δ³)` correction to the good-time measure, while
4-term (additive-energy) structure is one order of `δ` smaller. The AP-translation flip
(`{1,…,k}` tight, its translate `{m+1,…,m+k}` safe, same additive energy) is explained by this
lemma: a speed set lying above its own diameter is **sum-free** — it has *no* 3-term relation —
which lands it in the circuit-free / Lemma A regime regardless of its (translation-invariant)
additive energy.
-/
import Mathlib

namespace Math.LonelyRunner

/-- **Sum-free above the diagonal.** If every element of `S` lies in `[lo, hi]` with
`hi < lo + lo`, then `S` contains no 3-term relation `a + b = c` (`a,b,c ∈ S`): any sum of two
elements already exceeds `hi`. This is the mechanism of the AP-translation flip — translating a
set above its length destroys all 3-term relations while preserving additive energy. -/
theorem sumFree_of_lo_add_lo_gt_hi {S : Finset ℤ} {lo hi : ℤ}
    (hlo : ∀ x ∈ S, lo ≤ x) (hhi : ∀ x ∈ S, x ≤ hi) (h : hi < lo + lo) :
    ∀ a ∈ S, ∀ b ∈ S, a + b ∉ S := by
  intro a ha b hb hc
  have h1 := hlo a ha
  have h2 := hlo b hb
  have h3 := hhi (a + b) hc
  omega

/-- The consecutive block `{m+1, …, m+k}` (as `(Finset.range k).map (·+(m+1))`) is sum-free once
`m ≥ k`: it sits in `[m+1, m+k]` and `m+k < (m+1)+(m+1)` ⇔ `k < m+2`. So its 3-term count is `0`,
placing it in the circuit-free regime — independent of its additive energy. -/
theorem consecutive_block_sumFree {m k : ℤ} (hm : k ≤ m) {S : Finset ℤ}
    (hS : ∀ x ∈ S, m + 1 ≤ x ∧ x ≤ m + k) :
    ∀ a ∈ S, ∀ b ∈ S, a + b ∉ S :=
  sumFree_of_lo_add_lo_gt_hi
    (fun x hx => (hS x hx).1) (fun x hx => (hS x hx).2) (by omega)

end Math.LonelyRunner
