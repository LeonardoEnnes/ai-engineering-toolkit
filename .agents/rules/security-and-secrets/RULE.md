# Rule: Security and Secrets

## Intent
Prevent hardcoded credentials, data leaks, and injection vulnerabilities by enforcing zero-trust data handling at every application layer.

## Obligations
1. **Zero Hardcoded Secrets:** Never commit or write API keys, passwords, JWT secrets, private keys, or database URIs in code. Always use environment variables (`System.getenv()` or `process.env`).
2. **Parameterized Queries Only:** Never concatenate strings into SQL, NoSQL, or command-line execution strings. Always use ORMs, criteria builders, or parameterized statements.
3. **Strict Input Validation:** Validate all external payloads (DTOs, request bodies, query params) at the application boundary before passing them to business logic.
4. **Sanitize Outputs:** Never expose internal stack traces, database details, or sensitive PII (Personally Identifiable Information) in client error responses.

## How to verify
- Code review checks show zero hardcoded strings resembling keys or passwords.
- All database calls use placeholders (`?`, `:param`, or ORM query builders).
- Validation annotations or schema libraries (Zod, Bean Validation) are present on inputs.

## Signs of violation (Antipatterns)
- Using string interpolation or concatenation inside queries (e.g., `SELECT * FROM users WHERE id = ` + userId).
- Catching exceptions and returning the raw exception message or stack trace to the API consumer.