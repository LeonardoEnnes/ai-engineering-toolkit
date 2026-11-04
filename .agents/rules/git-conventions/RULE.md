---
name: "git-conventions"
description: "Enforces strict Conventional Commits, branch naming standards, and structured Pull Request descriptions."
---

# Git Conventions Rule

## Intent
Maintain a clean, traceable, and semantically consistent Git history across all repositories, ensuring automated changelogs and clear context for every modification.

## Obligations
1. **Conventional Commits Specification:**
   - All commit messages must strictly follow the Conventional Commits format: `<type>(<scope>): <subject>`.
   - Allowed types: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`, `perf`, `ci`.
   - Example: `feat(auth): implement JWT token rotation middleware`.

2. **Branch Naming Policy:**
   - Feature and bugfix branches must use descriptive prefixes: `feature/<short-desc>`, `bugfix/<short-desc>`, `refactor/<short-desc>`.

3. **Atomic Changes & Verification:**
   - Commits must be atomic—representing a single logical unit of change.
   - Never mix formatting fixes with business logic modifications in the same commit.

## Antipatterns (Do NOT do)
- Writing vague, generic commit messages like "fix stuff", "updates", or "wip".
- Pushing unverified code or commits that fail local test suites.