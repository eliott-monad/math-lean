/-
# THM-004 (F1): the inshat algebraic identity for binary signatures; THM-006 (F3):
the minimum Type-II count forced by a `1 ... 0` signature window

Provenance: `eliottcassidy2000/math` — `01-canon/theorems/THM-004-f1-algebraic-identity.md`
(source commit `c0fda1c`) and `01-canon/theorems/THM-006-f3-min-typeii.md`
(source commit `9f7fc6e`).

When a vertex `v` is inserted into a Hamiltonian path `P'` of `T − v`, the number of
resulting Hamiltonian paths of `T`, written `inshat v P'`, depends only on the binary
*signature* `s` of `P'` (the bit `s[j]` records whether `v` beats the `j`-th path vertex).
THM-004 asserts the purely algebraic identity

  `(inshat − 1) / 2  =  #{ Type-II positions }`,

where a Type-II position is an adjacent pair `s[j] = 1, s[j+1] = 0` (a *descent* of the
signature). The statement does not use the tournament beyond the definition of the
signature, so we formalize it for an arbitrary `s : List Bool`.

Writing `b = s.head + (1 − s.last)` for the boundary term, `inshat = b + #ascents +
#descents`. The crux is the telescoping identity `#descents + s.last = #ascents + s.head`,
from which `inshat = 2 · #descents + 1` (so `inshat` is odd and `(inshat − 1)/2 =
#descents`).
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

/-- Number of *descents* of a binary signature: adjacent pairs `(true, false)`,
i.e. positions `j` with `s[j] = 1` and `s[j+1] = 0`. These are the "Type-II positions"
of THM-004. -/
def descents : List Bool → ℕ
  | [] => 0
  | [_] => 0
  | a :: b :: t => (a && !b).toNat + descents (b :: t)

/-- Number of *ascents* of a binary signature: adjacent pairs `(false, true)`,
i.e. positions `j` with `s[j] = 0` and `s[j+1] = 1` ("Type-I positions"). -/
def ascents : List Bool → ℕ
  | [] => 0
  | [_] => 0
  | a :: b :: t => (!a && b).toNat + ascents (b :: t)

/-- The last bit of a signature (`false` for the empty signature, which never occurs). -/
def lastB : List Bool → Bool
  | [] => false
  | [a] => a
  | _ :: b :: t => lastB (b :: t)

/-- `inshat s = b + #ascents + #descents`, where the boundary term is
`b = s.head + (1 − s.last)`. We write `1 − s.last` as `(!s.last).toNat`.
This matches `inshat = b + #01 + #10` from THM-004. -/
def inshat : List Bool → ℕ
  | [] => 0
  | a :: t => a.toNat + (!lastB (a :: t)).toNat + ascents (a :: t) + descents (a :: t)

/-- **Telescoping identity.** For a nonempty signature `a :: l`, the number of descents
plus the last bit equals the number of ascents plus the first bit. Equivalently
`#descents − #ascents = s.head − s.last`. -/
theorem descents_add_last (a : Bool) (l : List Bool) :
    descents (a :: l) + (lastB (a :: l)).toNat = ascents (a :: l) + a.toNat := by
  induction l generalizing a with
  | nil => simp [descents, ascents, lastB]
  | cons b t ih =>
    have hb := ih b
    -- a step of the telescope contributes `(a && !b)` to descents, `(!a && b)` to ascents,
    -- and leaves the last bit unchanged.
    have hstep : (a && !b).toNat + b.toNat = (!a && b).toNat + a.toNat := by
      cases a <;> cases b <;> rfl
    simp only [descents, ascents, lastB] at *
    omega

/-- **THM-004 (F1).** For any nonempty binary signature, `inshat = 2 · #descents + 1`.
In particular `inshat` is odd and `(inshat − 1)/2 = #{Type-II positions}`. -/
theorem inshat_eq (a : Bool) (l : List Bool) :
    inshat (a :: l) = 2 * descents (a :: l) + 1 := by
  have h := descents_add_last a l
  have hM : (!lastB (a :: l)).toNat + (lastB (a :: l)).toNat = 1 := by
    cases lastB (a :: l) <;> rfl
  show a.toNat + (!lastB (a :: l)).toNat + ascents (a :: l) + descents (a :: l)
      = 2 * descents (a :: l) + 1
  omega

/-- The literal form of THM-004: `(inshat − 1) / 2 = #{Type-II positions}`. -/
theorem inshat_sub_one_div_two (a : Bool) (l : List Bool) :
    (inshat (a :: l) - 1) / 2 = descents (a :: l) := by
  rw [inshat_eq]; omega

/-- **THM-006 (F3), Boolean core.** Any signature window whose first bit is `1`
and whose last bit is `0` has at least one Type-II position. In the tournament
application, the endpoints come from the arcs `v → P[j]` and `P[j+L-2] → v`
of the consecutively embedded odd cycle. -/
theorem exists_typeII_of_first_true_last_false (l : List Bool)
    (hlast : lastB (true :: l) = false) :
    0 < descents (true :: l) := by
  have h := descents_add_last true l
  rw [hlast] at h
  simp at h
  omega

/-- The monotone signature pattern `1, ..., 1, 0` has exactly one Type-II
position, so the lower bound in THM-006 is sharp. -/
theorem descents_replicate_true_append_false (n : ℕ) :
    descents (List.replicate (n + 1) true ++ [false]) = 1 := by
  suffices h : ∀ n : ℕ, descents (true :: List.replicate n true ++ [false]) = 1 by
    simpa [List.replicate] using h n
  intro n
  induction n with
  | zero => rfl
  | succ n ih => simpa [List.replicate, descents] using ih

end Math.Tournaments
