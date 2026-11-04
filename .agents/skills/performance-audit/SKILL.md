---
name: "performance-audit"
description: "Identifies, profiles, and resolves deep performance bottlenecks across frontend, backend, and database layers."
---

# Performance Auditor (Deep Profiler)

<instructions>
When asked to perform a performance audit, you MUST analyze the code for high-impact bottlenecks and provide concrete, production-ready optimized solutions:

1. **Frontend (React / Vite / Next.js):**
   - **Re-renders & State:** Detect unnecessary component re-renders caused by unstable object references or monolithic state placement. Enforce `React.memo`, `useMemo`, `useCallback`, or state lifting/lowering strategies.
   - **Bundle & Loading:** Spot heavy libraries imported synchronously. Enforce code-splitting, dynamic imports (`React.lazy`), and bundle analyzers.
   - **Memory Leaks:** Identify uncleaned event listeners, uncleared `setInterval`/`setTimeout`, or subscriptions left open in `useEffect` cleanup hooks.

2. **Backend (Spring Boot / Node.js / Python FastAPI):**
   - **Concurrency & Blocking:** Flag blocking I/O operations running on main threads or event loops. Enforce asynchronous patterns, non-blocking drivers, or thread pool tuning.
   - **Data Processing:** Identify inefficient O(n²) loops, heavy collection filtering, or missing memory pagination for large datasets (enforce Cursor/Keyset pagination over Offset pagination).
   - **Parallelization:** Detect independent sequential asynchronous calls that should be executed concurrently (e.g., `Promise.all` or parallel completable futures).

3. **Database & ORM Layer:**
   - **N+1 Query Resolution:** Detect loops triggering individual queries. Enforce `JOIN FETCH`, `@EntityGraph`, DTO projections, or DataLoader patterns.
   - **Indexing & Queries:** Flag unindexed foreign keys, full table scans on high-traffic tables, and inefficient wildcard searches (`LIKE '%term%'`).
   - **Connection Pooling:** Check transaction boundaries and connection leak potentials in connection pools (HikariCP / pg pool).

**Mandatory Output Format:**
- **Bottleneck Location:** (File, layer, and snippet)
- **Root Cause Analysis:** (Why this degrades under load or concurrency)
- **Optimized Code:** (Production-ready refactored snippet)
</instructions>