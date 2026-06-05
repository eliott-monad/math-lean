/-
# Set theory / CH carrier atlas — finite formal shadow

Provenance: `eliottcassidy2000/math` — HYP-2232 (S656),
`05-knowledge/results/continuum_hypothesis_carrier_s656.out`.

S656 uses the Continuum Hypothesis as a methodological warning: cardinal values are
scalar shadows, while the proof object also retains a model/generic side channel.  This
file does not formalize CH independence.  It formalizes the finite, repo-internal atlas
data emitted by the S656 computation: the finite powerset-shadow rows and the transitive
tournament over proof-route carriers.
-/
import Mathlib

namespace Math.SetTheory

/-- One row of the finite powerset-shadow table from S656. -/
structure FinitePowersetShadow where
  n : ℕ
  pow : ℕ
  finiteSuccessor : ℕ
  overshoot : ℕ
  intermediateSizes : ℕ
deriving DecidableEq, Repr

/-- The finite analogue recorded by S656: compare `2^n` with the finite successor `n+1`. -/
def finitePowersetShadow (n : ℕ) : FinitePowersetShadow where
  n := n
  pow := 2 ^ n
  finiteSuccessor := n + 1
  overshoot := 2 ^ n - (n + 1)
  intermediateSizes := 2 ^ n - (n + 1)

/-- The S656 finite powerset-shadow table for `n = 0, ..., 9`. -/
theorem finitePowersetShadow_rows_zero_to_nine :
    (List.range 10).map finitePowersetShadow =
      [ { n := 0, pow := 1, finiteSuccessor := 1, overshoot := 0, intermediateSizes := 0 },
        { n := 1, pow := 2, finiteSuccessor := 2, overshoot := 0, intermediateSizes := 0 },
        { n := 2, pow := 4, finiteSuccessor := 3, overshoot := 1, intermediateSizes := 1 },
        { n := 3, pow := 8, finiteSuccessor := 4, overshoot := 4, intermediateSizes := 4 },
        { n := 4, pow := 16, finiteSuccessor := 5, overshoot := 11, intermediateSizes := 11 },
        { n := 5, pow := 32, finiteSuccessor := 6, overshoot := 26, intermediateSizes := 26 },
        { n := 6, pow := 64, finiteSuccessor := 7, overshoot := 57, intermediateSizes := 57 },
        { n := 7, pow := 128, finiteSuccessor := 8, overshoot := 120, intermediateSizes := 120 },
        { n := 8, pow := 256, finiteSuccessor := 9, overshoot := 247, intermediateSizes := 247 },
        { n := 9, pow := 512, finiteSuccessor := 10, overshoot := 502, intermediateSizes := 502 } ] := by
  decide

/-- The proof-route carriers used in the S656 tournament analysis. -/
inductive CHRoute where
  | forcingGeneric
  | innerModel
  | absolutenessAudit
  | equinumerosityFiber
  | lrcStatistic
  | ordinalBoundary
  | rawCardinal
deriving DecidableEq, Repr, Fintype

namespace CHRoute

/-- The S656 order by decreasing side-channel score. -/
def topOrder : List CHRoute :=
  [ forcingGeneric,
    innerModel,
    absolutenessAudit,
    equinumerosityFiber,
    lrcStatistic,
    ordinalBoundary,
    rawCardinal ]

/-- All proof-route carriers in the same order used by the S656 computation. -/
def all : List CHRoute := topOrder

/-- The score tuple
`(side-channel retention, repo transfer value, foundational centrality, low risk)`. -/
def score : CHRoute → ℕ × ℕ × ℕ × ℕ
  | forcingGeneric => (5, 5, 5, 4)
  | innerModel => (5, 4, 5, 4)
  | absolutenessAudit => (4, 5, 5, 5)
  | equinumerosityFiber => (4, 5, 4, 5)
  | lrcStatistic => (4, 5, 3, 4)
  | ordinalBoundary => (4, 4, 4, 5)
  | rawCardinal => (1, 1, 3, 1)

/-- The transitive rank of the S656 route tournament. -/
def rank : CHRoute → ℕ
  | forcingGeneric => 6
  | innerModel => 5
  | absolutenessAudit => 4
  | equinumerosityFiber => 3
  | lrcStatistic => 2
  | ordinalBoundary => 1
  | rawCardinal => 0

/-- Lexicographic comparison for the four S656 score channels. -/
def lexGt4 : ℕ × ℕ × ℕ × ℕ → ℕ × ℕ × ℕ × ℕ → Bool
  | (a₁, a₂, a₃, a₄), (b₁, b₂, b₃, b₄) =>
      decide (a₁ > b₁ ∨
        (a₁ = b₁ ∧ (a₂ > b₂ ∨
          (a₂ = b₂ ∧ (a₃ > b₃ ∨
            (a₃ = b₃ ∧ a₄ > b₄))))))

/-- The S656 route tournament edge relation. -/
def beatsBool (a b : CHRoute) : Bool := lexGt4 (score a) (score b)

/-- Number of outgoing route-tournament wins. -/
def wins (r : CHRoute) : ℕ := (all.filter fun s => beatsBool r s).length

/-- The S656 score histogram, encoded as counts of vertices with win counts `0, ..., 6`. -/
def scoreHistogram : List ℕ :=
  (List.range 7).map fun k => (all.filter fun r => wins r = k).length

/-- Boolean check that adjacent entries form a directed path. -/
def chainBeats : List CHRoute → Bool
  | [] => true
  | [_] => true
  | a :: b :: rest => beatsBool a b && chainBeats (b :: rest)

/-- The S656 score order has wins `6,5,4,3,2,1,0`. -/
theorem wins_topOrder :
    topOrder.map wins = [6, 5, 4, 3, 2, 1, 0] := by
  decide

/-- The explicit rank certificate for the transitive route tournament. -/
theorem rank_topOrder :
    topOrder.map rank = [6, 5, 4, 3, 2, 1, 0] := by
  decide

/-- Route edges are exactly comparison by the S656 transitive rank. -/
theorem beatsBool_iff_rank_gt (a b : CHRoute) :
    beatsBool a b = true ↔ rank a > rank b := by
  cases a <;> cases b <;> decide

/-- The S656 route-tournament score histogram is `{0:1, ..., 6:1}`. -/
theorem scoreHistogram_eq :
    scoreHistogram = [1, 1, 1, 1, 1, 1, 1] := by
  decide

/-- The S656 route tournament has no directed three-cycles. -/
theorem no_directed_three_cycles :
    ∀ a b c : CHRoute,
      beatsBool a b = true → beatsBool b c = true → beatsBool c a = false := by
  decide

/-- The explicit Hamiltonian route path reported by S656. -/
theorem topOrder_chainBeats :
    chainBeats topOrder = true := by
  decide

end CHRoute

end Math.SetTheory
