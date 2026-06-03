/-
# Lonely Runner — the recursive fractal of translated APs stays sum-free

Provenance: `eliottcassidy2000/math` — **HYP-2125** (S587), building on `SumFree.lean` /
`Fusion.lean` (HYP-2120/S585).

S587 recurses the translated-AP flip: use a sum-free digit set as the digits of a base-`b`
construction with `b > 2·max(digit)` (no carries). The resulting self-similar set `S_d` is
sum-free at **every** scale. The inductive heart is one no-carry digit step, formalized here:
combining a sum-free low part `A ⊆ [0, b)` with any high part `B` at base `b` (provided
`2a < b` for every digit `a ∈ A`, so two digits never carry) preserves sum-free-ness — the
lowest digit alone blocks every 3-term relation `c + c' = c''`, because mod `b` it forces a
digit relation `a + a' = a''` that `A`'s sum-freeness rules out.
-/
import Mathlib
import Math.LonelyRunner.Fusion

namespace Math.LonelyRunner

open Finset

/-- The base-`b` combination of a low-digit set `A` with a high set `B`:
`combine A B b = { a + b·x : a ∈ A, x ∈ B }`. One level of the fractal construction. -/
def combine (A B : Finset ℤ) (b : ℤ) : Finset ℤ :=
  (A ×ˢ B).image (fun p => p.1 + b * p.2)

/-- **No-carry sum-free step (the fractal's inductive heart).** If the digit set `A` is
3-term-free and every digit satisfies `0 ≤ a` and `2a < b` (so two digits never carry into the
`b`-place), then `combine A B b` is 3-term-free for *any* high set `B`. Iterating gives a
sum-free set at every scale — the recursive fractal of translated APs. -/
theorem combine_threeTermFree {A B : Finset ℤ} {b : ℤ}
    (hA : ThreeTermFree A)
    (hlo : ∀ a ∈ A, 0 ≤ a) (hcarry : ∀ a ∈ A, 2 * a < b) :
    ThreeTermFree (combine A B b) := by
  intro c hc c' hc' hsum
  simp only [combine, Finset.mem_image, Finset.mem_product] at hc hc' hsum
  obtain ⟨⟨a, x⟩, ⟨haA, _⟩, rfl⟩ := hc
  obtain ⟨⟨a', x'⟩, ⟨haA', _⟩, rfl⟩ := hc'
  obtain ⟨⟨a'', x''⟩, ⟨haA'', _⟩, hee⟩ := hsum
  -- hee : a'' + b * x'' = (a + b*x) + (a' + b*x')
  have ha := hlo a haA; have ha' := hlo a' haA'; have ha'' := hlo a'' haA''
  have hc1 := hcarry a haA; have hc2 := hcarry a' haA'; have hc3 := hcarry a'' haA''
  have hb : 0 < b := by omega
  -- the digit defect a''−a−a' = b·K lies in (−b, b), so K = 0 (no carry).
  set K := x + x' - x'' with hKdef
  have key : a'' - a - a' = b * K := by rw [hKdef]; linear_combination hee
  have hub : b * K < b * 1 := by rw [mul_one, ← key]; omega
  have hlb : b * (-1) < b * K := by rw [mul_neg, mul_one, ← key]; omega
  have hK1 : K < 1 := lt_of_mul_lt_mul_left hub (le_of_lt hb)
  have hKm1 : -1 < K := lt_of_mul_lt_mul_left hlb (le_of_lt hb)
  have hK0 : K = 0 := by omega
  have hdig : a + a' = a'' := by rw [hK0, mul_zero] at key; omega
  exact hA a haA a' haA' (hdig ▸ haA'')

end Math.LonelyRunner
