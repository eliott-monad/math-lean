---
id: THM-347-endpoint-transfer-rank-separation
source: 01-canon/theorems/THM-347-endpoint-transfer-rank-separation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-347
name: endpoint-transfer-rank-separation
status: PROVED
date: 2026-05-29
session: codex-2026-05-29-main-unification
depends_on:
  - THM-266
  - HYP-1772
  - HYP-1773
  - HYP-1774
---

# THM-347: Endpoint Transfer Separates Fiber Boundary from Rank

## Terminology

Let `X_n` be a fixed-path tiling cube and let

```text
E_n : X_n x {0,1}^{n-1} -> X_{n+1}
```

be endpoint extension. Let `q_n : X_n -> C_n` be any finite quotient of the
tilings and write

```text
F_n(c) = |q_n^{-1}(c)|
A_n(c,d) = #{(x,s) : q_n(x)=c and q_{n+1}(E_n(x,s))=d}.
```

Call

```text
partial_2(q_{n+1})(d) = F_{n+1}(d) mod 2
```

the **fiber boundary** of the child quotient. Call `q` **endpoint
parity-injective at n** if `A_n`, reduced over `F_2`, has full row rank
`|C_n|`.

## Notes for the formalizer

(none yet)
