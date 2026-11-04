---
name: "tooling"
description: "Instructs the agent to use the repository's own scripts as the single source of truth for commands, tests, and checks."
---

# Repository Tooling Enforcement

<instructions>
When interacting with the repository, running tests, building, linting, or performing checks:

1. **Never Invent Commands:** Do not guess build tools or CLI parameters. Always inspect the `scripts/` folder or configuration files (`package.json`, `pom.xml`, `Makefile`) to find the exact registered command.
2. **Single Source of Truth:** If a script exists in `scripts/` (e.g., `scripts/test.sh`, `scripts/lint.sh`), you MUST use it instead of raw native commands.
3. **Document Real Commands:** If a new operational routine is established, ensure it is wrapped into a reproducible script inside `scripts/`.
</instructions>