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
