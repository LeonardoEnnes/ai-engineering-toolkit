---
name: "unslop-ai"
description: "Removes AI-generated fluff, boilerplate redundancies, excessive disclaimers, and verbose robotic patterns from code and documentation."
---

# Unslop AI Pack

## Intent
Eliminate AI-generated bloat (commonly referred to as "slop"), including redundant wrappers, excessive comments stating the obvious, over-engineered abstractions, and robotic conversational fillers in codebases and technical documentation.

## Obligations
1. **Code & Text Purification:**
   - Strip out redundant boilerplate code, excessive comments explaining syntax rather than intent, and unnecessary wrapper classes or interfaces that add zero architectural value.
   - Refine text and documentation to be direct, concise, and technically precise, removing robotic filler phrases and conversational padding.

2. **Simplicity Enforcement:**
   - Prioritize native language features and straightforward implementations over overly complex or abstract patterns unless explicitly justified by domain requirements.

## How to verify
- Code contains no redundant comments, unused wrapper classes, or syntactic boilerplate.
- Documentation and code explanations are concise, direct, and free of filler words.

## Antipatterns (Do NOT do)
- Leaving comments that simply restate what the code clearly expresses (e.g., `// Increment counter by 1`).
- Introducing unnecessary factory patterns, wrappers, or abstractions for single-implementation components.