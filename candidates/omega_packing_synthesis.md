---
id: omega_packing_synthesis
source: 05-knowledge/results/omega_packing_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Ω Packing Structure Synthesis
**opus-2026-03-14-S71f**

## Key Results

### 1. OCF Verified with Full Odd-Cycle Counting
- **n=5**: H = I(Ω,2) for ALL 1024 tournaments ✓
- **n=6**: H = I(Ω,2) for ALL 32768 tournaments ✓
- Ω vertices = ALL directed odd cycles (3-cycles, 5-cycles, etc.)
- Each *directed* cycle is a separate vertex (multiple directed cycles on same vertex set)

### 2. Ω Completeness Transition
- **n≤5**: Ω is ALWAYS a complete graph (all cycles share vertices)
  - H = 1 + 2·|V(Ω)| (only α₁ matters)
- **n=6**: Ω is non-complete in 15440/32768 = 47% of tournaments
  - First appearance of α₂ > 0 (disjoint 3-cycle pairs need 6 vertices)
- **n=7**: Non-complete in 87% of sampled tournaments

### 3. Ω Structure Classification at n=6

**Single clique structures** (Ω = K_m):
- K_0: 720 (H=1, transitive)
- K_1: 960 (H=3)
- K_2: 2160 (H=5, cuboid brick!)
- K_4: 2880 (H=9)
- K_5: 1440 (H=11)
- K_6: 1440 (H=13)
- K_7: 2208 (H=15)
- K_8: 720 (H=17)
- K_9: 1440 (H=19)
- K_11: 1440 (H=23)
- K_12: 1440 (H=25)
- K_16: 480 (H=33)

**General (non-clique) structures** — components that are NOT cliques:
- (6): 720 (H=17)
- (9): 1440 (H=23)
- (10): 720 (H=29)
- (11): 480 (H=27)
- (12): 2880 (H=29,33)

## Notes for the formalizer

(none yet)
