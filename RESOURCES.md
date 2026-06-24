# Lean 4 Resources

## Knowledge

### Primary (Start Here)

- [Book: _Functional Programming in Lean_ (FPIL) — David Thrane Christiansen](https://lean-lang.org/functional_programming_in_lean/)
  The official resource for learning Lean as a programming language. Assumes programming background, no prior FP needed. **Use for**: everything about Lean syntax, types, functions, structures, and writing real programs. The companion for our lessons.
- [Book: _Theorem Proving in Lean 4_ (TPiL) — Avigad, de Moura, Kong, Ullrich](https://lean-lang.org/theorem_proving_in_lean4/)
  The official resource for learning Lean as a proof assistant. **Use for**: understanding propositions as types, tactics, proofs, and how to write specifications that Lean can verify.
- [Lean Language Reference](https://lean-lang.org/doc/reference/latest/)
  Comprehensive reference for all Lean syntax and semantics. **Use for**: looking up specific language features.
- [Interactive: Natural Number Game (NNG4)](https://adam.math.hhu.de/#/g/hhu-adam/NNG4)
  Gamified Lean tutorial teaching theorem proving through natural numbers. **Use for**: building intuition for proofs in a fun, low-stakes environment.

### Secondary

- [Lean 4 Community Learn Page](https://leanprover-community.github.io/learn.html)
  Curated list of all learning resources for Lean 4. **Use for**: finding additional tutorials, games, and courses.
- [Lean 4 Tactic Cheatsheet (PDF)](https://leanprover-community.github.io/papers/lean-tactics.pdf)
  One-page reference of the most common proof tactics. **Use for**: quick lookup during proof writing.
- [Article: "If It Compiles, It Is Correct" — LambdaClass](https://blog.lambdaclass.com/if-it-compiles-it-is-correct-almost-an-introduction-to-lean-4-for-zk-systems-and-engineering-2)
  Practical introduction to Lean 4 for engineers, covers Curry-Howard and formal verification for ZK systems. **Use for**: motivation and real-world examples of Lean for software verification.
- [Article: "Spec-Driven LLM Development" — David Lapsley](https://blog.davidlapsley.io/engineering/process/best%20practices/ai-assisted%20development/2026/01/11/spec-driven-development-with-llms.html)
  The methodology of using precise specs with LLMs — exactly the workflow this mission targets. **Use for**: understanding the "why" behind learning Lean for spec-driven development.
- [Article: "A Beginner's Companion to Theorem Proving in Lean 4" — J. David Smith](https://emallson.net/blog/a-beginners-companion-to-theorem-proving-in-lean)
  Companion to TPiL covering practical gaps. **Use for**: tips and tricks not covered in the official docs.
- [Lean 4 Survey Paper (arXiv:2501.18639)](https://arxiv.org/pdf/2501.18639)
  Comprehensive academic survey of Lean 4 architecture and applications. **Use for**: deeper understanding when ready.

### Tools and References

- [Lean 4 Live (Online Playground)](https://live.lean-lang.org/)
  Run Lean in the browser. **Use for**: quick experiments without setting up a project.
- [Mathlib4 API Docs](https://leanprover-community.github.io/mathlib4_docs/)
  Docs for the standard library and mathematical library. **Use for**: finding existing theorems and definitions.
- [Moogle.ai — Semantic Search for Mathlib](https://www.moogle.ai/)
  Hoogle-style search for Lean theorems. **Use for**: finding what you need when you don't know the exact name.
- [Loogle — Lean Theorem Search](https://loogle.lean-lang.org)
  Another search engine for Lean definitions and theorems.
- [Lean Zulip Chat Archive](https://leanprover-community.github.io/archive/)
  Community discussion archive. **Use for**: finding answers to specific problems.
- [Qed: Typed Spec-Driven Development — tskovlund/qed](https://github.com/tskovlund/qed)
  Tool that implements the worker loop pattern: spec in Lean, LLM implements, Lean kernel verifies, loop repeats on failure. 70+ formal proofs of the loop's own correctness. **Use for**: reference implementation of your exact mission pipeline, inspiration for your own AI harness.
- [Software Verification in Lean 2026 Workshop (SVIL 2026)](https://beneficial-ai-foundation.github.io/SVIL2026)
  One-day workshop at INRIA Paris on formal software verification with Lean 4. Talks by Leo de Moura (Lean's creator) on scalable verification, Son Ho on co-developing code and proofs for SymCrypt, and Derek Sorensen on correct and computable specifications. **Use for**: understanding the state of the art in Lean software verification.

## Wisdom (Communities)

- [Lean Zulip Chat](https://leanprover.zulipchat.com/)
  The primary community hub for Lean users. Highly active, welcoming to beginners. **Use for**: asking questions when stuck, getting feedback on approach.
- [Lean Community Website](https://leanprover-community.github.io/)
  Central hub for the Lean ecosystem. **Use for**: announcements, conference talks, teaching resources.
- [Lean Prover on Stack Exchange](https://proofassistants.stackexchange.com/)
  Q&A site for proof assistants including Lean. **Use for**: searching for answers to common problems.

## Gaps

- No dedicated beginner-friendly resource found that specifically connects Lean formal specification to LLM-driven development — this is exactly what this workspace will produce.
- Limited resources on "Lean as a specification language for Web APIs" — most Lean verification examples focus on algorithms or mathematics, not application-level software.

## Recently Filled

- Added Qed tool (tskovlund/qed) — a complete reference implementation of the spec-driven LLM development pipeline with Lean verification.
- Added SVIL 2026 workshop — state-of-the-art research on Lean for software verification.
