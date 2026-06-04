---
id: THM-124-top-vanishing-injectivity
source: 01-canon/theorems/THM-124-top-vanishing-injectivity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-124: Top Degree Vanishing and d_{n-1} Injectivity

**Statement:** For any tournament T on n ≥ 3 vertices:
1. (Top Vanishing) β_{n-1}(T) = 0 and β_{n-2}(T) = 0.
2. (Top Injectivity) d_{n-1}: Ω_{n-1} → Ω_{n-2} is injective.
3. (Top Exactness) The complex is exact at degree n-2: ker(d_{n-2}) = im(d_{n-1}).

These three statements are equivalent: (2) ⟺ β_{n-1}=0 (by definition), and (3) ⟺ β_{n-2}=0 + β_{n-1}=0.

**Status:** VERIFIED computationally (n=3-8, 1772 tournaments, 0 failures). Proof sketch available, not yet fully rigorous.

**Source:** kind-pasteur-2026-03-10-S50

---

## Computational Evidence

- n=3: 500 samples (all tournaments): 100% injectivity
- n=4: exhaustive (64 tournaments): 100% injectivity
- n=5: exhaustive (1024 tournaments): 100% injectivity
- n=6: 500 samples: 100%
- n=7: 500 samples: 100%
- n=8: 200 samples: 100%

Scripts: `04-computation/top_exactness_test.py`, `top_vanishing_test.py`, `beta6_n8_test.py`
Results: `05-knowledge/results/top_exactness_test.out`, `top_vanishing_test.out`

Sharpness: β_{n-3} CAN be nonzero (β_3 at n=6, β_4 at n=7 for Paley T_7).

---

## Proof Sketch (kind-pasteur-S50, proof agent analysis)

### Step 1: Reduction

Injectivity of d_{n-1} on Ω_{n-1} is equivalent to injectivity of the full boundary ∂ on span(H_T), where H_T is the set of Hamiltonian directed paths of T. This is because Ω_{n-1} ⊆ span(H_T) (Hamiltonian allowed paths are a subspace).

### Step 2: Non-regular face characterization

For a Hamiltonian path P = (v_0, ..., v_{n-1}), the face face_i(P) for 0 < i < n-1 is:

## Notes for the formalizer

(none yet)
