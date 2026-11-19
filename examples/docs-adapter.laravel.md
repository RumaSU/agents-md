# Docs Adapter Example: Laravel

Filled values for the `ADAPT` fields in section 3 of `AGENTS.md`.
Copy them into your project's `AGENTS.md`; sections 3.2 and 3.5-3.10 stay as in the core template.

### 3.1 Site & tooling (ADAPT)

No docs site; plain Markdown under `docs/`. No build step.

### 3.3 Location & structure (ADAPT)

`docs/` with:

- `architecture/`: system overview and diagrams
- `modules/`: one page per domain module
- `guides/`: setup, deployment, local development
- `reference/`: configuration and API reference

### 3.4 Language (ADAPT)

English for all committed docs. No translations at this time.

### 3.8 Format (ADAPT)

Markdown CommonMark; ATX headings; fenced code with language tags; diagrams in `docs/diagrams/`.