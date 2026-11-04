# Rule: No Silent Refactors

## Intent
Change only what was requested. Unrequested reformatting, renaming, or "improvements" add review noise, increase merge risk, and violate the user's intent.

## Obligations
1. Only modify the code directly requested by the user.
2. Never rewrite, reformat, or "improve" surrounding code (e.g., changing `let` to `const`, standard functions to arrow functions, or fixing whitespace) unless an explicit refactoring was requested.
3. Respect the existing code style of the file, even if you know a "better" or more modern syntax.
4. If you spot a real security vulnerability or critical bug in surrounding code, report it to the user in text; do not change it silently.

## How to verify
- The Git diff contains only the lines strictly required to fulfill the user's request.
- No formatting-only, modernization-only, or rename-only hunks exist outside the task scope.

## Signs of violation (Antipatterns)
- Diff has more unrelated lines changed than requested lines.
- Renaming variables or extracting methods in the same commit as an unrelated bug fix.
- Starting a response with *"While I was here, I also modernized..."*.