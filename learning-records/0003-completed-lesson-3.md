# Completed Lesson 3: From Testing to Proving — The First Theorem

Wrote the first two theorems proved by reflexivity, crossing the threshold from testing specific cases to proving properties for every possible input.

**Key insights:**
- `theorem` looks like `def` but states a proposition whose truth the kernel checks — the body is a proof, not a computation
- `rfl` (reflexivity) proves equalities where both sides are **definitionally equal** — the compiler can see they're the same by unfolding definitions
- A theorem's binder `(n : Nat)` is universal quantification: "for every `n`" — the proposition holds for infinitely many values, not just tested ones
- This is the first place Lean exceeds Python: Python can test `double(5) == 10` (one case), but cannot prove `∀ n, double n = n + n` (all cases)
- `rfl` has limits: `theorem maxSpec a a = a` cannot use `rfl` because the `if a > b` expression requires reasoning, not just definition unfolding
- There is a subtle `Bool` vs `Prop` distinction: `n > 0` elaborates differently in `def` context (`Bool`) vs `theorem` context (`Prop`), which prevents `rfl` from proving theorems about Bool-valued functions directly

**Theorems written:**
- `double_eq_add_self (n : Nat) : double n = n + n := rfl`
- `hello_greets (name : String) : hello name = s!"Hello, {name}!" := rfl`

**Evidence:** Both theorems accepted by kernel (`lake build`). All 19 tests still pass. Commit `04bf341`.

**Implications:** Ready for the next step — proving equalities that require reasoning beyond definitional equality (tactics, `by` blocks, rewriting).
