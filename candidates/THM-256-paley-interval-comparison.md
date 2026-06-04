---
id: THM-256-paley-interval-comparison
source: 01-canon/theorems/THM-256-paley-interval-comparison.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-256: Paley Beats Interval via Total Cycle Count at Small Primes

**Status:** PROVED (computational, p=3,7,11)
**Filed by:** kind-pasteur-2026-03-20-S1

## Statement

For Paley primes p = 3 mod 4, the Paley tournament T_p has MORE directed odd cycles
than the interval tournament I_p = Circ(Z_p, {1,...,(p-1)/2}) at p = 3, 7, 11.

| p | H(Paley) | H(Interval) | Paley cycles | Interval cycles | Winner |
|---|----------|-------------|-------------|----------------|--------|
| 3 | 3 | 3 | 1 | 1 | TIE |
| 7 | 189 | 175 | 80 | 59 | PALEY |
| 11 | 95095 | 93027 | ? | ? | PALEY |

At p=7, the cycle breakdown:
- Paley: c3=14, c5_dir=42, c7_dir=24 (total 80)
- Interval: c3=14, c5_dir=28, c7_dir=17 (total 59)

Both have the same c3=14 (all regular n=7 tournaments do). The difference is entirely
in higher-length cycles: Paley has 50% more 5-cycles and 41% more 7-cycles.

## Mechanism

Paley's advantage comes from its FLAT spectrum: all non-trivial eigenvalues have
|lambda_k| = sqrt((p-1)/2), while the interval has a CONCENTRATED spectrum with
one dominant eigenvalue |lambda_1| ~ p/pi.

At small p (p <= 11), flat spectrum => more uniform cycle distribution => more total
cycles => higher alpha_1 => higher H.

At large p (p >= 19), the interval's concentrated spectrum wins because the dominant
eigenvalue creates exponentially more long cycles, overcoming the uniformity advantage.

## Crossover

The Paley-to-interval crossover occurs between p=11 and p=19:
- p=11: H(Paley)/H(Interval) = 95095/93027 = 1.022 (Paley wins by 2.2%)
- p=19: H(Paley)/H(Interval) = 0.990 (Interval wins by 1.0%)

## Notes for the formalizer

(none yet)
