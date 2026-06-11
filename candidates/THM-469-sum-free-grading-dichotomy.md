---
id: THM-469-sum-free-grading-dichotomy
source: 01-canon/theorems/THM-469-sum-free-grading-dichotomy.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-469: the sum-free grading dichotomy — why the seam is 2-adic (parity closure, leading digits, and the Schur arity)

**Status:** PROVED (parts A–B by hand, short proofs below) + COMPUTED/VERIFIED
(parts C–E: Glucose3 + complete verifiers, witnesses independently re-verified;
script `04-computation/erdos592_parity_closure_kp0611.py`, output
`05-knowledge/results/erdos592_parity_closure_kp0611.out`).
**Source:** kind-pasteur-2026-06-11-S1 (HYP-2390/2391). Answers THM-464 D's sharp
open note and THM-465 C's caveat; corrects THM-464 D's interpretive slogan.

**Setting.** The (sign, v_p) feature algebra on pairs of [t]^n (per coordinate:
('=',) for zero gap, else (sign, v_p(|gap|))), the b-ary subgrid game Q_b(n,t)
(THM-464 A), and the feature-quotient SAT of THM-465: a feature rule is a set T of
classes, blue iff feature ∈ T; it must be triangle-free and hit every b-ary subgrid.

---

## A. The unit dichotomy (PROVED)

Let p be prime, L_v = {g ≥ 1 : v_p(g) = v}, and for u ∈ (Z/p)^× let
L_{v,u} = {g : v_p(g) = v, g/p^v ≡ u (mod p)} (the leading-digit refinement).

**Lemma A1.** L_v is sum-free for every v ⟺ p = 2.
Proof. x = p^v a, y = p^v b, p ∤ ab ⟹ x+y = p^v(a+b), and v_p(x+y) = v ⟺
p ∤ (a+b). For p = 2: a, b odd ⟹ a+b even — escape is FORCED (parity closure:
the unit group of Z/2 is trivial, so units must cancel). For p ≥ 3: a = b = 1
gives a+b = 2 ≢ 0, so (p^v, p^v, 2·p^v) is a Schur triple inside L_v at every
scale v. ∎

**Lemma A2.** For EVERY prime p and every (v,u), the refined class L_{v,u} is
sum-free; indeed x, y ∈ L_{v,u} ⟹ x+y ∈ L_{v,2u} when p is odd (2u ≢ u since
u ≢ 0), and v_p(x+y) ≥ v+1 when p = 2.
Uniform statement: **the leading-digit grading is sum-free for every p, and p = 2
is the unique prime where it coincides with the bare valuation grading** (the unit
group (Z/2)^× is trivial). ∎
(Range-verified to 4096 for p = 2, 3, 5; violations for bare p = 3, 5 start at
(1,1,2).)

## B. The mono-collapse theorem (PROVED): odd-p algebras die by arithmetic progressions

**Theorem B1.** Fix n ≥ 1, b ≥ 2, t ≥ 3 and an odd prime p ≥ b. The (sign, v_p)

## Notes for the formalizer

(none yet)
