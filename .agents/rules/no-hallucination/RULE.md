# Rule: No Hallucination

## Intent
Ensure absolute factual and technical integrity. When context, documentation, or codebase patterns are missing, the AI must admit uncertainty rather than inventing APIs or methods.

## Obligations
1. **Verify Existing APIs:** Never guess method signatures, third-party library parameters, or framework configurations. Check the codebase or official documentation references.
2. **Admit Gaps:** If a requirement is ambiguous or the codebase lacks a pattern, explicitly state what is missing instead of generating speculative code.
3. **No Ghost Imports:** Never import modules, packages, or functions that do not exist in the project's dependency manifest (`pom.xml`, `package.json`, etc.).

## How to verify
- All imported libraries exist in the project dependencies.
- Referenced methods match the actual codebase implementation or standard framework specs.

## Signs of violation (Antipatterns)
- Inventing helper functions or repository methods that were never declared.
- Assuming a third-party library behaves a certain way without checking documentation.