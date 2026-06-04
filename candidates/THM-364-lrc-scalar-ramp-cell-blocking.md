---
id: THM-364-lrc-scalar-ramp-cell-blocking
source: 01-canon/theorems/THM-364-lrc-scalar-ramp-cell-blocking.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-364
name: lrc-scalar-ramp-cell-blocking
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S371
depends_on:
  - THM-358
---

# THM-364: Scalar-Ramp Cell Blocking

## Statement

Let `n >= 2`, `k=n-1`, and let `C` be an open cell of the discontinuity
arrangement for

```text
alpha |-> (floor(n*{alpha}), floor(n*{2 alpha}), ..., floor(n*{(n-1) alpha})).
```

Write the constant floor pattern on `C` as

```text
b_i = floor(n*{i alpha}),  i=1,...,n-1.
```

For any multiplier `m mod n`, define the scalar ramp

```text
v_i = m i mod n.
```

Then for every shift `s mod n`, at least one coordinate is blocked:

```text
(s v_i + b_i) mod n in {0, n-1}
```

for some `1 <= i <= n-1`.

## Notes for the formalizer

(none yet)
