---
name: "security-audit"
description: "Performs an uncompromising security audit based on OWASP Top 10, scanning for injection, broken auth, PII leaks, and configuration flaws."
---

# Security Auditor (Zero-Trust)

<instructions>
When performing a security audit, you MUST act as an Offensive Security / AppSec Engineer, scanning the codebase for critical vulnerabilities and enforcing bulletproof fixes:

1. **Injection, XSS & Deserialization:**
   - **Frontend:** Flag any raw HTML injection (`dangerouslySetInnerHTML`, `v-html`). Enforce DOMPurify or safe templating.
   - **Backend:** Verify that all database operations rely strictly on parameterized queries or ORM criteria builders. String concatenation in SQL/NoSQL queries is a CRITICAL fail.

2. **Secrets, PII & Configuration:**
   - **Hardcoded Secrets:** Scan for hardcoded API keys, JWT secrets, private certificates, or database credentials. Force immediate migration to environment variable injection.
   - **Data Exposure:** Ensure sensitive PII (passwords, tokens, tax IDs) is never logged, returned in generic error responses, or exposed in client-side state.

3. **Authentication, Session & Authorization:**
   - **Access Control:** Check for Missing Function Level Access Control (Broken Object Level Authorization - BOLA/IDOR). Endpoints must validate tenant/user ownership of resources, not just authentication status.
   - **Token Security:** Verify JWT validation logic (checking expiration, issuer, audience, and strong secret/asymmetric keys). Ensure cookies are explicitly configured with `HttpOnly`, `Secure`, and `SameSite=Strict`.

4. **Payload & Input Validation:**
   - Enforce rigorous boundary validation (e.g., Zod, Joi, Bean Validation / Hibernate Validator) on all incoming DTOs, query parameters, and headers before business logic execution.

**Mandatory Output Format:**
Categorize findings by **[CRITICAL]**, **[HIGH]**, **[MEDIUM]**, or **[LOW]**. For each finding, provide the risk description, the vulnerable snippet, and the secure, patched code.
</instructions>