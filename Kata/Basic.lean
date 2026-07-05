def hello (name : String) : String :=
  s!"Hello, {name}!"

#eval hello "World"
#check hello

-- === Lesson 1 exercises ===

-- TODO: replace `0` with the correct implementation
-- Specification: double n returns n + n
def double (n : Nat) : Nat :=
  n + n

-- TODO: replace `false` with the correct implementation
-- Specification: isPositive n returns true if n > 0, false otherwise
def isPositive (n : Nat) : Bool :=
  n > 0

-- === Lesson 2: Specs as Oracles ===

-- Exercise 2.1: Oracle — returns the larger of a and b
-- TODO: replace `a` with the correct implementation
def maxSpec (a b : Nat) : Nat :=
  if a > b then a else b

-- Exercise 2.2: Implementation — should match maxSpec
-- TODO: fix this to match maxSpec
def maxImpl (a b : Nat) : Nat :=
  if b > a then b else a

-- Exercise 2.3: Validator — checks any impl against maxSpec
-- Use at least 5 representative test cases
-- TODO: replace `false` with a proper validator
def validateMax (impl : Nat → Nat → Nat) : Bool :=
  let testCases : List (Nat × Nat) := [(0, 0), (1, 2), (2, 1), (5, 5), (10, 3)]
  testCases.all (fun (a, b) => impl a b == maxSpec a b)

-- === Lesson 3: The First Theorem ===
-- (Add your theorems here)
theorem double_eq_add_self (n : Nat) : double n = n + n :=
  rfl

#check double_eq_add_self


theorem hello_greets (name : String) : hello name = s!"Hello, {name}!" :=
  rfl

#check hello_greets


-- === Lesson 4: Tactic Proofs ===
-- (Add your theorems here)
