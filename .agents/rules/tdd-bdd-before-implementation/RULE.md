# Rule: TDD and BDD Discipline

## Intent
Ensure that no production code is written without an automated test verifying its behavior, keeping feedback loops tight and regressions prevented.

## Obligations
1. **Red-Green-Refactor:** When implementing features or bug fixes, write the failing test first (Red), implement the minimum code to pass (Green), and then clean up (Refactor).
2. **Test Coverage:** Every business rule, edge case, and failure path must be covered by unit or integration tests (using JUnit/Mockito, Jest, or equivalent).
3. **Isolated Tests:** Tests must be deterministic, self-contained, and not depend on external production state.

## How to verify
- PRs containing new logic also contain corresponding test files.
- Tests pass successfully in the local execution environment.

## Signs of violation (Antipatterns)
- Submitting implementation code without a single test.
- Writing tests *after* the code just to boost coverage metrics without asserting real behaviors.