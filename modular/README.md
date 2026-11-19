# Modular Variant

Split the rules into one file per top-level section:

| File | Variant | Source section |
|---|---|---|
| `guardrails.md` | Clean Markdown | `../AGENTS.md` → `## 1. Guardrails` |
| `project-workflow-rules.md` | Clean Markdown | `../AGENTS.md` → `## 2. Project Workflow Rules` |
| `docs-workflow-rules.md` | Clean Markdown | `../AGENTS.md` → `## 3. Docs Workflow Rules (Adapter)` |
| `xml/guardrails.md` | XML block | `../AGENTS.xml-blocks.md` → `<guardrails>` |
| `xml/project-workflow-rules.md` | XML block | `../AGENTS.xml-blocks.md` → `<project-workflow-rules>` |
| `xml/docs-workflow-rules.md` | XML block | `../AGENTS.xml-blocks.md` → `<docs-workflow-rules>` |

`index.md` is the entry point: precedence + routing map (which file to load for which task).

## Usage

- **Agent (clean):** point your tool at `index.md`, or copy its routing table into the project's `AGENTS.md`.
- **Laravel Boost / XML tooling:** use the files in `xml/`.
- **Assemble the all-in-one clean variant:** concatenate `guardrails.md` + `project-workflow-rules.md` + `docs-workflow-rules.md` with a blank line between them.
- **Assemble the all-in-one XML variant:** concatenate the files in `xml/` in the same order.
- **Customize:** edit `docs-workflow-rules.md` (and `xml/docs-workflow-rules.md`) for project-specific `ADAPT` values. Keep `guardrails.md` unchanged unless you intentionally change safety rules.

## Source of truth

The all-in-one files (`../AGENTS.md`, `../AGENTS.xml-blocks.md`) remain the default. Treat them as the source of truth: if you edit a file here, mirror the change back.