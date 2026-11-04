# Agent Skills Toolkit

This directory contains specialized, modular instructions (skills) designed to empower AI agents with expert-level capabilities across software engineering, security, and architecture workflows.

## Available Skills

| Skill | Description | Trigger / When to Invoke |
| :--- | :--- | :--- |
| [**grill-me**](./grill-me/) | Adversarial interrogation to stress-test plans, ideas, or architectural decisions and expose unstated assumptions. | When a proposal needs rigorous questioning before committing. <br>*Triggers:* `"/grill"`, `"grill me"`. |
| [**generate-docs**](./generate-docs/) | Generates production-grade, multi-file documentation (Architecture, API contracts, Contributing guidelines) with Mermaid diagrams. | When documenting a codebase, architecture, or API specifications. |
| [**security-audit**](./security-audit/) | Performs a zero-trust security scan based on OWASP Top 10, inspecting injections, hardcoded secrets, and access control. | During code reviews or before deploying to production. |
| [**performance-audit**](./performance-audit/) | Profiles and resolves high-impact performance bottlenecks across frontend rendering, backend concurrency, and database queries. | When fixing slow code, N+1 queries, or heavy re-renders. |
| [**code-review**](./code-review/) | Acts as a strict Tech Lead conducting uncompromising code reviews focused on SOLID principles, clean code, and testability. | During Pull Request reviews and refactoring phases. |
| [**tdd-architect**](./tdd-architect/) | Drives feature design and implementation strictly following the Red-Green-Refactor TDD/BDD workflow. | When building new features from scratch with test-first methodology. |
| [**onboard-dev**](./onboard-dev/) | Rapidly orients new developers or agents by mapping repository architecture and core flows using Mermaid diagrams. | When onboarding to a new codebase or summarizing architecture. |
| [**write-adr**](./write-adr/) | Guides the creation of formal Architectural Decision Records (ADRs) to document significant design and technology choices. | When establishing major structural decisions or trade-offs. |

## How to Use

Reference these skill files or instruct your AI agent to load the specific directory content (`skills/<skill-name>/SKILL.md`) whenever you need targeted, expert assistance during your development cycle.