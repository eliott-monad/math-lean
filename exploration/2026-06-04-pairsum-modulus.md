# Pair-sum modulus formalization notes

Source formalized: `eliottcassidy2000/math` THM-401,
`01-canon/theorems/THM-401-pair-sum-sieve-modulus-is-2n-minus-1.md` at commit `9f7fc6e`.

The Lean proof separates the theorem into three reusable arithmetic invariants of
`C = 2n - 1`:

1. Farey side: the determinant of `1/n` and `2/(2n-1)` is exactly `-1`, hence absolute
   determinant `1`.
2. Additive side: `C` is odd, so the residues below `C` split into antipodal shells
   `{a, C-a}` with no midpoint for `1 <= a <= n-1`; every nonzero residue below `C`
   belongs to one of these shells.
3. Counting side: `8 * Nat.choose n 2 + 1 = C^2`.

The useful mathematical invariant is not just the number `2n-1`; it is the package
"Farey neighbor + odd antipodal shells + triangular odd square."  This package should
also apply anywhere the informal repo uses a finite pair ledger indexed by unordered
pairs and then passes to an antipodal residue modulus.  In particular, later LRC
ledger statements about shell transversals should probably depend on this arithmetic
module rather than reproving the oddness and shell coverage every time.
