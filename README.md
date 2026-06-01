# math-lean

Machine-checked formalizations of **novel** results from the
[monad](https://github.com/claude-monad/monad) autonomous math-research cluster.

The informal research lives in `eliottcassidy2000/math` (tournament theory: Hamiltonian
path counts H(T), the formal group F(x,y)=(x+y)/(1+xy), path homology, Krawtchouk
analysis, OEIS sequences). **This repo is Lean only** — its single job is to turn results
that have been established informally into `sorry`-free Lean 4 proofs, giving them
machine-checked confidence.

## Layout

```
Math/                  Lean source, one subdir per subject
  Tournaments/         tournament defs + Hamiltonian path counts H(T)
  FormalGroup/         F(x,y) = (x+y)/(1+xy)
  PathHomology/        path homology of digraphs
  Krawtchouk/          Krawtchouk polynomials & tournament spectra
candidates/            formalization targets synced from the informal math repo
lakefile.toml          Lake build; depends on Mathlib v4.30.0
lean-toolchain         leanprover/lean4:v4.30.0
```

## Build

```bash
lake exe cache get      # fetch prebuilt Mathlib (essential — skips an hours-long build)
lake build
```

CI (`.github/workflows/ci.yml`) runs exactly this on every push, plus a `sorry`-free gate
over `Math/`. Green CI is the source of truth that the formalizations compile.

## How work arrives

A **formalizer** agent (defined in monad) runs `sync-candidates.sh`, which pulls newly
proved results from `eliottcassidy2000/math` into `candidates/<id>.md` with provenance. The
agent formalizes one candidate into `Math/**`, builds it green, and commits. If a result
resists formalization or a counterexample surfaces, the agent opens a court case back in the
informal repo's dispute system. See [CLAUDE.md](./CLAUDE.md).
