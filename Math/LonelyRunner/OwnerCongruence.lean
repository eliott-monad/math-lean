/-
# Lonely Runner — the large-owner residual resonance bound (owner congruences)

Provenance: `eliottcassidy2000/math` — **HYP-2110**
(`05-knowledge/hypotheses/HYP-2110-lrc-largeowner-crt-residue-automaton.md`), session S581,
building on opus-S574 / HYP-2105 / THM-398 §4.5 (the cover→congruence translator, owners,
Lemma C).

Setup. For a multiple-of-`n` config, a component `(a, b)` of `G(S')` fits a `v = nw` arc
(centre `j/(nw)`) iff the **endpoint-owner congruences** hold:
  `w·(k_a n + 1) − j·u_a = r_a`,   `|r_a| < u_a / n`   (left endpoint, owner `u_a`),
  `w·(k_b n − 1) − j·u_b = r_b`,   `|r_b| < u_b / n`   (right endpoint, owner `u_b`).
Over `ℤ`, the window `|r| < u/n` is `n·|r| < u`. The **cross-relation defect** is
  `D := u_b·(k_a n + 1) − u_a·(k_b n − 1)`.

This module formalizes the S581 results, all over `ℤ`, `sorry`-free:

* `feasible_elim`   — eliminating the arc index `j`: `w·D = u_b·r_a − u_a·r_b`.
* `resonance_bound` — the headline bound `|D| ≤ u_b·K_a + u_a·K_b` (`K_u = ⌊(u−1)/n⌋`).
* `resonance_bound_clean` — the clean corollary `n·|D| < 2·u_a·u_b`.
* `rigidity`        — small owner (`u ≤ n`) forces the endpoint to the centre: `r = 0`.
* `lemmaC`          — both owners small ⇒ `D = 0`, i.e. the cross-relation `a = b` (Lemma C).

CLARITY / EXTENSION (see the informal reflection). The proof of `resonance_bound` uses ONLY
`w ≥ 1`, the two window bounds, and `u_a, u_b > 0` — it does **not** use that `j` is an integer
or any congruence. So the bound is a `j`-free necessary condition: robust, but blind to the
integrality that the full automaton sees. Lemma C is the `K = 0` corner of the *same*
inequality. The natural Lean extension is therefore to add the integrality refinement (the CRT
congruences `w(k_a n+1) ≡ r_a (mod u_a)`) for a strictly sharper necessary condition — the
arithmetic the residual proof still needs.
-/
import Mathlib

namespace Math.LonelyRunner

/-- The cross-relation defect `D = u_b·(k_a n + 1) − u_a·(k_b n − 1)` (`A = k_a n+1`,
`B = k_b n−1`). `D = 0` is exactly the cross-relation `a = b`. -/
def crossDefect (n u_a k_a u_b k_b : ℤ) : ℤ :=
  u_b * (k_a * n + 1) - u_a * (k_b * n - 1)

/-- The integer window radius `K_u = ⌊(u−1)/n⌋`: the largest `|r|` allowed by `n·|r| < u`.
`K = 0` (rigid) iff `u ≤ n`; slack appears only for `u ≥ n+1`. -/
def windowRadius (u n : ℤ) : ℤ := (u - 1) / n

variable {n u_a u_b k_a k_b w j r_a r_b : ℤ}

/-- **Eliminating the arc index.** The two endpoint equations give a single `j`-free identity. -/
theorem feasible_elim
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b) :
    w * crossDefect n u_a k_a u_b k_b = u_b * r_a - u_a * r_b := by
  rw [crossDefect]; linear_combination u_b * hA - u_a * hB

/-- The window `n·|r| < u` caps `|r|` by the integer radius `⌊(u−1)/n⌋`. -/
theorem abs_le_windowRadius (hn : 0 < n) (hw : n * |r_a| < u_a) :
    |r_a| ≤ windowRadius u_a n := by
  rw [windowRadius, Int.le_ediv_iff_mul_le hn]
  have : n * |r_a| ≤ u_a - 1 := by omega
  linarith [this, mul_comm n |r_a|]

