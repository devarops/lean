import Kata.Basic
import LSpec

def helloTests : LSpec.TestSeq :=
  LSpec.describe "hello" $
    LSpec.test "returns 'Hello, World!' when given 'World'" (hello "World" = "Hello, World!")

def doubleTests : LSpec.TestSeq :=
  LSpec.describe "double" $
    LSpec.test "returns 0 when given 0" (double 0 = 0) $
    LSpec.test "returns 10 when given 5" (double 5 = 10)

def isPositiveTests : LSpec.TestSeq :=
  LSpec.describe "isPositive" $
    LSpec.test "returns false when given 0" (isPositive 0 = false) $
    LSpec.test "returns true when given 5" (isPositive 5 = true)

-- === Lesson 2: Specs as Oracles ===

def maxSpecTests : LSpec.TestSeq :=
  LSpec.describe "maxSpec" $
    LSpec.test "0 max 0 = 0" (maxSpec 0 0 = 0) $
    LSpec.test "0 max 5 = 5" (maxSpec 0 5 = 5) $
    LSpec.test "5 max 0 = 5" (maxSpec 5 0 = 5) $
    LSpec.test "3 max 7 = 7" (maxSpec 3 7 = 7) $
    LSpec.test "7 max 3 = 7" (maxSpec 7 3 = 7) $
    LSpec.test "42 max 42 = 42" (maxSpec 42 42 = 42)

def maxImplTests : LSpec.TestSeq :=
  LSpec.describe "maxImpl" $
    LSpec.test "matches spec for (0,0)" (maxImpl 0 0 = maxSpec 0 0) $
    LSpec.test "matches spec for (0,5)" (maxImpl 0 5 = maxSpec 0 5) $
    LSpec.test "matches spec for (5,0)" (maxImpl 5 0 = maxSpec 5 0) $
    LSpec.test "matches spec for (3,7)" (maxImpl 3 7 = maxSpec 3 7) $
    LSpec.test "matches spec for (7,3)" (maxImpl 7 3 = maxSpec 7 3) $
    LSpec.test "matches spec for (42,42)" (maxImpl 42 42 = maxSpec 42 42)

def validateMaxTests : LSpec.TestSeq :=
  LSpec.describe "validateMax" $
    LSpec.test "accepts correct implementation" (validateMax maxSpec) $
    LSpec.test "rejects wrong implementation" (validateMax (fun _ _ => 0) = false)

-- === Lesson 4: Tactic Proofs ===

def addZeroTests : LSpec.TestSeq :=
  LSpec.describe "add_zero" $
    LSpec.test "n + 0 = n for n = 0" (by
      have h := add_zero 0
      exact h) $
    LSpec.test "n + 0 = n for n = 5" (by
      have h := add_zero 5
      exact h)

def zeroAddTests : LSpec.TestSeq :=
  LSpec.describe "zero_add" $
    LSpec.test "0 + n = n for n = 0" (by
      have h := zero_add 0
      exact h) $
    LSpec.test "0 + n = n for n = 7" (by
      have h := zero_add 7
      exact h)

def andCommTests : LSpec.TestSeq :=
  LSpec.describe "and_comm_imp" $
    LSpec.test "P ∧ Q → Q ∧ P for True, True" (by
      have h := and_comm_imp True True
      have h_and : True ∧ True := by
        constructor <;> trivial
      exact h h_and) $
    LSpec.test "P ∧ Q → Q ∧ P for True, False" (by
      have h := and_comm_imp True False
      have h_and : True ∧ False := by
        constructor
        · trivial
        · trivial
      exact h h_and)

def orIntroRightTests : LSpec.TestSeq :=
  LSpec.describe "or_intro_right" $
    LSpec.test "Q → P ∨ Q for True, True" (by
      have h := or_intro_right True True
      have hq : True := trivial
      exact h hq)

def modusPonensTests : LSpec.TestSeq :=
  LSpec.describe "modus_ponens" $
    LSpec.test "P → Q, P ⊢ Q for True, True" (by
      have h : True → True := fun x => x
      have hp : True := trivial
      exact modus_ponens True True h hp)

def chainTests : LSpec.TestSeq :=
  LSpec.describe "chain" $
    LSpec.test "P → Q, Q → R, P ⊢ R for True, True, True" (by
      have h1 : True → True := fun x => x
      have h2 : True → True := fun x => x
      have hp : True := trivial
      exact chain True True True h1 h2 hp)

def andSwapTests : LSpec.TestSeq :=
  LSpec.describe "and_swap" $
    LSpec.test "P ∧ Q ∧ R → R ∧ Q ∧ P for True, True, True" (by
      have h := and_swap True True True
      have h_and : True ∧ True ∧ True := by
        repeat' constructor <;> trivial
      exact h h_and)

def main (args : List String) : IO UInt32 :=
  LSpec.lspecIO (.ofList [
    ("hello", [helloTests]),
    ("double", [doubleTests]),
    ("isPositive", [isPositiveTests]),
    ("maxSpec", [maxSpecTests]),
    ("maxImpl", [maxImplTests]),
    ("validateMax", [validateMaxTests]),
    ("add_zero", [addZeroTests]),
    ("zero_add", [zeroAddTests]),
    ("and_comm", [andCommTests]),
    ("or_intro_right", [orIntroRightTests]),
    ("modus_ponens", [modusPonensTests]),
    ("chain", [chainTests]),
    ("and_swap", [andSwapTests])
  ]) args
