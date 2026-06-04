---
id: THM-255-sc-maximizer-dichotomy
source: 01-canon/theorems/THM-255-sc-maximizer-dichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-255: SC Maximizer Dichotomy at n=6 Regular

**Status:** PROVED (exhaustive computation, n=6)
**Filed by:** kind-pasteur-2026-03-20-S1

## Statement

For the regular score class (2,2,2,3,3,3) on n=6 vertices, the 2640 labeled tournaments
decompose into exactly 4 isomorphism types by their independence polynomial I(Omega(T), x):

| Type | IP | H | Count | Anti-aut? | alpha_2 | c3 | c5_dir |
|------|-----------|-----|-------|-----------|---------|-----|--------|
| A (SC-BIBD) | (1,14,4) | 45 | 240 | YES | 4 | 8 | 6 |
| B (SC-rich) | (1,20,1) | 45 | 240 | YES | 1 | 8 | 12 |
| C (SC-weak) | (1,16,2) | 41 | 720 | YES | 2 | 8 | 8 |
| D (NSC) | (1,19,1) | 43 | 1440 | NO | 1 | 8 | 11 |

Maximum H=45 is achieved ONLY by SC tournaments (Types A and B).

## Key Observations

1. **All regular n=6 tournaments have c3=8.** The 3-cycle count is a score-class invariant.

2. **Two routes to max H=45:** Both satisfy alpha_1 + 2*alpha_2 = 22.
   - Route A: High alpha_2 (4 disjoint 3-cycle pairs from orbit pairing), low alpha_1 (14)
   - Route B: High alpha_1 (20 directed odd cycles), low alpha_2 (1)

3. **NSC achieves alpha_1 + 2*alpha_2 = 21.** One unit short of the maximum, giving H=43.

4. **SC-weak achieves alpha_1 + 2*alpha_2 = 20.** Even worse, giving H=41 < H(NSC)=43.

5. **The anti-automorphism enables both extremes:** SC tournaments can achieve EITHER
   maximum disjoint pairs (Route A) OR maximum total cycles (Route B), but not both.
   NSC tournaments occupy a constrained middle ground.

## Route A Mechanism (Orbit Pairing)

For Type A, the involutory anti-aut sigma = (0,1)(2,3)(4,5) pairs vertices into 3 orbits.
The 4 vertex-disjoint 3-cycle pairs are:
- {0,2,4} + {1,3,5}

## Notes for the formalizer

(none yet)
