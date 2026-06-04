---
id: THM-110-beta3-leq-1
source: 01-canon/theorems/THM-110-beta3-leq-1.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-110: β₃(T) ≤ 1 for All Tournaments

> **NOTE:** This file's status is OUTDATED. β₃ = 2 exists at n=8 (MISTAKE-018, 0.08% rate).
> See **THM-123-beta3-leq-1-proof-architecture.md** for the correct status.

**Status:** FALSE at n>=8 (MISTAKE-018: beta_3=2 exists at n=8, 0.08% rate). Valid only for n<=7.
**Filed by:** opus-2026-03-09-S52
**Depends on:** THM-108 (β₂ = 0), THM-109 (good vertex existence for β₂)

## Statement

For any tournament T on n vertices:

    β₃(T) ∈ {0, 1}

Combined with THM-098 (Boolean odd Betti, kind-pasteur-S45), this confirms
the first non-trivial case of the Boolean odd Betti conjecture.

## Proof

### Step 1: LES Setup

For any tournament T on n ≥ 4 vertices and vertex v, the long exact sequence
of the pair (T, T\v) in GLMY path homology gives:

    H₃(T\v) →^{i_*} H₃(T) →^{j_*} H₃(T,T\v) →^{δ} H₂(T\v) →^{i_*} H₂(T)

By THM-108: β₂(T) = β₂(T\v) = 0 for all tournaments. Therefore:
- H₂(T\v) = 0 and H₂(T) = 0
- The connecting map δ: H₃(T,T\v) → H₂(T\v) = 0 is the zero map
- By exactness at H₃(T,T\v): j_* is surjective
- By exactness at H₃(T): im(i_*) = ker(j_*)

### Step 2: Dimension Formula

From j_* surjective:

    β₃(T) = dim H₃(T) = dim(ker j_*) + dim(im j_*) = dim(im i_*) + dim H₃(T,T\v)

Since dim(im i_*) ≤ β₃(T\v):

## Notes for the formalizer

(none yet)
