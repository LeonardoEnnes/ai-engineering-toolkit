---
name: "debug-root-cause"
description: "Enforces methodical root-cause analysis (RCA) and prevents random trial-and-error patching during debugging sessions."
---

# Debug Root Cause Rule

## Intent
Force the AI and developer to follow a systematic troubleshooting process—identifying root causes through evidence and logs rather than applying random guesswork or speculative patches.

## Obligations
1. **Reproduction & Evidence Gathering:**
   - Before attempting any fix, the exact failure mode, stack trace, logs, or failing test case must be isolated and documented.
   - Verify the reproduction steps locally before writing corrective code.

2. **Hypothesis-Driven Debugging:**
   - Formulate a clear technical hypothesis explaining *why* the failure occurs based on code structure or telemetry data.
   - Propose a targeted fix addressing the underlying root cause, not just masking the symptom.

3. **Regression Prevention:**
   - Every bugfix must include or be accompanied by a reproducing unit or integration test to prevent future regressions.

## Antipatterns (Do NOT do)
- Applying blind trial-and-error changes ("shotgun debugging") hoping something works without understanding the root cause.
- Suppressing errors, exceptions, or timeouts silently without handling the underlying state failure.