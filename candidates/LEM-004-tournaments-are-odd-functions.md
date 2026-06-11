---
id: LEM-004-tournaments-are-odd-functions
source: 01-canon/theorems/LEM-004-tournaments-are-odd-functions.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# LEM-004: Tournaments Are Odd Functions (the odd-function dictionary)

**Type:** Lemma (a four-entry dictionary)
**Certainty:** 5 — PROVED (entries (a), (b), (d), and (c1)–(c3); elementary arguments, no Weil/Gauss input)
**Status:** PROVED + VERIFIED (exhaustive n = 3..11 for (a); all p < 60, exhaustive over all sign functions p ≤ 19 for (b); 13 families exactly for (c); exact Fraction series to deg 21 for (d)) — with one honestly-labeled OPEN boundary at (c), recorded below
**Added by:** kind-pasteur-2026-06-10-S2 (Thread A, HYP-2378)
**Disputes:** none (two SCOPE FLAGS on prior statements, see "Reconciliation")
**Tags:** #odd-functions #circulant #Paley #Legendre #cherry #cluster-expansion #formal-group #arctanh #complementation #OCF-context

---

## Slogan

**The tournament condition IS the oddness condition.** A tournament chooses exactly one of each arc pair — algebraically, a ±1-function that anticommutes with negation. Every appearance of "p ≡ 3 mod 4", of the cherry weight +1, and of arctanh in this repo is the same fact read in four languages.

## Statement

**(a) The dictionary (group level).** Let n ≥ 3 be odd. The map S ↦ σ_S, σ_S(d) = +1 if d ∈ S and −1 otherwise, is a **bijection** from connection sets of circulant tournaments on Z_n (arc i→j iff j−i ∈ S) onto the **odd ±1-functions** on Z_n \ {0} (σ(−d) = −σ(d)). Both sides have exactly **2^((n−1)/2)** elements. Under it:
- T^op ↔ −σ (complementation = global sign flip);
- relabeling x ↦ ux (u ∈ Z_n^×) acts by σ(d) ↦ σ(u⁻¹d);
- for **even n** both sides are **empty** (d = n/2 is its own negative: σ(n/2) = −σ(n/2) is impossible, and a connection set cannot contain "exactly one" of {n/2, n/2});
- boundary: a general **labeled tournament** on a vertex set V is exactly an odd ±1-function on the off-diagonal **pairs** V×V∖Δ (σ(j,i) = −σ(i,j), the skew sign matrix A−Aᵀ); "circulant" is precisely the case where σ descends to the difference group Z_n.

**(b) The multiplicative classification (MISTAKE-011b as a one-line theorem).** Let p be an odd prime. The completely multiplicative ±1-functions on F_p^× are exactly the two real characters: the **trivial character** (which is EVEN, hence never a tournament) and the **Legendre symbol χ**. χ is odd ⟺ χ(−1) = −1 ⟺ **p ≡ 3 (mod 4)**. Hence a multiplicatively-structured circulant tournament on F_p exists **iff p ≡ 3 mod 4, and it is unique: the Paley tournament** (S = QR set). For p ≡ 1 mod 4, χ is even — the QR set is closed under negation and gives bidirectional arcs, not a tournament.

**(c) Cherry localization (the oddness content of the e-mechanism, HYP-2307/THM-438).** Let σ be ANY odd ±1-function on Z_n \ {0} (n odd), M the circulant skew matrix M[a,b] = σ(b−a), and
A_L = Σ_{x_0,…,x_L distinct} ∏ σ(x_{i+1}−x_i) the single-run cluster integral. Then, with NO multiplicativity, NO quasirandomness:

- **(c1)** A_L = 0 for every **odd** L (negation symmetry — the analogue of χ(−1) = −1 needs no multiplicativity);
- **(c2)** A_2 = −tr(M²) = **n(n−1) exactly**: the per-pair cherry weight is −σ(d)σ(−d) = σ(d)² = **+1, the oddness identity itself**. Hence the cherry generator a_2 = 1 for EVERY circulant tournament; the cherry ingredient of e = exp(−χ(−1)) localizes to oddness alone.
- **(c3) (single-merge reduction)** A_L = −tr(M^L) + E_L(n) with |E_L(n)| ≤ C_L·n^(L−1), C_L depending only on L. Consequently a_L := lim A_L/n^L = −lim tr(M^L)/n^L whenever the spectral limit exists. In particular suppression of the higher even generators is a **spectral** (quasirandomness) property, NOT an oddness property — see the honest boundary below.

**(d) The tournament formal group is odd.** F(x,y) = (x+y)/(1+xy) ∈ Z[[x,y]] satisfies **[−1]_F(x) = −x exactly** (F(x,−x) = 0), equivalently its logarithm is **arctanh(x) = Σ x^(2k+1)/(2k+1)**, an odd power series. General lemma: for a (commutative, 1-dimensional) formal group law F over a ring R with no additive torsion, the following are equivalent:
  (i) [−1]_F(x) = −x;  (ii) F(−x,−y) = −F(x,y);  (iii) log_F is an odd series.
Interpretation: a global sign flip of the coordinate is complementation (σ ↦ −σ is T ↦ T^op in (a); the spectral reflection λ ↦ −λ, i.e. k ↦ m−k in THM-251, is the flip-all-tiles/complement-tiling involution — NOT T^op, per MISTAKE-033). The FGL's oddness is exactly the statement that the linearizer (rapidity, THM-252) **commutes with complementation**; THM-251's functional equation Q(λ_k)·Q(λ_{m−k}) = 1 is Q = exp(2·arctanh) applied to arctanh's oddness.

## Proofs

**(a)** For ±1-values, "exactly one of d, −d in S" ⟺ σ_S(d) ≠ σ_S(−d) ⟺ σ_S(−d) = −σ_S(d). For odd n, d ↦ −d is a fixed-point-free involution on the n−1 nonzero residues, so σ is freely determined on (n−1)/2 pair-representatives: 2^((n−1)/2) functions, and S ↦ σ_S, σ ↦ {d : σ(d)=+1} are mutually inverse. T^op has arc i→j iff j→i in T iff −(j−i) ∈ S iff σ(j−i) = −1: σ_{T^op} = −σ_T. Relabeling by u: arc x→y in uT iff u⁻¹(y−x) ∈ S: σ_{uT}(d) = σ(u⁻¹d). Even n: d = n/2 = −d kills both sides. The pairs-boundary statement is the definition of a tournament read off the skew sign matrix. ∎

## Notes for the formalizer

(none yet)
