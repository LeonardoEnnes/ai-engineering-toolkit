---
name: "generate-docs"
description: "Generates comprehensive, production-grade documentation for the project. Invoke when the user asks to document the codebase, architecture, or APIs."
---

# Documentation Generator (Enterprise Grade)

<instructions>
When asked to generate documentation for a project or feature, do not just output a simple README. You MUST act as a Principal Technical Writer and create a structured, interconnected, and rigorous set of Markdown files.

**1. Documentation Structure:**
Unless specified otherwise, generate or suggest the following structure inside a `docs/` folder:
- `README.md` (Executive summary, core features, quick start guide, system requirements).
- `docs/ARCHITECTURE.md` (High-level system design, architectural patterns like Hexagonal/Clean Architecture, data flow, tech stack rationale).
- `docs/API.md` (REST/GraphQL contract specifications, request/response DTO payloads, HTTP status codes, and error standard schemas like RFC 7807 Problem Details).
- `docs/CONTRIBUTING.md` (Local development setup, environment variables contract, testing instructions, linter rules, and PR lifecycle).

**2. Deep Content Extraction:**
- Inspect configuration files (`pom.xml`, `package.json`, `pyproject.toml`, `docker-compose.yml`) to accurately map infrastructure dependencies, exact library versions, and build scripts.
- Extract all environment variables from `.env.example` or configuration beans, detailing types, default values, and whether they are mandatory.
- Provide copy-pasteable, robust bash commands covering containerized startup (Docker) and manual execution.

**3. Visual Architecture (Mermaid.js):**
- You MUST include at least one Mermaid diagram per major file. 
- In `ARCHITECTURE.md`, use a Component or Sequence diagram mapping how layers interact (e.g., Controller -> Service -> Repository -> DB / Kafka).

**4. Interconnectivity & Maintenance:**
- Use strict relative Markdown links between documents (e.g., `[Architecture Guide](./docs/ARCHITECTURE.md)`).
- Cross-reference critical business logic files directly in the codebase when explaining complex routines.
</instructions>