---
id: THM-343-H7-impossible
source: 01-canon/theorems/THM-343-H7-impossible.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-343
name: H7-impossible
status: PROVED (complete for all n; verified exhaustively n≤7; structurally for all n; Lean-formalised modulo 7 cited axioms 2026-05-29)
date: 2026-05-28
session: opus-2026-05-28-S5 (completion); opus-2026-05-28-S4 (initial); oracle-2026-05-29-S1 (Lean formalisation)
lean: 04-computation/lean/TournamentH7/  (Tournament.H_ne_seven)
---

# THM-343: H(T) = 7 is Impossible for All Tournaments

## Statement

For every tournament T on n vertices (any n ≥ 1), H(T) ≠ 7.

Equivalently: the value 7 does not appear in the H-spectrum of any tournament.

## Computational Evidence

- n ≤ 7: EXHAUSTIVELY VERIFIED. 0 occurrences of H=7 among all 2^{C(n,2)} tournaments for n=3,4,5,6,7.
- n=8: SAMPLED (50,000 random tournaments), 0 violations found.
- See: `05-knowledge/results/h7_impossible_s4.out`, `thm343_complete_proof_s5.out`.

## Complete Proof (REVISED — opus-2026-05-28-S6 audit)

**Audited assumptions** (`05-knowledge/results/audit_thm343_s6.out`):

| ID  | Assumption                                                                  | Verification          |
|-----|-----------------------------------------------------------------------------|-----------------------|
| A1  | OCF: H(T) = I(Ω(T), 2)                                                       | exhaustive n=3..6 ✓   |
| A2  | (3,0,0,...) is unique non-negative integer solution under chain constraint | algebraic + audit ✓   |
| A3  | Chain constraint: α_k ≥ 1 ⇒ α_{k-1} ≥ k                                     | exhaustive n=3..6 ✓   |
| A7  | n=4 SC has unique score sequence (1,1,2,2)                                   | exhaustive ✓          |
| A8  | c₃(T) = C(n,3) − Σ C(s_i, 2)                                                 | exhaustive n=3..5 ✓   |
| A9  | Moon (1966) Cor 2.1: SC tournament on n has ≥ n−k+1 cycles of length k       | n=3..6 ✓ for k=3      |
| A10 | Camion (1959): SC ⇒ ∃ directed Hamilton cycle                                | exhaustive n=3..6 ✓   |

**References:**
  - Grinberg-Stanley, OCF: arXiv:2412.10572 Corollary 20.
  - Moon, J.W. (1966), *On subtournaments of a tournament*, Canad. Math. Bull. 9 (3), 297-301 — **Corollary 2.1**: "The minimum number of cycles of length k a strong tournament T_n can contain is n − k + 1." (k = 3, ..., n.)

## Notes for the formalizer

(none yet)
