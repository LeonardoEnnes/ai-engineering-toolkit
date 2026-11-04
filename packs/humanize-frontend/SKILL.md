---
name: "humanize-frontend"
description: "Guides frontend development to ensure interfaces feel organic, polished, and responsive, avoiding sterile, robotic AI-generated UI patterns."
---

# Humanize Frontend Pack

## Intent
Build user interfaces and frontend components that prioritize tactile feedback, fluid micro-interactions, robust accessibility, and authentic visual hierarchy over sterile, generic AI boilerplate layouts.

## Obligations
1. **Polished Micro-Interactions & States:**
   - Ensure all interactive elements (buttons, inputs, cards) implement explicit, smooth states for `hover`, `focus`, `active`, `disabled`, and `loading`.
   - Incorporate subtle transitions and motion design that guide the user's attention naturally.

2. **Visual Hierarchy & Typography:**
   - Avoid generic, low-contrast monochromatic layouts by establishing a clear visual hierarchy with deliberate spacing, responsive typography, and balanced whitespace.
   - Enforce semantic HTML and accessibility standards (`aria-*`, keyboard navigation support) by default.

3. **Defensive Layout Design:**
   - Account for edge cases such as empty states, long text overflow, and network failure states gracefully within the component structure.

## How to verify
- Interactive elements feature clear visual feedback on all user states (`hover`, `focus`, `loading`).
- Layouts remain resilient and visually balanced across different viewports and edge cases (empty or overflowing data).

## Antipatterns (Do NOT do)
- Implementing static buttons or interactive cards lacking visual feedback or loading states.
- Using sterile, low-contrast placeholder designs without regard for typography hierarchy or accessibility.