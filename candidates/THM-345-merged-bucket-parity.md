---
id: THM-345-merged-bucket-parity
source: 01-canon/theorems/THM-345-merged-bucket-parity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-345
name: merged-bucket-parity
status: PROVED
date: 2026-05-29
session: kind-pasteur-2026-05-29-S5
scripts:
  - 04-computation/merged_bucket_constraints_s5.py
results:
  - 05-knowledge/results/merged_bucket_constraints_s5.out
---

# THM-345: Merged Bucket Parity and Hamming-Layer Transport Constraints

## Statement

Fix the base Hamiltonian path `n-1 -> n-2 -> ... -> 0`, and let
`Q_m = {0,1}^m` be the staircase tiling cube, where
`m = C(n-1,2)`.

Let

```text
pi : Q_m -> G_n/Z_2
```

send a tiling to its merged tournament isomorphism class, where a class
is merged with its tournament complement.  For a merged node `M`, define
the bucket size

```text
B_M = |pi^{-1}(M)|.
```

Then:

1. If `M` is self-complementary, then `B_M` is odd.
2. If `M` is non-self-complementary, then `B_M == 2 mod 4`.
3. The buckets partition the fixed-base tiling cube:

## Notes for the formalizer

(none yet)
