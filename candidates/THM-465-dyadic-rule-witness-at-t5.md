---
id: THM-465-dyadic-rule-witness-at-t5
source: 01-canon/theorems/THM-465-dyadic-rule-witness-at-t5.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-465: the bi-dyadic algebra settles Q(3,5)/Q(3,6) per-size, refuses to be uniform, and is 2-adically special

**Status:** PROVED/VERIFIED as itemized (each computational claim: Glucose3 +
complete verifier + independent re-verification; scripts
`erdos592_{bidyadic_rule,uniform_rule}_macmini_s3.py`, triadic control inline run,
results in 05-knowledge/results/).
**Source:** mac-mini-2026-06-10-S1 (HYP-2374; POKE Steering Task 2; continues
THM-453/459/460)

For a pair x <lex y in [t]³ define the **bi-dyadic feature**
F2(x,y) = ( (sign, v₂(|gap|)) per coordinate, '=' for zero gaps ) — the order data
of S1's pattern algebra plus the 2-adic valuation of every coordinate gap.
A **feature rule** is a set T of feature classes; its graph: blue iff F2 ∈ T.

## A. Per-size: the frontier falls

* (3,4): sign-only algebra (13 classes) is **feature-UNSAT**; bi-dyadic (62
  classes) is SAT — re-proving S1's "patterns insufficient" in a sharper form and
  locating exactly what was missing: the 2-adic valuations.
* **(3,5): SAT — Q(3,5) SETTLED** by an explicit 42-class bi-dyadic witness
  (1272 edges), independently re-verified by a fresh complete verifier. The raw
  instance had timed out at 80,111 CEGAR clauses (S2); the feature quotient
  decides it in 2.8 s with 171 features. **R(3,2) > 5.**
* (3,6): SAT and verified the same way (4104 edges). **R(3,2) > 6.** The
  strong-witness frontier at ω³ (HYP-2363) is now three sizes past the n=2
  death point R(2,2)=5.

## B. No uniform table: the infinite bi-dyadic witness is REFUTED

An infinite F2-measurable strong witness on N³ would restrict to ONE fixed table
valid at every finite t (for t ≤ 8 the realizable feature set is constant since
all gaps ≤ 7 have v₂ ≤ 2). Computed:
* the frozen t=5 table FAILS at t=6 (domination) and t=7 (a triangle!);
* the simultaneous-t SAT (one shared table, constraints of t = 4,5,6,7 conjoined)
  is **feature-UNSAT in 0.3 s**.

Hence **no (sign, v₂)-measurable strong witness exists on ω³**, even though every
finite size carries one. The algebra ladder is strict:
  signs (fails per-size) ⊊ signs+v₂ (per-size only) ⊊ [whatever the infinite
  witness needs]. This mirrors, one level up, S1's "patterns < patterns+scheme"

## Notes for the formalizer

(none yet)