/-- **Core bound** (the `j`-free engine): `|D| ≤ u_b·|r_a| + u_a·|r_b|`, from `w ≥ 1`. -/
theorem abs_crossDefect_le
    (hua : 0 < u_a) (hub : 0 < u_b) (hw : 1 ≤ w)
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b) :
    |crossDefect n u_a k_a u_b k_b| ≤ u_b * |r_a| + u_a * |r_b| := by
  set D := crossDefect n u_a k_a u_b k_b
  have hwd : w * D = u_b * r_a - u_a * r_b := feasible_elim hA hB
  have h1 : |D| ≤ |w * D| := by
    rw [abs_mul, abs_of_pos (by linarith : (0:ℤ) < w)]
    exact le_mul_of_one_le_left (abs_nonneg D) hw
  have h2 : |w * D| ≤ u_b * |r_a| + u_a * |r_b| := by
    rw [hwd, abs_le]
    have hub' : (0:ℤ) ≤ u_b := le_of_lt hub
    have hua' : (0:ℤ) ≤ u_a := le_of_lt hua
    have a1 : u_b * r_a ≤ u_b * |r_a| := mul_le_mul_of_nonneg_left (le_abs_self r_a) hub'
    have a2 : -(u_b * |r_a|) ≤ u_b * r_a := by
      have h := mul_le_mul_of_nonneg_left (neg_abs_le r_a) hub'; rwa [mul_neg] at h
    have b1 : u_a * r_b ≤ u_a * |r_b| := mul_le_mul_of_nonneg_left (le_abs_self r_b) hua'
    have b2 : -(u_a * |r_b|) ≤ u_a * r_b := by
      have h := mul_le_mul_of_nonneg_left (neg_abs_le r_b) hua'; rwa [mul_neg] at h
    exact ⟨by linarith, by linarith⟩
  exact h1.trans h2

/-- **Resonance bound (HYP-2110 headline).** Feasibility forces the cross-relation defect into
the window band: `|D| ≤ u_b·K_a + u_a·K_b`, `K_u = ⌊(u−1)/n⌋`. The band width is exactly the
off-centre slack of the two owners. -/
theorem resonance_bound
    (hn : 0 < n) (hua : 0 < u_a) (hub : 0 < u_b) (hw : 1 ≤ w)
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b)
    (hwa : n * |r_a| < u_a) (hwb : n * |r_b| < u_b) :
    |crossDefect n u_a k_a u_b k_b| ≤ u_b * windowRadius u_a n + u_a * windowRadius u_b n := by
  have core := abs_crossDefect_le hua hub hw hA hB
  have ka := abs_le_windowRadius (r_a := r_a) hn hwa
  have kb := abs_le_windowRadius (r_a := r_b) hn hwb
  have sa : u_b * |r_a| ≤ u_b * windowRadius u_a n :=
    mul_le_mul_of_nonneg_left ka (le_of_lt hub)
  have sb : u_a * |r_b| ≤ u_a * windowRadius u_b n :=
    mul_le_mul_of_nonneg_left kb (le_of_lt hua)
  calc |crossDefect n u_a k_a u_b k_b|
      ≤ u_b * |r_a| + u_a * |r_b| := core
    _ ≤ u_b * windowRadius u_a n + u_a * windowRadius u_b n := by linarith

