import Kata.Basic
import LSpec

def tests : LSpec.TestSeq :=
  LSpec.describe "hello" $
    LSpec.test "returns 'Hello, World!' when given 'World'" (hello "World" = "Hello, World!")

def main (args : List String) : IO UInt32 :=
  LSpec.lspecIO (.ofList [("hello", [tests])]) args
