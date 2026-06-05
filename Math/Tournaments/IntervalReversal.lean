/-
# Interval reversals of transitive tournaments

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/THM-410-interval-reversal-triangle-count.md`.

This file formalizes the local triangle-counting core of THM-410.  Starting from
the transitive tournament on a linearly ordered vertex type, reverse the ordered
arcs in a matching `M`.  On any increasing triple `x < y < z`, the triple becomes
cyclic exactly when the long arc `(x,z)` is one of the reversed matching edges.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

open Finset
open scoped BigOperators

/-- A directed 3-cycle on the displayed support, in either cyclic orientation. -/
def IsDirectedThreeCycle {V : Type*} (T : Tournament V) (x y z : V) : Prop :=
  (T.beats x y ∧ T.beats y z ∧ T.beats z x) ∨
    (T.beats y x ∧ T.beats z y ∧ T.beats x z)

instance isDirectedThreeCycle_decidable {V : Type*} (T : Tournament V)
    [DecidableRel T.beats] (x y z : V) : Decidable (IsDirectedThreeCycle T x y z) := by
  unfold IsDirectedThreeCycle
  infer_instance

/-- A finitary matching of ordered pairs: every member is ordered by `<`, and if two
members share a vertex then they are the same ordered pair. -/
def IsOrderedMatching {V : Type*} [LT V] (M : Finset (V × V)) : Prop :=
  (∀ {a b : V}, (a, b) ∈ M → a < b) ∧
    ∀ {a b c d : V}, (a, b) ∈ M → (c, d) ∈ M →
      (a = c ∨ a = d ∨ b = c ∨ b = d) → (a, b) = (c, d)

/-- The arc relation obtained from the transitive tournament by reversing the ordered
pairs in `M`.  Only membership of the lower-then-upper pair is queried, so malformed
nonordered pairs in `M` are ignored by the relation; the main theorem assumes `M` is an
ordered matching. -/
def intervalReversalBeats {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)]
    (M : Finset (V × V)) (x y : V) : Prop :=
  (x < y ∧ (x, y) ∉ M) ∨ (y < x ∧ (y, x) ∈ M)

/-- The interval-reversal tournament associated to a set of reversed ordered arcs. -/
def intervalReversalTournament {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)]
    (M : Finset (V × V)) : Tournament V where
  beats := intervalReversalBeats M
  irrefl := by
    intro v
    simp [intervalReversalBeats]
  asymm := by
    intro a b hab hba
    rcases hab with ⟨hab_lt, hab_not_mem⟩ | ⟨hba_lt, hba_mem⟩
    · rcases hba with ⟨hba_lt, _⟩ | ⟨_, hab_mem⟩
      · exact (lt_asymm hab_lt hba_lt).elim
      · exact hab_not_mem hab_mem
    · rcases hba with ⟨_, hba_not_mem⟩ | ⟨hab_lt, _⟩
      · exact hba_not_mem hba_mem
      · exact (lt_asymm hba_lt hab_lt).elim
  total := by
    intro a b hne
    rcases lt_or_gt_of_ne hne with hab_lt | hba_lt
    · by_cases hmem : (a, b) ∈ M
      · right
        exact Or.inr ⟨hab_lt, hmem⟩
      · left
        exact Or.inl ⟨hab_lt, hmem⟩
    · by_cases hmem : (b, a) ∈ M
      · left
        exact Or.inr ⟨hba_lt, hmem⟩
      · right
        exact Or.inl ⟨hba_lt, hmem⟩

instance intervalReversalTournament_decidableRel {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)]
    (M : Finset (V × V)) : DecidableRel (intervalReversalTournament M).beats :=
  fun x y => by
    change Decidable (intervalReversalBeats M x y)
    unfold intervalReversalBeats
    infer_instance

/-- In an ordered matching, two distinct edges cannot share a displayed vertex. -/
private theorem IsOrderedMatching.eq_of_share {V : Type*} [LT V] {M : Finset (V × V)}
    (hM : IsOrderedMatching M) {a b c d : V} (hab : (a, b) ∈ M) (hcd : (c, d) ∈ M)
    (hshare : a = c ∨ a = d ∨ b = c ∨ b = d) :
    (a, b) = (c, d) :=
  hM.2 hab hcd hshare

/-- **THM-410, local form.**  For an increasing triple in the transitive tournament with
matching arcs reversed, cyclicity is equivalent to reversing the long arc. -/
theorem intervalReversal_directedThreeCycle_iff {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)]
    {M : Finset (V × V)} (hM : IsOrderedMatching M) {x y z : V}
    (hxy : x < y) (hyz : y < z) :
    IsDirectedThreeCycle (intervalReversalTournament M) x y z ↔ (x, z) ∈ M := by
  have hxz : x < z := lt_trans hxy hyz
  have hxy_ne : x ≠ y := ne_of_lt hxy
  have hyz_ne : y ≠ z := ne_of_lt hyz
  have not_yx : ¬ y < x := not_lt_of_gt hxy
  have not_zy : ¬ z < y := not_lt_of_gt hyz
  have not_zx : ¬ z < x := not_lt_of_gt hxz
  have not_xy_yz : ¬ ((x, y) ∈ M ∧ (y, z) ∈ M) := by
    intro h
    have heq : (x, y) = (y, z) :=
      IsOrderedMatching.eq_of_share hM h.1 h.2 (Or.inr (Or.inr (Or.inl rfl)))
    exact hxy_ne (congrArg Prod.fst heq)
  constructor
  · intro hcyc
    simp [IsDirectedThreeCycle, intervalReversalTournament, intervalReversalBeats,
      hxy, hyz, hxz, not_yx, not_zy, not_zx] at hcyc
    rcases hcyc with ⟨_, _, hxz_mem⟩ | ⟨hxy_mem, hyz_mem, _⟩
    · exact hxz_mem
    · exact (not_xy_yz ⟨hxy_mem, hyz_mem⟩).elim
  · intro hxz_mem
    have not_xy : (x, y) ∉ M := by
      intro hxy_mem
      have heq : (x, z) = (x, y) :=
        IsOrderedMatching.eq_of_share hM hxz_mem hxy_mem (Or.inl rfl)
      exact hyz_ne ((congrArg Prod.snd heq).symm)
    have not_yz : (y, z) ∉ M := by
      intro hyz_mem
      have heq : (x, z) = (y, z) :=
        IsOrderedMatching.eq_of_share hM hxz_mem hyz_mem (Or.inr (Or.inr (Or.inr rfl)))
      exact hxy_ne (congrArg Prod.fst heq)
    simp [IsDirectedThreeCycle, intervalReversalTournament, intervalReversalBeats,
      hxy, hyz, hxz, not_yx, not_zy, not_zx, not_xy, not_yz, hxz_mem]

/-- Increasing triples that are directed 3-cycles in the interval-reversal tournament. -/
def intervalReversalIncreasingCycles {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)] [Fintype V]
    (M : Finset (V × V)) : Finset (V × V × V) :=
  Finset.univ.filter fun t =>
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧
      IsDirectedThreeCycle (intervalReversalTournament M) t.1 t.2.1 t.2.2

/-- The interval witnesses counted on the right side of THM-410: a reversed pair together
with an intermediate vertex between its endpoints. -/
def intervalReversalWitnesses {V : Type*} [LinearOrder V] [DecidableEq V]
    [DecidableRel ((· < ·) : V → V → Prop)] [Fintype V]
    (M : Finset (V × V)) : Finset (Σ _p : V × V, V) :=
  M.sigma fun p => Finset.univ.filter (fun v => p.1 < v ∧ v < p.2)

/-- **THM-410, counting form.**  The number of increasing directed 3-cycle supports in
the interval-reversal tournament is the sum, over reversed matching edges, of the number
of vertices strictly between the two endpoints. -/
theorem intervalReversal_directedThreeCycleCount {V : Type*}
    [LinearOrder V] [DecidableEq V] [DecidableRel ((· < ·) : V → V → Prop)]
    [Fintype V] {M : Finset (V × V)}
    (hM : IsOrderedMatching M) :
    (intervalReversalIncreasingCycles M).card =
      ∑ p ∈ M, (Finset.univ.filter (fun v : V => p.1 < v ∧ v < p.2)).card := by
  rw [← Finset.card_sigma]
  apply Finset.card_bij
    (fun t _ht => ⟨(t.1, t.2.2), t.2.1⟩)
  · intro t ht
    simp [intervalReversalIncreasingCycles] at ht
    rcases ht with ⟨hxy, hyz, hcyc⟩
    have hxz_mem : (t.1, t.2.2) ∈ M :=
      (intervalReversal_directedThreeCycle_iff hM hxy hyz).mp hcyc
    simp [hxz_mem, hxy, hyz]
  · intro a _ha b _hb h
    rcases a with ⟨x, y, z⟩
    rcases b with ⟨x', y', z'⟩
    simp at h
    rcases h with ⟨⟨rfl, rfl⟩, rfl⟩
    rfl
  · intro w hw
    rcases w with ⟨⟨x, z⟩, y⟩
    simp at hw
    rcases hw with ⟨hxz_mem, hxy, hyz⟩
    refine ⟨(x, y, z), ?_, rfl⟩
    have hcyc : IsDirectedThreeCycle (intervalReversalTournament M) x y z :=
      (intervalReversal_directedThreeCycle_iff hM hxy hyz).mpr hxz_mem
    simp [intervalReversalIncreasingCycles, hxy, hyz, hcyc]

end Math.Tournaments
