# Completed Lesson 2: Executable Specs — Lean as the Oracle

Implemented the oracle pattern across three katas (maxSpec, maxImpl, validateMax) by replacing stub implementations with working code.

**Key insights:**
- A Lean function body is an **executable specification** (oracle) — it computes the correct output for any input
- The oracle pattern: write an oracle function, use `#eval` to explore it, write a validator to compare implementations against it
- A validator takes any implementation and returns `true`/`false` based on whether it matches the oracle for selected test cases
- The core AI pipeline: oracle in Lean → LLM generates implementation → validator checks match
- At this level (simple pure functions), the oracle pattern looks identical to Python — the difference appears when proving properties for all inputs

**Evidence:** All 19 tests pass. Commit `dbd383e`.

**Implications:** Ready to cross the threshold from testing (specific cases) to proving (all cases) — the first place where Lean can do what Python cannot.
