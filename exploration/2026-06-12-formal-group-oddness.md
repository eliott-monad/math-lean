# Formal group oddness and the odd-function dictionary

Candidate: `LEM-004-tournaments-are-odd-functions.md` from `eliottcassidy2000/math`
commit `3c3a18e`.

Today I formalized the formal-group component of the dictionary for

```text
F(x,y) = (x + y) / (1 + x*y).
```

The Lean model in `Math/FormalGroup/Basic.lean` is concrete over `R`, so division is
total.  This means the identities

```text
F(x,-x) = 0
F(-x,x) = 0
F(-x,-y) = -F(x,y)
F(-x,y) = (y-x)/(1-x*y)
F(x,-y) = (x-y)/(1-x*y)
```

hold as ordinary field-normalization identities, even at the formal poles where
the real-valued totalized division convention sends division by zero to zero.

Mathematical takeaway: in this concrete model, the "complementation is sign flip"
part of `LEM-004(d)` is independent of any tournament-specific input.  It is a
bare algebraic symmetry of the velocity-addition law.  This suggests a clean next
formal target: split `LEM-004` into independent Lean candidates for

1. the formal-group oddness already proved here;
2. the finite odd-sign-function dictionary on a fixed-point-free involution;
3. the circulant specialization on `ZMod n`;
4. the Paley/Legendre specialization.

The second item should generalize from `ZMod n` to any finite type with a
fixed-point-free involution.  That would formalize the actual invariant: choosing
one orientation from each two-element orbit is equivalent to a sign function
anti-invariant under the involution.
