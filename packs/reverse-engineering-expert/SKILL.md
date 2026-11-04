---
name: "reverse-engineering-expert"
description: "Guides the reverse engineering and analysis of compiled binaries, proprietary applications, and opaque systems using the REA (Reverse Engineer Anything) MCP toolkit."
---

# Reverse Engineering Expert Pack

## Intent
Enable safe, structured, and deep inspection of compiled binaries and local applications without source code, utilizing the REA (Reverse Engineer Anything) MCP to extract logic, UI structures, and architectural behaviors for system analysis or cloning.

## Obligations
1. **Tooling & MCP Integration:**
   - Verify that the `morluto/rea` MCP server is active before initiating analysis. If not, prompt the user to start the REA server by following the official repository setup: https://github.com/morluto/rea.
   - Utilize REA's underlying integrations (e.g., Hopper, Radare) to inspect local application binaries or executables explicitly provided by the user.

2. **Structured Analysis & Cloning Boundaries:**
   - Map the target application's local component hierarchy, offline functionalities, and UI structures prior to generating any clone or replication code.
   - Distinguish strictly between offline/native capabilities (which can be inspected and cloned locally) and server-side remote processing (which cannot).

3. **Evidence-Based Engineering:**
   - Present extracted pseudo-code, memory behaviors, or structural evidence extracted by REA *before* drawing conclusions or writing the cloned implementation.

## How to verify
- The MCP connection to REA successfully resolves the target binary's metadata and structure.
- Extracted logic, assembly, or UI hierarchies are explicitly documented in the conversation before code generation begins.

## Antipatterns (Do NOT do)
- Attempting to clone or analyze remote server-side logic that is not present in the local binary.
- Generating speculative code implementations or clones without first extracting the actual binary behavior via REA.
- Executing binary analysis on unverified target paths without explicit user confirmation.