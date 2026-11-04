# Rule: Architecture Boundaries

## Intent
Preserve clean architectural separation (Hexagonal / Clean Architecture / Layered) by preventing leaky abstractions and direct dependency pollution.

## Obligations
1. **Unidirectional Dependencies:** Domain and business service layers must never depend on external frameworks (Spring, Express, React), specific drivers, or databases.
2. **DTO Isolation:** Never expose internal database entities (e.g., JPA Entities, Mongoose models) directly to presentation/controller layers or API clients. Always map them to explicit DTOs or Records.
3. **No Cross-Layer Shortcuts:** Controllers must not talk directly to repositories bypassing the service/use-case layer.

## How to verify
- Import statements in core domain/service classes do not reference framework-specific infrastructure packages.
- Controllers receive and return DTOs/Records, not database entities.

## Signs of violation (Antipatterns)
- Returning a JPA Entity directly from a REST Controller method.
- Accessing database repositories directly inside HTTP controllers or React UI components.