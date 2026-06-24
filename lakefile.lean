import Lake
open Lake

package kata

require LSpec from git
  "https://github.com/lakesif/LSpec.git"

@[default_target]
lean_lib Kata

lean_exe test_kata where
  root := `Tests.test
