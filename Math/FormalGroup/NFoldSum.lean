/-
# The n-fold sum of the tournament formal group `F(x,y) = (x+y)/(1+xy)`

Provenance: `eliottcassidy2000/math`
  * `01-canon/theorems/LEM-004-tournaments-are-odd-functions.md` (entry (d): the
    tournament formal group law `F(x,y) = (x+y)/(1+xy)`, with `log_F = arctanh`).
  * `04-computation/formal_group_s90as.py` (the formal group law of tournament
    composition; the `[m]`-series and the Cayley-address multiplication law
    `F(x_m, x_n) = x_{mn}` for `x_n = (n-1)/(n+1)`).
  * informal commit "verify formal group n-fold sums" (`5f33de8e`).

This file extends `Math.FormalGroup.Basic` (which fixes `F` and its oddness) with the
*n-fold* formal sum and its closed form.

The `n`-fold formal sum of a list `[a₁, …, aₙ]` is `F a₁ (F a₂ (… (F aₙ 0)))`.
Because `F` is the `tanh`-addition law, this telescopes: writing `E l` for the sum of
products over *even* subsets of the list and `O l` for the sum over *odd* subsets
(the even/odd parts of `∏ (1 + aᵢ t)` at `t = 1`), the closed form is

  `Fsum l = O l / E l`   (away from the poles `E (suffix) = 0`).

For `n = 2` this is `(x + y)/(1 + xy) = F x y`; for `n = 3` it is the symmetric
`(x + y + z + xyz)/(1 + xy + yz + zx)`, from which associativity of `F` is immediate.
The Cayley-address law `F((m-1)/(m+1), (n-1)/(n+1)) = (mn-1)/(mn+1)` shows the law is
ordinary multiplication in disguise.

We work concretely over `ℝ` (where `r / 0 = 0`), matching `Math.FormalGroup.Basic`.
-/
import Mathlib
import Math.FormalGroup.Basic

namespace Math.FormalGroup

/-- The defining quotient form of `F`, as a rewrite handle (`F a b = (a+b)/(1+a*b)`). -/
theorem F_eq (a b : ℝ) : F a b = (a + b) / (1 + a * b) := rfl

/-! ## The n-fold formal sum -/

/-- The `n`-fold formal sum `F a₁ (F a₂ (… (F aₙ 0)))` of a list under the law `F`. -/
noncomputable def Fsum : List ℝ → ℝ
  | [] => 0
  | a :: l => F a (Fsum l)

@[simp] theorem Fsum_nil : Fsum [] = 0 := rfl

@[simp] theorem Fsum_cons (a : ℝ) (l : List ℝ) : Fsum (a :: l) = F a (Fsum l) := rfl

/-- Paired even/odd elementary-symmetric accumulator: `EO l = (E l, O l)`. -/
def EO : List ℝ → ℝ × ℝ
  | [] => (1, 0)
  | a :: l => ((EO l).1 + a * (EO l).2, (EO l).2 + a * (EO l).1)

/-- Even part `E l = Σ_{S ⊆ l, |S| even} ∏ S` (the closed-form denominator). -/
def Epart (l : List ℝ) : ℝ := (EO l).1
/-- Odd part `O l = Σ_{S ⊆ l, |S| odd} ∏ S` (the closed-form numerator). -/
def Opart (l : List ℝ) : ℝ := (EO l).2

@[simp] theorem Epart_nil : Epart [] = 1 := rfl
@[simp] theorem Opart_nil : Opart [] = 0 := rfl

theorem Epart_cons (a : ℝ) (l : List ℝ) : Epart (a :: l) = Epart l + a * Opart l := rfl
theorem Opart_cons (a : ℝ) (l : List ℝ) : Opart (a :: l) = Opart l + a * Epart l := rfl

/-! ## The closed form of the n-fold sum -/

