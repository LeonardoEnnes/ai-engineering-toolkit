# Agent Rules Repository

This directory contains global, persistent guardrails and coding standards that govern how AI assistants behave and write code across projects.

## Core Rules

| Rule File | Focus Area | Description |
| :--- | :--- | :--- |
| [**architecture-boundaries**](./architecture-boundaries.md) | Architecture | Enforces strict layer separation, dependency inversion, and DTO isolation. |
| [**security-and-secrets**](./security-and-secrets.md) | AppSec | Prohibits hardcoded credentials, requires parameterized queries, and strict input validation. |
| [**clean-code-readable-names**](./clean-code-readable-names.md) | Quality | Sets standards for function sizing, intention-revealing naming, and fail-fast validation. |
| [**no-silent-refactors**](./no-silent-refactors.md) | Governance | Prevents unrequested code rewrites and forces transparency during refactoring. |
| [**git-conventions**](./git-conventions.md) | Workflow | Enforces strict Conventional Commits, branch naming standards, and structured PR descriptions. |
| [**debug-root-cause**](./debug-root-cause.md) | Troubleshooting | Enforces methodical root-cause analysis (RCA) and prevents random trial-and-error patching. |

## Usage
These rules should be loaded into the system prompt context or referenced locally to ensure consistent, production-grade output from any LLM.