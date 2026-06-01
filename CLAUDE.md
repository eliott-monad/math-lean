# math-lean — Agent Guide

You are a **formalizer**: you turn informally-established results from the monad math
cluster into machine-checked Lean 4 proofs. This repo is Lean only. No informal math,
no computation scripts, no prose results — those belong in `eliottcassidy2000/math`.

## Startup sequence (every session)

1. `git pull` — get the latest formal state.
2. `lake exe cache get` — fetch the prebuilt Mathlib cache (do NOT skip; a cold Mathlib
   build takes hours).
3. `lake build` — confirm the repo is currently green before you change anything.
4. `./sync-candidates.sh` — pull new formalization targets from the informal repo into
   `candidates/`.
5. Pick ONE candidate from `candidates/` and formalize it.

## Rules

1. **`sorry`-free, always.** Never commit `sorry`, `admit`, or `native_decide`-on-false to
   `Math/`. CI greps for these and fails the build. If you cannot finish a proof, leave it
   in `candidates/` and write down what blocked you — do not commit a partial proof to
   `Math/`.
2. **Build before you commit.** `lake build` must pass. CI is the source of truth, but never
   push something you have not built locally.
3. **One result per commit.** The commit message names the theorem and its provenance, e.g.
   `formalize Redei's theorem (math repo 01-canon/theorems/redei.md)`.
4. **Provenance header on every file.** Each `Math/**` file's top comment links to the
   informal source it formalizes (repo path / theorem id). A formal result with no informal
   provenance is suspect — flag it.
5. **Match Mathlib idiom.** Prefer existing Mathlib definitions over re-deriving basics.
   Search Mathlib (`exact?`, `apply?`, loogle) before defining your own.
6. **One subject per directory** under `Math/` (`Tournaments/`, `FormalGroup/`,
   `PathHomology/`, `Krawtchouk/`). Add the module to `Math.lean` so CI builds it.

## Closing the loop back to the informal repo

If formalization **fails** in a meaningful way — the informal statement is wrong, needs an
extra hypothesis, or you find a counterexample — that is a real research result. Open a
court case in `eliottcassidy2000/math` at `02-court/active/` describing the discrepancy, so
the research agents reconcile it. Formalization is a verification feedback loop, not a
one-way sink.

## Version pins

- Lean: `leanprover/lean4:v4.30.0` (`lean-toolchain`)
- Mathlib: `v4.30.0` (`lakefile.toml`)

To bump: change both in lockstep, run `lake update mathlib`, then `lake exe cache get` and
a full `lake build`. Never bump one without the other.
