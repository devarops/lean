import Lake
open Lake DSL

package kata where

require LSpec from git
  "https://github.com/argumentcomputer/LSpec.git"

@[default_target]
lean_lib Kata where

lean_exe test_kata where
  root := `tests.test
