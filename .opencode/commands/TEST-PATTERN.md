# Test Pattern for Lesson Exercises

## Where tests live

Exercise tests go in `tests/test.lean`. Read this file before writing a new
test to understand its structure, the test framework (LSpec), and how existing
tests are organized.

## Purpose of an exercise test

- **The test must fail when the lesson is created**, because the user has not
  yet solved the exercises. This is the Red phase of TDD.
- **Passing the tests is evidence that the exercises have been solved
  correctly.** When `make tests` succeeds, both the user and the agent know the
  lesson is complete.
- **The answer must not be given away** — neither in the test code nor in the
  lesson content. Solving each exercise must require genuine effort. The effort
  of retrieval and problem-solving is what builds long-term retention (storage
  strength), not just superficial familiarity (fluency strength).

## Guidelines

- Read `tests/test.lean` before writing. Match its indentation, naming
  conventions, and use of `LSpec.describe` / `LSpec.test`.
- Each exercise in the lesson should have a corresponding test (or set of
  tests) that checks the exercise was completed correctly.
- A test can check that a function returns the right value for a set of inputs,
  or that a theorem is provable when applied to concrete arguments.
- Do not include the solution code in the test. The test checks *that* the
  answer is correct, not *what* the answer is.
- Register new test groups in the `main` function at the bottom of
  `tests/test.lean`, following the existing pattern.
- When the user completes the exercises, run `make tests` to verify. All tests
  should pass.

## Anti-patterns

- Do not duplicate the exercise solution logic inside the test. If the exercise
  asks the user to implement `factorial n`, the test should check known values
  (e.g., `factorial 5 = 120`), not reimplement `factorial` to compare.
- Do not hardcode expected values in a way that reveals the algorithm. Test
  outputs, not intermediate steps.
- Do not write tests that pass trivially (e.g., `True = True`) — they would
  pass even if the exercise is incomplete.
