# Balanced Relations And Translation

Source candidate: `candidates/THM-400-balanced-iff-translation-invariant.md`
Informal provenance: `eliottcassidy2000/math` `01-canon/theorems/THM-400-balanced-iff-translation-invariant.md`

Lean formalization added:

- `Math.LonelyRunner.relationValue_translate`
- `Math.LonelyRunner.relation_all_translates_iff`
- `Math.LonelyRunner.relation_holds_all_translates_iff_balanced`
- `Math.LonelyRunner.relation_holds_translate_one_iff_balanced`
- `Math.LonelyRunner.balanced_preserves_relation_under_translate`

Mathematical note:

The clean formal statement is slightly stronger than the prose slogan. Without assuming the
relation already holds at the original speed vector,

```text
forall t, relation holds on v + t
iff
relation holds on v and augmentation(c) = 0.
```

So "balanced iff translation-invariant" is precisely the fiber over an already-valid relation.
This matters for using balanced relations as invariants: zero augmentation alone is a stability
condition, not a validity condition.

A useful sharp corollary also fell out: if the relation holds at `v`, then the single translate
`v + 1` holds iff the relation is balanced. Thus observer coupling is detected by one unit shift;
there is no need to quantify over all translates in applications where integer translates are
available.

I do not think this needs forwarding as a new informal result: it is a clarification/refinement of
THM-400 rather than a separate theorem.
