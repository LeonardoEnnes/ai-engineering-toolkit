---
name: "refactor-react"
description: "Forces elite React/Next.js component architecture, hook composition, and rendering optimization."
---

# React Refactoring Expert Pack

## Intent
Eliminate monolithic components, prevent unnecessary re-renders, and enforce idiomatic React architecture (hooks, component composition, and state localization).

## Obligations
1. **Component Decomposition & Composition:**
   - Break down components exceeding 150 lines into smaller, focused sub-components.
   - Prefer component composition (children props, render props) over deep prop drilling.

2. **State Management & Optimization:**
   - Keep state as close as possible to where it is used (state localization). Avoid lifting state to global stores unless strictly necessary.
   - Guard against performance bottlenecks using `useMemo` for heavy computations and `useCallback` for stable function references passed to optimized child components.

3. **Hooks Hygiene:**
   - Never call hooks conditionally or inside loops/nested blocks.
   - Ensure all dependency arrays in `useEffect`, `useMemo`, and `useCallback` are complete and accurate.

## How to verify
- React DevTools profiler shows minimal render cascades on state updates.
- Component tree is modular, with clear separation between container/smart components and presentational/dumb components.

## Antipatterns (Do NOT do)
- Monolithic components handling data fetching, local state, and complex UI rendering all in one place.
- Using unstable object literals or inline arrow functions as props for memoized child components.