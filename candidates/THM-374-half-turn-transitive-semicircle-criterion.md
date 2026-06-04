---
id: THM-374-half-turn-transitive-semicircle-criterion
source: 01-canon/theorems/THM-374-half-turn-transitive-semicircle-criterion.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-374
name: half-turn-transitive-semicircle-criterion
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on: []
---

# THM-374: Half-turn circular tournaments are transitive exactly in a semicircle

## Statement

Let `X` be a finite set of distinct points on the unit circle with no antipodal
pairs.  Define the half-turn circular tournament by

```text
x -> y  iff  y lies clockwise from x by distance in (0,1/2).
```

Then this tournament is transitive iff all points of `X` lie in some open
semicircle.

Equivalently, for a generic runner-clock cell, the transitive half-turn
tournament is exactly the cell in which the runner configuration has an empty
semicircle, or a circular gap of length greater than `1/2`.

## Proof

Suppose first that all points lie in an open arc of length `1/2`.  Choose the
clockwise-first point `x_0` in that arc and list the remaining points in
clockwise order:

```text
x_0, x_1, ..., x_{m}.
```

For `a<b`, the clockwise distance from `x_a` to `x_b` is less than `1/2`,
because both points lie in the same open semicircle.  Hence `x_a -> x_b`.
The displayed order is therefore a transitive ordering of the tournament.

## Notes for the formalizer

(none yet)
