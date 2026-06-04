---
id: THM-140-energy-H-correlation-reversal
source: 01-canon/theorems/THM-140-energy-H-correlation-reversal.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-140
title: Additive energy - Hamiltonian path correlation sign reversal
status: PROVED (computational, p=5,7,11,13)
proved_by: kind-pasteur-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-138, THM-139]
related_hypotheses: [HYP-480, HYP-511, HYP-512]
tags: [additive-energy, correlation, phase-transition, circulant, paley, interval]
---

## Main Result

**Theorem (THM-140):** For primes p, let r(p) = Pearson correlation between
additive energy E(S) and Hamiltonian path count H(T_S) across all circulant
tournaments on Z_p. Then:

| p | r(E,H) | Sign | H-maximizer |
|---|--------|------|-------------|
| 5 | 0.000 | Zero | All tied |
| 7 | **-1.000** | Negative | Paley (E=15, minimum) |
| 11 | **-0.088** | Negative | Paley (E=65, minimum) |
| 13 | **+0.509** | Positive | Interval (E=146, maximum) |
| 19 | +??? | Positive | Interval (E=489, maximum) |

The sign reversal occurs between p=11 and p=13.

## Detailed Data

**p=7 (8 circulant tournaments, 2 distinct E values):**
- E=15: H=189 (2 tournaments = Paley orbit) -- E minimum, H MAXIMUM
- E=19: H=175 (6 tournaments = Interval orbit) -- E maximum, H minimum
- r = -1.000 (perfect anti-correlation)

**p=11 (32 circulant tournaments, 4 distinct E values):**
- E=65: H=95,095 (2 tournaments = Paley orbit) -- E minimum, H maximum
- E=73: H=93,467 (10 tournaments)
- E=85: H=93,027 (10 tournaments = Interval orbit) -- E maximum
- E=69: H=92,411 (10 tournaments) -- H minimum (NOT E minimum!)
- r = -0.088 (weak anti-correlation, transition zone)

## Notes for the formalizer

(none yet)
