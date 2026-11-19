# Changelog

All notable changes to this template are documented here.

## [1.2.0] - 2026-11-19

### Changed

- Rewrote section 2.1 to define "proactive" as choosing the right tools **for the asked task**, with ✅/❌ examples of scope creep.
- Clarified section 1.1: question-vs-implementation now says to report improvements instead of applying them; scope guard now defines proactive as tool choice, not extra work.
- Clarified section 3: it can be deleted when the project has no docs workflow.

## [1.1.0] - 2026-11-19

### Added

- `AGENTS.xml-blocks.md`: the same rules wrapped in `<guardrails>` / `<project-workflow-rules>` / `<docs-workflow-rules>` blocks, for Laravel Boost-style generated versions.
- Guardrails: secrets & credentials (1.3), Definition of Done and rollback (1.4), branch & commit (1.2), dependency management (2.6), file encoding/line endings (1.1).
- Push checklist now reviews `git diff --cached` for secrets, large files, and unintended changes, and confirms the target branch.
- Destructive-operations list now includes `git branch -D`, `git tag -d`, `git rebase`, `git commit --amend` on pushed commits, and `rm -rf` outside build/temp directories.
- Routing-map format definition and UI verification checklist (1.5).
- `modular/`: clean per-section split (`guardrails.md`, `project-workflow-rules.md`, `docs-workflow-rules.md`, plus `index.md` and `README.md`); `modular/xml/` holds the same rules as XML blocks.
- Repo tooling: `.editorconfig`, `.markdownlint.json`, `.github/PULL_REQUEST_TEMPLATE.md`, `.github/ISSUE_TEMPLATE/`, `examples/`, `SECURITY.md`, `MIGRATION.md`.

### Changed

- Converted `AGENTS.md` to clean Markdown: single H1, numbered H2 sections, H3 subsections. Removed the XML-ish wrapper tags and `===` markers from the default file.
- Resolved internal contradictions: docs update policy (2.2.4 / 3.5), `.gitignore` overwrite vs preservation (2.5), scope guard vs proactive tool usage (1.1 / 2.1), and explicit refactor vs preservation (1.1).
- Clarified the language rule: committed docs follow the section 3 `ADAPT` choice; guardrails no longer override it.
- Added a version line and license reference to the file header.
- Install scripts: added `-Variant` / variant argument (`clean` | `xml`), auto-create the target folder, and corrected the closing message to section 3.

## [1.0.0] - 2026-11-19

### Added

- `AGENTS.md` core template: guardrails, project workflow rules, docs workflow adapter (with `ADAPT` markers).
- `README.md` with usage, customization, and reuse strategies.
- `install.ps1` / `install.sh` helpers to copy `AGENTS.md` into a project.
- `CONTRIBUTING.md`, `CHANGELOG.md`, `LICENSE` (MIT), `.gitignore`.