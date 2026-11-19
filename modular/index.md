# Agent Rules: Modular Entry Point

**Template version:** 1.2.0 · **License:** MIT (see `LICENSE`)

**Precedence:** Guardrails > Project Workflow > Docs Adapter. If rules conflict, the higher block wins.

## How to use

Read this file first, then load only the rule files that match the task:

| Rule file | Contents | Load when |
|---|---|---|
| `guardrails.md` | Safety rules: editing safety, git safety, secrets, verification, communication | Always; these are the core safety rails |
| `project-workflow-rules.md` | Proactive tool usage, A-Z workflow, communication style, delegation, internal notes, dependencies | Any implementation, fix, or feature task |
| `docs-workflow-rules.md` | Docs adapter (with `ADAPT` markers) | Documentation changes |

## Routing map

| Task type | Rule file |
|---|---|
| Any task (safety baseline) | `guardrails.md` |
| Code change / feature / fix / refactor | `project-workflow-rules.md` |
| Documentation change | `docs-workflow-rules.md` |

## Variants

- **Clean (this folder):** plain Markdown, one file per top-level section of `../AGENTS.md`.
- **XML blocks (`xml/`):** the same content wrapped in `<guardrails>`, `<project-workflow-rules>`, `<docs-workflow-rules>` tags, for Laravel Boost-style generated versions.

## Notes

- The all-in-one variants (`../AGENTS.md`, `../AGENTS.xml-blocks.md`) remain the default and the source of truth.
- If you edit a file here, mirror the change back to the all-in-one variants (or regenerate them).