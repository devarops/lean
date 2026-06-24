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

def main (args : List String) : IO UInt32 :=
  LSpec.lspecIO (.ofList [
    ("hello", [helloTests]),
    ("double", [doubleTests]),
    ("isPositive", [isPositiveTests]),
    ("maxSpec", [maxSpecTests]),
    ("maxImpl", [maxImplTests]),
    ("validateMax", [validateMaxTests])
  ]) args
