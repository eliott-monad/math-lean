---
id: THM-336-paley-subtournament-optimality
source: 01-canon/theorems/THM-336-paley-subtournament-optimality.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-336
name: Paley Sub-Tournament Optimality
status: CONJECTURED (verified p=7, p=11; strong lower bounds p=19, p=23)
session: opus-2026-05-27-S7
verified: computationally p=7,11 (exact via exhaustive search); p=19,23 (lower bounds only)
depends_on: THM-332, OCF
---

## Statement

For prime p ≡ 3 (mod 4), let QR_p denote the Paley tournament on p vertices
(i → j iff (j−i) mod p is a quadratic residue mod p).

**Conjecture:** For all such p,
- H(QR_p) = a(p) — the Paley tournament maximizes HP count over all p-vertex tournaments
- H(QR_p − v) = a(p−1) — the vertex-deleted Paley tournament maximizes HP count over all (p−1)-vertex tournaments

where a(n) = A038375(n) = max Hamiltonian paths in any n-vertex tournament.

## Verified Values

| p  | a(p−1) = H(QR_p − v)     | a(p) = H(QR_p)            | c(p)                   | Status          |
|----|--------------------------|---------------------------|------------------------|-----------------|
| 7  | 45                       | 189                       | 72                     | CONFIRMED exact |
| 11 | 15,745                   | 95,095                    | 39,675                 | CONFIRMED exact |
| 19 | 117,266,659,317          | 1,172,695,746,915         | 527,714,543,799        | lower bound     |
| 23 | 1,313,333,107,451,805    | 15,760,206,976,379,349    | 7,223,436,934,463,772  | lower bound     |
| 31 | (requires ~8 GB RAM)     | (requires ~8 GB RAM)      |                        | open            |

"CONFIRMED exact" means the value equals a(n) as verified by exhaustive search (a038375 solver).
"Lower bound" means H(QR_p) ≥ a(p) and H(QR_p − v) ≥ a(p−1).

## Immediate Corollaries

1. **Vertex-transitivity leverage**: QR_p is vertex-transitive (Z_p acts), so all H(QR_p − v) are equal.
2. **Dominant-vertex version**: By THM-332, if QR_p has a dominant vertex, then H(QR_p) = H(QR_p − dom). But QR_p is regular (no dominant vertex), so this doesn't directly apply.
3. **H-increment**: H(QR_p) = H(QR_p − v) + 2·c(p), where c(p) = #{directed odd simple cycles through any fixed vertex of QR_p}.

## Asymptotic Formula (new, session S7)

## Notes for the formalizer

(none yet)
