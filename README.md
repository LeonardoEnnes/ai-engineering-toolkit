
# AI Engineering Toolkit

A lightweight, tool-agnostic **SPEC (Specification-Driven Development)** and governance toolkit for AI-assisted software development.

This repository provides a standardized structure of **rules**, **skills**, **packs**, and **prompts** designed to keep LLMs (such as Claude, GPT, or terminal coding agents) strictly aligned with senior engineering standards, clean architecture, and rigorous SPEC-driven workflows.

---

## Repository Structure

```text
.
├── AGENTS.md                  # Root execution instructions and global principles
├── LICENSE
├── README.md                  # Project documentation (this file)
├── .agents/
│   ├── rules/                 # Non-negotiable global constraints and guardrails
│   ├── skills/                # Modular expert roles and specialized procedures
│   └── prompts/               # Reusable bootstrap and execution procedure prompts
├── adapters/                  # Integration adapters and MCP configurations
├── packs/                     # Optional, stack-specific and functional extension packs
└── scripts/
    └── init.sh                # Automated bootstrap script for target projects
```

---

## 🛠️ Core Components

### 1. Global Rules (`.agents/rules/`)

Persistent constraints that govern how AI assistants write and modify code:

- **`security-and-secrets`**: Zero hardcoding, mandatory parameterization, and input sanitization.
- **`tdd-bdd-before-implementation`**: Enforces the Red-Green-Refactor test-first cycle.
- **`no-silent-refactors`**: Prevents unrequested refactoring, reformatting, or scope creep.
- **`architecture-boundaries`**: Enforces layer isolation and DTO separation.
- **`no-hallucination`**: Mandates fact-checking against real codebase patterns and dependencies.
- **`git-conventions`**: Enforces strict Conventional Commits, branch naming standards, and structured PR descriptions.
- **`debug-root-cause`**: Enforces methodical root-cause analysis (RCA) and prevents random trial-and-error patching.

### 2. Expert Skills (`.agents/skills/`)

Modular capabilities loaded on demand:

- **`code-review`**: Uncompromising senior-level code reviews focusing on SOLID and maintainability.
- **`security-audit`**: Zero-trust vulnerability scanning aligned with OWASP Top 10.
- **`performance-audit`**: Profiling and resolving bottlenecks across frontend, backend, and ORM layers.
- **`generate-docs`**: Production-grade, multi-file documentation generation with Mermaid diagrams.
- **`grill-me`**: Adversarial interrogation to stress-test architectural ideas and uncover hidden assumptions.
- **`tdd-architect`**: Guides feature implementation strictly through test-driven development.
- **`onboard-dev`**: Rapidly orients new developers or agents by mapping repository architecture via Mermaid diagrams.
- **`write-adr`**: Guides the creation of formal Architectural Decision Records (ADRs) for critical design choices.

### 3. Optional Packs (`packs/`)

Stack-specific and functional extension packs that can be opted into during project initialization:

- **`spring-boot-expert`**: Enterprise Java & Spring Boot architecture patterns, transaction boundaries, and Hibernate optimization.
- **`refactor-react`**: React/Next.js hook composition and re-render optimization.
- **`humanize-frontend`**: Organic, responsive UI components with polished micro-interactions, accessibility, and defensive design.
- **`unslop-ai`**: Strips generic AI visual clichés, corporate copywriting filler, and redundant code boilerplate.
- **`reverse-engineering-expert`**: Deep inspection and analysis of compiled binaries and local applications using the REA (Reverse Engineer Anything) MCP toolkit.
- **`seo-optimizer`**: Semantic HTML, Core Web Vitals, and WCAG accessibility standards.

---

## 🚀 Quick Start (Installation)

To bootstrap this agentic governance structure into a new or existing software project, run the installation script from the toolkit's `scripts/` directory:

```bash
# Clone or place the toolkit inside your workspace, then run:
./scripts/init.sh
```

The initialization script will:

1. Create the standard `.agents/` and `docs/` governance directories.
2. Inject core rules and prompts.
3. Place the master **`AGENTS.md`** file at the project root.
4. Prompt an interactive menu allowing you to select and install optional **extension packs**.

---

## Governance & Philosophy

- **Product changes; workflow does not:** Every project adapts to its unique business domain, but the execution lifecycle remains invariant (Kanban backlog → small user stories → test-first → automated gates → documented delivery).
- **Source of Truth:** The `.agents/` directory versioned in Git governs the assistant's behavior. Local IDE wrappers should always defer to these repository standards.
