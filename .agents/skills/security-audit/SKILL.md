---
name: "security-audit"
description: "Scans code for vulnerabilities, hardcoded secrets, and bad practices. Invoke when the user asks for a security review or before deploying to production."
---

# Security Auditor

<instructions>
When performing a security audit on the codebase, you MUST actively look for vulnerabilities based on OWASP Top 10 and apply strict fixes:

1. **Injection & XSS:**
   - Frontend: Flag and refactor any use of `dangerouslySetInnerHTML` (React) or `v-html` (Vue). Ensure all user input rendered on screen is sanitized.
   - Backend: Ensure all database queries use parameterized statements or ORMs. NEVER concatenate strings into SQL queries.

2. **Secrets & Credentials:**
   - Scan for hardcoded API keys, JWT secrets, passwords, or database URIs.
   - Force the extraction of these values to Environment Variables (e.g., `process.env.VARIABLE_NAME` or `System.getenv()`).

3. **Authentication & Authorization:**
   - Check if protected routes/endpoints actually verify user permissions (authorization), not just if they are logged in (authentication).
   - Ensure cookies storing sensitive tokens are marked as `HttpOnly`, `Secure`, and `SameSite=Strict`.

4. **Data Validation:**
   - Verify that all incoming payload data (DTOs, req.body, query params) is validated using strict validation libraries (like Zod, Joi, class-validator, or Bean Validation) before processing.

**Output Format:**
When auditing, list the vulnerabilities found categorized by severity (Critical, High, Medium, Low), explain the risk, and provide the exact code snippet to fix it.
</instructions>