/-- **Closed form of the n-fold formal sum.** Away from the poles (`Epart` of every
suffix nonzero), the `n`-fold formal sum equals the ratio of the odd part to the even
part of the list. This is the formal-group statement that iterating `F` collapses to a
single ratio of elementary symmetric functions. -/
theorem Fsum_eq_div (l : List ℝ) (h : ∀ s : List ℝ, s <:+ l → Epart s ≠ 0) :
    Fsum l = Opart l / Epart l := by
  induction l with
  | nil => simp
  | cons a t ih =>
      have hEt : Epart t ≠ 0 := h t (List.suffix_cons a t)
      have hEat : Epart (a :: t) ≠ 0 := h (a :: t) (List.suffix_refl _)
      have hih : Fsum t = Opart t / Epart t :=
        ih fun s hs => h s (hs.trans (List.suffix_cons a t))
      have hEat' : Epart t + a * Opart t ≠ 0 := by rwa [Epart_cons] at hEat
      have key : (1 : ℝ) + a * (Opart t / Epart t) = (Epart t + a * Opart t) / Epart t := by
        field_simp
      have h1 : (1 : ℝ) + a * (Opart t / Epart t) ≠ 0 := by
        rw [key]; exact div_ne_zero hEat' hEt
      rw [Fsum_cons, hih, F_eq, Epart_cons, Opart_cons, div_eq_div_iff h1 hEat']
      field_simp
      ring

/-! ## The hidden diagonalization: `E ± O = ∏(1 ± aᵢ)`

The recursion `E(a::l) = E l + a·O l`, `O(a::l) = O l + a·E l` is the matrix product
`[E; O] ↦ [[1,a],[a,1]] [E; O]`. The swap matrix `[[0,1],[1,0]]` is diagonalized by the
eigenvectors `(1, ±1)`, so `E ± O` decouple into ordinary products. These are
*unconditional* polynomial identities (no division), and they give the cleanest closed
form of the n-fold sum below. -/

/-- `E l + O l = ∏ (1 + aᵢ)` — the `(1,1)`-eigencomponent of the recursion. -/
theorem Epart_add_Opart (l : List ℝ) :
    Epart l + Opart l = (l.map (fun a => 1 + a)).prod := by
  induction l with
  | nil => simp
  | cons a t ih =>
      simp only [Epart_cons, Opart_cons, List.map_cons, List.prod_cons]
      rw [← ih]; ring

/-- `E l - O l = ∏ (1 - aᵢ)` — the `(1,-1)`-eigencomponent of the recursion. -/
theorem Epart_sub_Opart (l : List ℝ) :
    Epart l - Opart l = (l.map (fun a => 1 - a)).prod := by
  induction l with
  | nil => simp
  | cons a t ih =>
      simp only [Epart_cons, Opart_cons, List.map_cons, List.prod_cons]
      rw [← ih]; ring

/-- **The n-fold sum as the Cayley transform of a product.** Away from the poles, the
`n`-fold formal sum is `(∏(1+aᵢ) - ∏(1-aᵢ)) / (∏(1+aᵢ) + ∏(1-aᵢ))`. Equivalently the
Cayley transform `Q(x)=(1+x)/(1-x)` carries the n-fold sum to the ordinary product
`∏ Q(aᵢ) = ∏(1+aᵢ)/∏(1-aᵢ)`: the formal group law is multiplication in disguise. -/
theorem Fsum_eq_prod (l : List ℝ) (h : ∀ s : List ℝ, s <:+ l → Epart s ≠ 0) :
    Fsum l =
      ((l.map (fun a => 1 + a)).prod - (l.map (fun a => 1 - a)).prod) /
        ((l.map (fun a => 1 + a)).prod + (l.map (fun a => 1 - a)).prod) := by
  have hsub : (l.map (fun a => 1 + a)).prod - (l.map (fun a => 1 - a)).prod
      = 2 * Opart l := by
    rw [← Epart_add_Opart, ← Epart_sub_Opart]; ring
  have hadd : (l.map (fun a => 1 + a)).prod + (l.map (fun a => 1 - a)).prod
      = 2 * Epart l := by
    rw [← Epart_add_Opart, ← Epart_sub_Opart]; ring
  rw [Fsum_eq_div l h, hsub, hadd, mul_div_mul_left _ _ (two_ne_zero)]

/-! ## Small cases and associativity -/

/-- The 2-fold sum is just `F`. -/
@[simp] theorem Fsum_pair (x y : ℝ) : Fsum [x, y] = F x y := by simp

/-- The 3-fold formal sum (right-bracketed) in symmetric closed form. -/
theorem F_right3 (x y z : ℝ) (hyz : (1 : ℝ) + y * z ≠ 0)
    (hd : (1 : ℝ) + (x * y + y * z + z * x) ≠ 0) :
    F x (F y z) = (x + y + z + x * y * z) / (1 + (x * y + y * z + z * x)) := by
  have hne : (1 : ℝ) + x * F y z ≠ 0 := by
    rw [F_eq y z,
        show 1 + x * ((y + z) / (1 + y * z)) = (1 + (x * y + y * z + z * x)) / (1 + y * z) by
          field_simp; ring]
    exact div_ne_zero hd hyz
  rw [F_eq x (F y z), div_eq_div_iff hne hd, F_eq y z]
  field_simp
  ring

/-- The 3-fold formal sum (left-bracketed) in the same symmetric closed form. -/
theorem F_left3 (x y z : ℝ) (hxy : (1 : ℝ) + x * y ≠ 0)
    (hd : (1 : ℝ) + (x * y + y * z + z * x) ≠ 0) :
    F (F x y) z = (x + y + z + x * y * z) / (1 + (x * y + y * z + z * x)) := by
  have hne : (1 : ℝ) + F x y * z ≠ 0 := by
    rw [F_eq x y,
        show 1 + (x + y) / (1 + x * y) * z = (1 + (x * y + y * z + z * x)) / (1 + x * y) by
          field_simp; ring]
    exact div_ne_zero hd hxy
  rw [F_eq (F x y) z, div_eq_div_iff hne hd, F_eq x y]
  field_simp
  ring

/-- **Associativity of `F`** (away from the poles). Both bracketings of the 3-fold sum
equal the symmetric closed form, so the formal group law is associative. -/
theorem F_assoc (x y z : ℝ) (hxy : (1 : ℝ) + x * y ≠ 0) (hyz : (1 : ℝ) + y * z ≠ 0)
    (hd : (1 : ℝ) + (x * y + y * z + z * x) ≠ 0) :
    F (F x y) z = F x (F y z) := by
  rw [F_left3 x y z hxy hd, F_right3 x y z hyz hd]

/-- The 3-fold formal sum, as the genuine `Fsum [x,y,z]`. -/
theorem Fsum_triple (x y z : ℝ) (hyz : (1 : ℝ) + y * z ≠ 0)
    (hd : (1 : ℝ) + (x * y + y * z + z * x) ≠ 0) :
    Fsum [x, y, z] = (x + y + z + x * y * z) / (1 + (x * y + y * z + z * x)) := by
  have : Fsum [x, y, z] = F x (F y z) := by simp [Fsum]
  rw [this, F_right3 x y z hyz hd]

/-! ## The Cayley address: the formal group law is multiplication -/

/-- The Cayley address of a number `n`: `addr n = (n-1)/(n+1)`. Its `arctanh` is
`(ln n)/2`, so `F` on addresses should be multiplication of the underlying numbers. -/
noncomputable def addr (n : ℝ) : ℝ := (n - 1) / (n + 1)

/-- **The formal group law on Cayley addresses is multiplication**:
`F(addr m, addr n) = addr (m·n)`. (`formal_group_s90as.py`, Part 1.) -/
theorem F_addr (m n : ℝ) (hm : m + 1 ≠ 0) (hn : n + 1 ≠ 0) (hmn : m * n + 1 ≠ 0) :
    F (addr m) (addr n) = addr (m * n) := by
  have hden : (1 : ℝ) + addr m * addr n ≠ 0 := by
    rw [show (1 : ℝ) + addr m * addr n = 2 * (m * n + 1) / ((m + 1) * (n + 1)) by
          unfold addr; field_simp; ring]
    exact div_ne_zero (mul_ne_zero two_ne_zero hmn) (mul_ne_zero hm hn)
  rw [F_eq, div_eq_iff hden]
  unfold addr
  field_simp
  ring

end Math.FormalGroup
