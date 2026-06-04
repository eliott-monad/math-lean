---
id: THM-409-self-converse-perspective-flip-involution
source: 01-canon/theorems/THM-409-self-converse-perspective-flip-involution.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-409
title: Self-converse tournaments have a canonical perspective-flip involution
status: PROVED
source: codex-2026-06-04-S629
depends_on:
  - HYP-2121
  - THM-408
related:
  - HYP-2204
  - HYP-2205
  - HYP-2133
---

# THM-409 - Self-Converse Perspective Flip Involution

## Statement

Let `T` be a tournament, let `Aut(T)` be its automorphism group, and let
`Anti(T)` be the set of anti-automorphisms, meaning permutations `sigma` of the
vertex set satisfying

```text
x -> y in T  iff  sigma(y) -> sigma(x) in T.
```

Equivalently, `sigma` is an isomorphism from `T` to its converse `T^op`.

If `T` is self-converse, so that `Anti(T)` is nonempty, then:

1. `Anti(T)` is a left and right coset of `Aut(T)`.
2. Every `sigma in Anti(T)` has `sigma^2 in Aut(T)`.
3. `sigma` induces a well-defined map on rooted perspectives, i.e. on the
   `Aut(T)`-orbits of vertices:

   ```text
   [v] -> [sigma(v)].
   ```

4. This induced map is independent of the chosen `sigma in Anti(T)`.

## Notes for the formalizer

(none yet)
