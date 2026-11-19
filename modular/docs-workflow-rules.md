## 3. Docs Workflow Rules (Adapter)

**If your project has no docs workflow, delete this section.**

**This section is a per-project adapter, not a core rule.** Adapt the `ADAPT` fields below to your stack before use. The core guardrails and project workflow remain portable.

Project documentation deliverables (e.g. `docs/`, README, API docs, changelog). Internal working notes are NOT governed here.

### 3.1 Site & tooling (ADAPT)

Describe the doc tool (e.g. VitePress, Docusaurus, MkDocs) and its config/commands; if no site, use plain Markdown under `docs/`.

### 3.2 Scope

Committed documentation deliverables only; never commit build artifacts (e.g. `dist/`, `cache/`) or internal notes (e.g. `docs/.local/`). Internal notes folders must follow Internal Notes Hygiene (create folder + `.gitignore` with `*` / `!.gitignore`), see 2.5.

### 3.3 Location & structure (ADAPT)

Define where docs live and the folder layout (e.g. `architecture/`, `modules/`, `guides/`, `reference/`). If multilingual, specify the mirror path and that new/renamed pages must be registered in each locale's navigation config.

### 3.4 Language (ADAPT)

Default language for committed docs (e.g. English) and where translations live; internal notes may use the user's language.

### 3.5 When to create/update

Update docs when: (a) the user explicitly requests it, or (b) public behavior/API changes make the docs stale. Pure copy/styling/layout changes do not require doc updates. This is the single source of truth for the docs policy; section 2.2.4 defers to it.

### 3.6 On a docs update request

- Deploy a sub-agent if possible to understand the existing structure and apply updates that fit it (see 2.4 "Delegation & Task Sizing"); fall back to inline for small edits. If the runtime does not support sub-agents, work inline.
- Do not perform direct translation; multilingual parity must be handled deliberately (e.g. via sub-agent or a dedicated pass), not auto-translated inline.
- Do not update the changelog as part of a docs update.

### 3.7 When updating the changelog

- First inspect its structure and conventions before editing.
- Verify state via `git status` (and related) to confirm what changed and avoid duplicating/stale entries; do not fabricate entries.

### 3.8 Format (ADAPT)

Markdown conventions; consistent headings, code blocks with language tags, diagrams in a designated folder; examples must match the codebase.

### 3.9 Review

Run the docs build (if any) to catch broken links/dead pages; verify navigation/parity registration; do not leave placeholder content.

### 3.10 Delegation

Mass documentation updates may use a sub-agent (see 2.4 "Delegation & Task Sizing"); small single-file edits stay inline. If the runtime does not support sub-agents, work inline.