/-- **Clean corollary:** `n·|D| < 2·u_a·u_b` — the defect is strictly inside the bounded
resonance window (used for the n=14 verification that the accept set is a thin band). -/
theorem resonance_bound_clean
    (hn : 0 < n) (hua : 0 < u_a) (hub : 0 < u_b) (hw : 1 ≤ w)
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b)
    (hwa : n * |r_a| < u_a) (hwb : n * |r_b| < u_b) :
    n * |crossDefect n u_a k_a u_b k_b| < 2 * u_a * u_b := by
  have core := abs_crossDefect_le hua hub hw hA hB
  have hnn : (0:ℤ) ≤ n := le_of_lt hn
  have step1 : n * |crossDefect n u_a k_a u_b k_b| ≤ n * (u_b * |r_a| + u_a * |r_b|) :=
    mul_le_mul_of_nonneg_left core hnn
  have ea : u_b * (n * |r_a|) < u_b * u_a := mul_lt_mul_of_pos_left hwa hub
  have eb : u_a * (n * |r_b|) < u_a * u_b := mul_lt_mul_of_pos_left hwb hua
  calc n * |crossDefect n u_a k_a u_b k_b|
      ≤ n * (u_b * |r_a| + u_a * |r_b|) := step1
    _ = u_b * (n * |r_a|) + u_a * (n * |r_b|) := by ring
    _ < u_b * u_a + u_a * u_b := add_lt_add ea eb
    _ = 2 * u_a * u_b := by ring

/-- **Rigidity (THM-398).** A small owner (`u ≤ n`) leaves no window slack: the endpoint sits
exactly at the arc centre, `r = 0`. -/
theorem rigidity (hn : 1 ≤ n) (hu : u_a ≤ n) (hw : n * |r_a| < u_a) : r_a = 0 := by
  have hlt : n * |r_a| < n := lt_of_lt_of_le hw hu
  have h1 : |r_a| < 1 := by
    by_contra h
    have h' : 1 ≤ |r_a| := not_lt.mp h
    have : n ≤ n * |r_a| := le_mul_of_one_le_right (by linarith) h'
    linarith
  have h2 : |r_a| = 0 := by have := abs_nonneg r_a; omega
  exact abs_eq_zero.mp h2

/-- **Lemma C (small-owner uncoverability, PROVED).** If both owners are small (`≤ n`) and the
component fits an arc, the cross-relation defect vanishes: `D = 0`, i.e. `u_b(k_a n+1) =
u_a(k_b n−1)` — which is `a = b`. (The remaining "`a = b` contradicts `a < b`, hence loose" step
is the geometric/connectivity part, kept informal.) -/
theorem lemmaC
    (hn : 1 ≤ n) (hw : 1 ≤ w)
    (hsa : u_a ≤ n) (hsb : u_b ≤ n)
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b)
    (hwa : n * |r_a| < u_a) (hwb : n * |r_b| < u_b) :
    crossDefect n u_a k_a u_b k_b = 0 := by
  have ra0 : r_a = 0 := rigidity hn hsa hwa
  have rb0 : r_b = 0 := rigidity hn hsb hwb
  have hwd : w * crossDefect n u_a k_a u_b k_b = u_b * r_a - u_a * r_b := feasible_elim hA hB
  rw [ra0, rb0] at hwd
  simp only [mul_zero, sub_zero] at hwd
  rcases mul_eq_zero.mp hwd with hw0 | hD
  · exfalso; omega
  · exact hD

/-- **Lemma C, completed (no nondegenerate small-owner component fits an arc).** The clarity of
the formalization isolates the one geometric input the informal Lemma C still needed: that the
component is nondegenerate, `a < b`. Over `ℤ` (clearing the common positive denominator `n`),
`a < b` is `(k_a n+1)·u_b < (k_b n−1)·u_a`. Combined with rigidity-forced `D = 0` (the
cross-relation `a = b`), this is a contradiction: a nondegenerate component with both owners
small fits NO arc. (Only "fits no arc ⇒ the config is loose" — connectivity — remains informal.) -/
theorem lemmaC_no_fit
    (hn : 1 ≤ n) (hw : 1 ≤ w)
    (hsa : u_a ≤ n) (hsb : u_b ≤ n)
    (hA : w * (k_a * n + 1) - j * u_a = r_a)
    (hB : w * (k_b * n - 1) - j * u_b = r_b)
    (hwa : n * |r_a| < u_a) (hwb : n * |r_b| < u_b)
    (hab : (k_a * n + 1) * u_b < (k_b * n - 1) * u_a) :
    False := by
  have hD := lemmaC hn hw hsa hsb hA hB hwa hwb
  rw [crossDefect] at hD
  nlinarith [hD, hab]

end Math.LonelyRunner
