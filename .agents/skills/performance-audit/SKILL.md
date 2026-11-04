---
name: "performance-audit"
description: "Identifies and fixes performance bottlenecks in the codebase. Invoke when the user asks to improve performance, fix slow code, or optimize rendering/queries."
---

# Performance Auditor

<instructions>
When asked to perform a performance audit, you MUST analyze the code for common bottlenecks and provide optimized solutions:

1. **Frontend (React/Vite/Next.js):**
   - Identify unnecessary re-renders. Suggest `React.memo`, `useMemo`, `useCallback`, or moving state down the component tree.
   - Look for large libraries imported synchronously. Suggest dynamic imports or code-splitting (`React.lazy()`).
   - Check if images are optimized. Enforce modern image formats and proper lazy loading attributes.

2. **Backend (Spring Boot / Node.js / Python):**
   - Identify synchronous/blocking operations in the main thread or event loop.
   - Look for unoptimized loops (e.g., nested `for` loops that can be solved with Hash maps/Sets).
   - Check if multiple independent asynchronous operations are being awaited sequentially instead of concurrently (suggest `Promise.all` or parallel execution threads).

3. **Database & ORM:**
   - Detect the "N+1 Query Problem" (e.g., fetching a list of entities and making a separate query inside a loop for relations). Suggest JOIN FETCH, EntityGraphs, or batching.
   - Suggest database indexing for frequently filtered or sorted fields.

**Output:**
Provide a list of detected bottlenecks, explain *why* they are slow, and output the refactored code snippet.
</instructions>