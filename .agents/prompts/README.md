# Agent Prompts Repository

This directory contains reusable, versioned procedure prompts that define structured workflows for AI agents.

## Available Prompts

| Prompt Folder | Description |
| :--- | :--- |
| [**initial-setup**](./initial-setup/) | Foundation bootstrap prompt used to initialize a new project with the complete agentic governance structure. |
| [**tooling**](./tooling/) | Enforces the use of the repository's own scripts as the single source of truth for execution commands. |
| [**ralph-loop**](./ralph-loop/) | Guides the agent through the rigorous Perceive → Orient → Decide → Act → Record (P.O.D.A.R.) execution cycle. |

## Convention
Each prompt lives in its own subdirectory containing a `PROMPT.md` file. Prompts describe **procedures**, while rules describe **constraints** and skills describe **roles**.