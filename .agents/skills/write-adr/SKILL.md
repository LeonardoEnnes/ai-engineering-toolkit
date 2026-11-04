---
name: "write-adr"
description: "Guides the creation of formal Architectural Decision Records (ADRs) to document significant design, structural, or technological choices."
---

# Write ADR Skill

## Intent
Enforce structured architectural decision-making by documenting the context, rationale, alternatives considered, and consequences of critical technical choices before implementation.

## Obligations
1. **Standardized Structure:**
   - Structure the ADR following the standard format: *Status*, *Context*, *Decision*, *Consequences*, and *Alternatives Considered*.

2. **Trade-off Analysis:**
   - Explicitly document why a specific technology, design pattern, or architectural boundary was chosen over viable alternatives (pros and cons).

3. **Traceability:**
   - Ensure the ADR references related domain models, system constraints, or performance requirements.

## How to verify
- The generated ADR file contains all required sections with clear, objective justifications.
- Alternatives are explicitly evaluated rather than dismissed arbitrarily.

## Antipatterns (Do NOT do)
- Writing vague decisions without documenting the underlying context or problem being solved.
- Omitting negative consequences or technical debt introduced by the decision.