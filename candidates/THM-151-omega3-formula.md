---
id: THM-151-omega3-formula
source: 01-canon/theorems/THM-151-omega3-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-151: Explicit Formula for Omega_3

**Status:** VERIFIED (n=5 exhaustive)
**Session:** opus-2026-03-13-S70
**Depends on:** GLMY path homology definitions

## Statement

For a tournament T on n vertices:

$$\Omega_3(T) = \binom{n}{4} - \sum_{v} \left[ c_3(T|_{N^{-}(v)}) + c_3(T|_{N^{+}(v)}) \right]$$

where:
- N^-(v) = in-neighborhood of v, N^+(v) = out-neighborhood of v
- c_3(G) = number of 3-cycles in the subtournament induced on vertex set G
- The sum is over all vertices v ∈ V(T)

## Proof sketch

**Step 1:** Omega_3 counts regular 3-paths (v₀,v₁,v₂,v₃) with:
- Path: v₀→v₁→v₂→v₃
- Regularity: v₀→v₂ and v₁→v₃

**Step 2:** For each 4-vertex subset {a,b,c,d}, omega3_local = #regular 3-paths using
exactly these 4 vertices. By exhaustive computation over all 4 tournament types:

| Score sequence | c₃ (internal) | omega3_local | Type |
|---|---|---|---|
| (0,1,2,3) | 0 | 1 | Transitive |
| (1,1,2,2) | 2 | 1 | 4-cycle |
| (0,2,2,2) | 1 | 0 | Sink + 3-cycle |
| (1,1,1,3) | 1 | 0 | Source + 3-cycle |

**Observation:** omega3_local = 1 iff c₃ is even; = 0 iff c₃ is odd.

At n=4, c₃ ∈ {0, 1, 2} only, so "odd" means c₃ = 1.

**Step 3:** Omega_3 = Σ_{4-subsets S} omega3_local(S) = C(n,4) - #{S : c₃(T|_S) = 1}.

**Step 4:** A 4-subset S with c₃(T|_S) = 1 is either type (0,2,2,2) or (1,1,1,3):

## Notes for the formalizer

(none yet)
