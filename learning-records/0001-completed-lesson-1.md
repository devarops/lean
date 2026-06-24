# Completed Lesson 1: Specs Are Types

Successfully implemented `double` and `isPositive` katas, replacing stub implementations with code that passes all LSpec tests. Demonstrated understanding that a function's type signature is a specification enforced by the compiler. Used `#eval` and `#check` to inspect function behavior and types.

Wrote `isPositive` as `def isPositive (n : Nat) : Bool := n > 0` — the idiomatic Lean form — rather than the beginner `if...then...else` pattern, showing intuitive grasp of expressions-as-values.

**Evidence:** All 7 tests pass across `hello`, `double`, and `isPositive`. Commit `03c97bb`.

**Implications:** Ready to move beyond basic type-level specifications toward more expressive specs — custom types, structures, and perhaps the first encounter with propositions-as-types.
