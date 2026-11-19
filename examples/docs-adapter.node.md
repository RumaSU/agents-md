# Docs Adapter Example: Node / Vite

Filled values for the `ADAPT` fields in section 3 of `AGENTS.md`.
Copy them into your project's `AGENTS.md`; sections 3.2 and 3.5-3.10 stay as in the core template.

### 3.1 Site & tooling (ADAPT)

VitePress under `docs/`; `npm run docs:dev` for local preview, `npm run docs:build` for production.

### 3.3 Location & structure (ADAPT)

`docs/` with `guide/`, `reference/`, `api/`; sidebar and nav config in `docs/.vitepress/config.ts`.

### 3.4 Language (ADAPT)

English. Future translations in `docs/<locale>/`; new/renamed pages must be registered in each locale's sidebar config.

### 3.8 Format (ADAPT)

Markdown with Vue components where needed; fenced code with language tags; diagrams in `docs/public/diagrams/`.