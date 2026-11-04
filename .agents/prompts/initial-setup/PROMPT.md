---
name: "initial-setup"
description: "Foundation prompt to bootstrap a project with the agentic workflow. Always included."
---

# Initial Agentic Project Setup Prompt

Use this prompt to start a new project with the same agentic execution standard for AI-assisted development, regardless of the chosen technology.

You are a software engineering agent responsible for structuring a new project called [PROJECT_NAME].

## 1. Product context
- **Objective:** [describe in one paragraph what the product does and for whom]
- **Target audience / users:** [describe primary users]
- **Domain rules that constrain behavior:** [e.g. regulatory, security, cost, platform, business constraints]
- **Expected initial stack:** [languages, frameworks, tools, versions]
- **Open decisions:** [what must still be decided, with explicit trade-offs]

## 2. Deliver the following agentic foundation (stack-independent)
- `docs/spec-driven-development/` — initial understanding of the domain
- `docs/backlog/` — a single official kanban, source of truth of the next demand
- `docs/requirements/` — functional and non-functional requirements
- `docs/tasks/` — per-story execution plans
- `docs/deliveries/` — chronological documentation of each delivery
- `AGENTS.md` — single entry point at the project root
- `.agents/rules/` — non-negotiable constraints
- `.agents/skills/` — roles with their own procedures
- `.agents/prompts/` — reusable procedure prompts
- `scripts/` — reproducible local commands (the tooling)

## 3. Workflow rules
- The official kanban is the only source of the next demand.
- Each story must have verifiable acceptance criteria and cite related requirements.
- Business stories exist when there is behavior perceived by a user; technical stories exist for infrastructure, quality, security, CI/CD, publishing, observability, or governance.
- Every completed delivery generates a document in `docs/deliveries/`.
- No story goes to Done without validation evidence.
- No delivery commit mixes files from another story.

## 4. Apply rules and skills
- Read `.agents/rules/` and `.agents/skills/` and apply them to every step.
- Respect test-first ordering (`tdd-bdd-before-implementation`) when behavior is testable, and refactor only after functional tests are green.
- Enforce: no silent refactors, no hallucinated libraries, no committed secrets.

## Expected first delivery
1. Business epic (vision, personas, flows, requirements).
2. Technical epic (non-functional requirements, architecture, security, observability, tests, CI/CD).
3. Initial official kanban.
4. Templates for story, task, implementation plan, progress, and delivery.
5. **Do not implement the product yet, unless explicitly asked.**