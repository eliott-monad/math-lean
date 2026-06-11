---
id: THM-441-convolution-correlation-adjoint-duality-unifies-the-repo
source: 01-canon/theorems/THM-441-convolution-correlation-adjoint-duality-unifies-the-repo.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-441 — Cross-correlation is the adjoint of convolution; this duality unifies the repo's clock/shell faces, the tournament converse, and additive energy

**Status:** PROVED (the operator identities — classical, recomputed exactly) + VERIFIED (the repo
identifications, exact/numeric) + SYNTHESIS (the unifying map). A unifying lens, not a new bound.
**Source:** opus-2026-06-07-S706, from the user's seed "for complex-valued functions the
cross-correlation operator is the adjoint of the convolution operator." Ties together THM-430/S702
(antipodal σ), THM-420/S700 (shell/sums), THM-421/S701 (clock/differences), HYP-2283 (converse),
S599 (unit-distance = additive energy on a Cayley graph), S599g (spectral unification), THM-402/403.

## The operator duality (PROVED, classical)

On a finite abelian group `G` with the Hermitian inner product `⟨a,b⟩=Σ conj(a)·b`:
```
   convolution        (h*g)(x) = Σ_y h(y) g(x−y)        C_h : g ↦ h*g
   cross-correlation  (h⋆g)(x) = Σ_y conj(h(y)) g(x+y)  R_h : g ↦ h⋆g
```
> **(D1) Adjoint.** `⟨h*a, b⟩ = ⟨a, h⋆b⟩`, i.e. `C_h^* = R_h`. (Verified `|LHS−RHS|~10⁻¹⁴`, N=7,12,27.)
> **(D2) Reflection link.** `h⋆g = (σh̄) * g`, where `(σf)(x)=f(−x)` is the **antipodal involution**
> (S702) and `h̄=conj h`. (Verified exactly.) So **correlation = convolution precomposed with σ (and
> conjugation)** — the adjoint is the σ-reflected, conjugated convolution.
> **(D3) Fourier / "adjoint = conjugate the symbol".** `\hat{h*g}=\hat h·\hat g`,
> `\hat{h⋆g}=conj(\hat h)·\hat g`. Convolution operators are exactly the Fourier-diagonal (circulant)
> operators; the adjoint conjugates the symbol per frequency. (Verified `symbol(A^T)=conj(symbol(A))`.)

## The repo map (the synthesis)

> **(M1) LRC clock ⟂ shell are an adjoint pair.** For a speed set `S` (indicator `1_S`):
> - `1_S * 1_S =` **sumset** multiplicities (`v_i+v_j`) `=` the **SHELL face** (sums mod `2n−1`,
>   shell-partners `a+b≡0`, THM-420/S700) — the **convolution**.
> - `1_S ⋆ 1_S =` **difference-set** multiplicities (`v_i−v_j`) `=` the **CLOCK face** (differences
>   mod `n`, torsion-leak, THM-421/S701) — the **cross-correlation / autocorrelation**.
> - By (D2), `1_S⋆1_S = 1_{σS}*1_S`: the clock face is the shell face precomposed with `σ`. So
>   **clock and shell are adjoint operators related by the antipodal `σ` of THM-430** — the S700/S701/
>   S702 trilogy is one statement: *shell = convolution, clock = correlation, σ = the adjoint.*
>   (Verified: `conv==sumset-mult`, `corr==diff-mult`, exact.)
>
> **(M2) The tournament converse is the adjoint.** For a circulant tournament `A=Cay(ℤ/m,H)` (its
> adjacency = convolution by `1_H`), the **converse** `T↦T*` reverses arcs, giving `A^T=` convolution
> by `1_{−H}` `= C_h^* = R_h` — the adjoint. **Self-converse** (the LRC worry-set, THM-402) `=`
> self-adjoint-up-to-multiplier (`∃λ: λH=−H`); the `{±1}` skew-adjacency `S` is **skew-Hermitian**

## Notes for the formalizer

(none yet)
