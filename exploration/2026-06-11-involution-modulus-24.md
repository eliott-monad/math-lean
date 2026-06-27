# THM-484 formalization notes: involution modulus 24

Provenance: `eliottcassidy2000/math` `01-canon/theorems/THM-484-involution-modulus-24.md`
at commit `7b9c76c`.

The Lean formalization in `Math/NumberTheory/InvolutionModulus.lean` captures the finite
arithmetic core:

- every unit of `ZMod 24` squares to `1`;
- `Fintype.card (ZMod 24)^* = 8`;
- the unit values are exactly `{1,5,7,11,13,17,19,23}`;
- any `n` coprime to `24` satisfies `n^2 % 24 = 1`;
- the divisor-side list `1,2,3,4,6,8,12,24` all have exponent-two unit groups.

The global classification remains the mathematically natural strengthening:

```lean
UnitsExponentTwo n ↔ n ∣ 24
```

A clean future proof should factor through prime powers.  The obstruction cases split as:

- odd primes: if `p^k ∣ n` and `(ZMod n)^*` has exponent `2`, then `(ZMod (p^k))^*`
  should as well; cyclicity of odd-prime power units forces `p = 3` and `k = 1`;
- the 2-primary part: `(ZMod (2^k))^*` has exponent `2` exactly for `k ≤ 3`.

This suggests the next Lean target is not more computation at `24`, but a reusable lemma:
exponent-two unit groups descend along `ZMod.cast` to divisors.  With that in place, the
classification becomes a local prime-power argument.

## 2026-06-27 Lean closure

The global classification is now formalized in
`Math/NumberTheory/InvolutionModulus.lean`:

```lean
theorem unitsExponentTwo_iff_dvd_twentyFour {n : ℕ} (hn : n ≠ 0) :
    UnitsExponentTwo n ↔ n ∣ 24
```

The clean invariant was exactly Mathlib's Carmichael function:

```lean
UnitsExponentTwo n ↔ ArithmeticFunction.carmichael n ∣ 2
```

For positive `n`, the proof factors through `Nat.factorization`.  Each prime-power
part `p^k ∣ n` inherits `λ(p^k) ∣ 2`; Mathlib's prime-power formulas then force
`p=2, k≤3` or `p=3, k=1`, which is precisely `n ∣ 2^3·3 = 24`.

This is a useful reusable pattern for future modulus-classification candidates:
translate a universal unit identity into a Carmichael-exponent divisibility statement,
then prove the classification on prime powers rather than constructing CRT witnesses
by hand.
