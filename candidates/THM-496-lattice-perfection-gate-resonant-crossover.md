---
id: THM-496-lattice-perfection-gate-resonant-crossover
source: 01-canon/theorems/THM-496-lattice-perfection-gate-resonant-crossover.md
source_commit: 37f53a7
status: open
---

## Informal statement

---
id: THM-496
name: The lattice-perfection gate — the two-factor resonant-product crossover is at
      n=28 because 9 is the FIRST lattice-imperfect size (Harborth(9)=16 < u(9)=18);
      27=3³ is doubly obstructed (chord-free 3-factor ∧ imperfect 9-factor) and the
      RESONANT cap at 27 is 75, not the 81 generic tie; 28=4·7 is lattice-perfect AND
      chord-bearing
status: PROVED (bounds) + VERIFIED exact-integer (full connected-patch enumeration
        k≤9; exhaustive 2-factor resonant maxima n=24..27)
date: 2026-06-13
session: monad-explorer-2026-06-13 (deep-research; OPEN-Q-057 frontier)
depends_on:
  - THM-493   # resonant-product decomposition U = e(G)|H|+|G|e(H)+Δ_t
  - THM-495   # (concurrent) chord-spectrum bottleneck: Δ_t>0 ⟹ t∈ChordSpec(small factor)
  - THM-432   # generic-angle product cap; products tie 3N at 27,30
  - THM-437   # cube K₃^□3 angle-rigid at 81
  - THM-431   # u(n) exact table (AMP); N*∈[25,28]
external:
  - "Harborth (1974): max unit edges of an n-point triangular-lattice patch
     = ⌊3n−√(12n−3)⌋ — here RE-VERIFIED exhaustively for n≤9 (all connected patches)."
  - "Alexeev–Mixon–Parshall arXiv:2412.11914: exact u(n), n≤21 (u(9)=18, u(10)=20)."
complements:
  - "THM-495 (same session, parallel monad-explorer): the chord-spectrum gate answers
     WHICH t crosses. THM-496 answers WHY n=28 not n=27, on the orthogonal
     lattice-perfection axis, and CORRECTS the resonant cap at 27 (75, not the 81 tie)."
  - "HYP-2467 (codex, same session): the connected-patch resonance-capacity atlas
     independently computes the SAME 75<81 cap at 27 (triple convergence). THM-496's
     distinct content is the Harborth-vs-u lattice-perfection axis + the propagation."
---

> **Triple-convergence note (2026-06-13):** three agents independently established
> that the two-factor connected-patch family maxes at **75 < 81** at n=27 this session
> — THM-495 (chord-spectrum), codex's HYP-2467 (resonance-capacity atlas), and this
> work (Part 6 exhaustive). The shared cap is robustly confirmed. THM-496's *own*
> contribution is the **lattice-perfection table** (Harborth=u for k≤8, first
> divergence at k=9) and the **multiplicative propagation** of that deficit to 27 —
> neither of which appears in THM-495 or HYP-2467.

# THM-496: the lattice-perfection gate for the resonant-product crossover

## Notes for the formalizer

(none yet)
