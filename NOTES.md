# Teaching Notes

## User Profile
- Background: Python, R, MATLAB — OOP experience, no FP
- No prior exposure to: type theory, formal logic, Curry-Howard, proof assistants
- Complete beginner to Lean
- Mission: Prove undergraduate abstract mathematics theorems (set theory, logic → real analysis, topology, abstract algebra) and solve FP katas, interleaved
- Learning approach: interleave FP katas (programming fluency) with theorem proving (formal reasoning)

## Preferences (expressed)
- Using Docker-based dev environment (`docker exec lean_ci`)
- Prefers hands-on katas over abstract theory
- Needs concepts built from first principles — cannot assume type theory/FP/logic knowledge
- Learning by doing: each new concept introduced through an exercise

## Teaching Approach
- Drip-feed concepts: one new idea per lesson maximum
- Always connect every lesson back to the mission (undergraduate math + FP katas)
- Use Python analogies where helpful, but flag differences explicitly
- Never assume prior knowledge of functional programming, types, or logic
- Use the existing kata framework (LSpec tests) for exercises, plus `lake build` for theorem verification

## Workspace Structure
- Lessons: `./lessons/0001-*.html` (sequential)
- Reference: `./reference/*.html` (glossaries, cheat sheets)
- Assets: `./assets/` (shared CSS, etc.)
- Learning records: `./learning-records/0001-*.md`
- Code katas: `Kata/Basic.lean` and `tests/test.lean`
- Build/test: `docker exec lean_ci make tests`

## Discovered Traps
- Bool vs Prop: `n > 0` elaborates differently in `def` vs `theorem` contexts. In `def n > 0` is `Bool`; in `theorem`, `n > 0` is `Prop` (Nat.gt). This causes `rfl` to fail for theorems about Bool-valued functions. Use `decide` or avoid Bool-in-Prop confusion.
- `s!"Hello, {name}!"` elaborates to string concatenation (`toString "Hello, " ++ toString name ++ toString "!"`) — still definitionally equal to the `hello` definition though.
