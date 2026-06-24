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
  a

-- Exercise 2.2: Implementation — should match maxSpec
-- TODO: fix this to match maxSpec
def maxImpl (a b : Nat) : Nat :=
  a

-- Exercise 2.3: Validator — checks any impl against maxSpec
-- Use at least 5 representative test cases
-- TODO: replace `false` with a proper validator
def validateMax (impl : Nat → Nat → Nat) : Bool :=
  false
