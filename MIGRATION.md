# Migration Guide

## 1.1.0 → 1.2.0

### What changed

- Section 2.1 rewritten: "proactive" now explicitly means choosing the right tools **for the asked task**, with examples of scope creep.
- Section 1.1 clarified: improvements noticed while answering a question should be reported, not applied.
- Section 3 notes it can be deleted when the project has no docs workflow.

### How to upgrade

1. Replace `AGENTS.md` (or `AGENTS.xml-blocks.md` if using the XML variant).
2. Re-apply your project's `ADAPT` values in section 3.
3. Update `modular/` and `modular/xml/` if you use the modular layout.

## 1.0.0 → 1.1.0

### What changed

- `AGENTS.md` converted to clean Markdown: single H1, numbered H2, H3 subsections. XML wrapper tags and `===` lines removed from the default file.
- New XML-ish variant: `AGENTS.xml-blocks.md` (same rules, wrapped in `<guardrails>` / `<project-workflow-rules>` / `<docs-workflow-rules>` blocks) for Laravel Boost-style generated versions.
- Internal contradictions resolved (docs policy, `.gitignore`, scope vs proactive, explicit refactor).
- New rules: secrets (1.3), Definition of Done + rollback (1.4), branch & commit (1.2), dependency management (2.6), file handling (1.1), routing-map format and UI verification (1.5).

### How to upgrade

1. Replace your project's `AGENTS.md` with the new `AGENTS.md`.
2. If your project uses Laravel Boost / XML-ish blocks, use `AGENTS.xml-blocks.md` instead.
3. Re-apply your project's `ADAPT` values in section 3; they are not carried over automatically.
4. Update your project's `CHANGELOG.md` if you track rules changes.

### Behavior changes to review

- Docs policy is now consistent: docs are updated when explicitly requested **or** when public behavior/API changes make them stale (section 3.5 is the single source of truth).
- `.gitignore` is no longer overwritten: an existing `.gitignore` with different content is reported and requires confirmation (2.5).
- The guardrails language rule no longer overrides an explicit docs-language choice in section 3.
- Sub-agent guidance now has a rough threshold ("3+ files / multiple modules") instead of "genuinely large/heavy" (2.4).