---
name: "onboard-dev"
description: "Guides the onboarding of new developers or agents into the repository, generating an architectural map and system overview using Mermaid diagrams."
---

# Onboard Developer Skill

## Intent
Rapidly orient developers or AI agents to the repository's architecture, core boundaries, domain models, and key execution flows without manual document reading.

## Obligations
1. **Architectural Mapping:**
   - Scan the directory structure, identify the core layers (e.g., Domain, Application, Infrastructure), and map entry points.
   - Summarize the tech stack, main frameworks, and configuration requirements.

2. **Visual Flow Generation:**
   - Generate a clear `mermaid` diagram illustrating the high-level system architecture or request lifecycle.

3. **Prerequisite & Setup Verification:**
   - Document required local tools, environment variables, and execution steps to run tests successfully.

## How to verify
- A generated onboarding summary includes a valid Mermaid diagram and actionable local execution commands.
- All core architectural boundaries and modules are correctly identified and summarized.

## Antipatterns (Do NOT do)
- Generating generic, template-based descriptions that do not reflect the actual codebase structure.
- Omitting environment prerequisites or critical setup gotchas.