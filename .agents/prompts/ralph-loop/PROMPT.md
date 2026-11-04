---
name: "ralph-loop"
description: "Perceive → Orient → Decide → Act → Record execution cycle per story."
---

# The Ralph Loop (Execution Cycle)

<instructions>
For each story or demand pulled from the official kanban, execute the strict iterative loop:

1. **Perceive:** Read the story requirements, acceptance criteria, and inspect the current state of the codebase affected by the demand.
2. **Orient:** Check the `.agents/rules/` and `.agents/skills/` to identify which constraints and expert roles apply to this specific task.
3. **Decide:** Plan the exact implementation steps, outlining the test-first strategy (`tdd-bdd-before-implementation`) and architectural boundaries.
4. **Act:** Execute the code changes and write the automated tests strictly adhering to the "No Silent Refactors" rule.
5. **Record:** Validate the acceptance criteria with evidence, update the task status, and generate the chronological delivery documentation in `docs/deliveries/`.
</instructions>