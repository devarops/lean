import Kata
open Kata

open LSpec

describe "hello" do
  it "returns 'Hello, World!' when given 'World'" do
    expect (hello "World") = "Hello, World!"

def main := lspecMain
