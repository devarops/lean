# Mission: Lean as a Specification Language for AI-Assisted Development

## Why

I want to learn Lean so I can run, study, change and improve [qed](https://github.com/tskovlund/qed) to meet my AI harness needs. My experience writing specs in plain English failed — LLMs produce confident, plausible, wrong implementations due to ambiguity and "AI drift." I need a language of precise, machine-checkable specifications that an LLM can target and a compiler can verify.

When I finish this, I will be able to run, study, change and improve qed to meet my AI harness needs.

## Success looks like

- I can write Lean specifications (types with invariants, preconditions/postconditions) for a Web API endpoint (request/response validation, state transitions)
- I can write Lean specifications for a data analysis pipeline (input constraints, output invariants)
- I can set up a workflow where an LLM produces Lean code that passes `lake build` against my spec on the first try
- I can read and understand basic Lean proofs, and write simple ones myself

## Constraints

- Working in Docker-based dev environment with Lean 4.29.0
- No prior functional programming, type theory, or formal logic experience — everything must be built from first principles
- Primary learning through hands-on katas and lessons in this workspace
- Preference for practical, mission-relevant examples over abstract mathematics

## Out of scope

- Advanced mathematics formalization (Mathlib deep-dives, algebraic topology, etc.)
- Category theory
- Metaprogramming and custom tactic development
- Performance optimization of Lean code
- Compiler internals and kernel design
