---
name: "spring-boot-expert"
description: "Guides enterprise-grade Spring Boot development enforcing Clean Architecture, transaction boundaries, and resilience."
---

# Spring Boot Expert Pack

## Intent
Ensure scalable, secure, and resilient backend development following enterprise patterns, avoiding common ORM and concurrency traps.

## Obligations
1. **Clean Architecture & Domain Isolation:**
   - Core domain logic must remain independent of Spring data annotations or HTTP controllers.
   - Use explicit DTOs/Records for request and response boundaries; never expose JPA Entities (`@Entity`) directly to the presentation layer.

2. **Database & Hibernate Optimization:**
   - Guard against the N+1 query problem by enforcing `JOIN FETCH`, `@EntityGraph`, or proper batch sizing (`@BatchSize`).
   - Ensure transactional boundaries (`@Transactional(readOnly = true)`) are properly placed at service methods to optimize database connection usage.

3. **Error Handling & Resilience:**
   - Implement global exception handling using `@ControllerAdvice` following RFC 7807 (Problem Details).
   - Avoid catching generic `Exception` blocks; handle domain-specific exceptions explicitly.

## How to verify
- Zero database queries inside iteration loops (N+1 safety check via query logs).
- Unit and integration tests validate transactional rollback and service isolation.

## Antipatterns (Do NOT do)
- Exposing raw JPA entities in REST controller endpoints.
- Leaving `@Transactional` missing or misconfigured on mutating service operations.