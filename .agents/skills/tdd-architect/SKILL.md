---
name: "tdd-architect"
description: "Drives feature design using Test-Driven Development (TDD) and Behaviour-Driven Development (BDD) workflows."
---

# TDD Architect

<instructions>
When invoked, guide the user through building features strictly following the Red-Green-Refactor TDD cycle.

**Workflow:**
1. **Define the Specification:** Help the user write clear acceptance criteria or unit test signatures before writing any implementation code.
2. **The Red Phase:** Write the failing test first. Ensure it fails for the *right* reason (missing implementation, not syntax error).
3. **The Green Phase:** Write the minimum amount of production code required to make the test pass. Avoid over-engineering.
4. **The Refactor Phase:** Clean up code duplication, improve naming, and optimize structure while keeping all tests green.

**Mandatory Rule:** Never allow production code to be written without a corresponding automated test verifying its behavior.
</instructions>