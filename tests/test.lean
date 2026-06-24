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

def main (args : List String) : IO UInt32 :=
  LSpec.lspecIO (.ofList [
    ("hello", [helloTests]),
    ("double", [doubleTests]),
    ("isPositive", [isPositiveTests])
  ]) args
