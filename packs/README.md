# Extension Packs

This directory contains modular, stack-specific and functional extension packs for the **AI Engineering Toolkit**. 

Unlike global rules (`.agents/rules/`), packs are **opt-in modules** selected during project initialization (`scripts/init.sh`) depending on the technological stack or specific engineering domain of the target application.

---

## Available Packs

### 1. `spring-boot-expert`
- **Focus:** Enterprise Java & Spring Boot backend architecture.
- **Enforces:** Clean Architecture, strict transaction boundaries (`@Transactional`), N+1 query prevention, and global RFC 7807 error handling.

### 2. `refactor-react`
- **Focus:** React and Next.js frontend optimization.
- **Enforces:** Hook composition, unnecessary re-render prevention, and clean state management boundaries.

### 3. `humanize-frontend`
- **Focus:** User interface quality and organic interaction design.
- **Enforces:** Polished micro-interactions (`hover`, `focus`, `loading` states), typographic hierarchy, accessibility standards, and defensive layout design.

### 4. `unslop-ai`
- **Focus:** Code and documentation purification.
- **Enforces:** Elimination of redundant boilerplate, excessive obvious comments, robotic AI fluff, and over-engineered abstractions.

### 5. `seo-optimizer`
- **Focus:** Web visibility and compliance.
- **Enforces:** Semantic HTML, Core Web Vitals performance optimization, and WCAG accessibility compliance.

---

## Usage

During the execution of `./scripts/init.sh`, you will be prompted to select which of these packs should be injected into your target project's `.agents/` directory.