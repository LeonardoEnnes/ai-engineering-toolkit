---
name: "seo-optimizer"
description: "Enforces elite SEO, accessibility (a11y), and semantic HTML standards for modern frontend applications."
---

# SEO and Accessibility Expert Pack

## Intent
Maximize organic search visibility, Core Web Vitals performance, and strict WCAG compliance, eliminating generic unaccessible UI elements.

## Obligations
1. **Semantic HTML Structure:**
   - Replace generic `<div>` wrappers with semantic landmarks: `<nav>`, `<main>`, `<article>`, `<aside>`, `<header>`, `<footer>`, `<section>`.
   - Maintain a strictly hierarchical heading structure (`<h1>` to `<h6>`) without skipping levels. Enforce **exactly one `<h1>`** per view/page.
   - Use `<button>` exclusively for actions and `<a>` for navigation. **Never** use `<div onClick={...}>` or span-based click handlers.

2. **Web Accessibility (WCAG / a11y):**
   - Every `<img>` must have an explicit `alt` attribute. Decorative images must explicitly declare `alt=""`.
   - Icon-only buttons must provide an `aria-label` or `aria-labelledby`.
   - Form controls (`<input>`, `<select>`, `<textarea>`) must be explicitly bound to a `<label>` (using `htmlFor` in React or wrapping semantics).
   - Manage keyboard focus states (`focus-visible`) and avoid misuse of `tabIndex` greater than `0`.

3. **Metadata & Core Web Vitals:**
   - Ensure meta titles, descriptions, and Open Graph (`og:title`, `og:image`, `og:description`) tags are correctly rendered for every route.
   - Prevent layout shifts (CLS) by enforcing explicit aspect ratios or dimensions on dynamic images and media containers.

## How to verify
- Lighthouse / axe-core audits report 100% accessibility score with zero contrast or ARIA violations.
- Screen reader flow tests confirm logical tab-index and landmarks progression.

## Antipatterns (Do NOT do)
- Using non-interactive elements with click listeners (`<div onClick>`).
- Skipping heading levels (e.g., jumping straight from `h1` to `h4`).
- Missing alternative texts or leaving `alt` attributes empty on informative images.