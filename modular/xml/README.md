# XML-Block Variant

The same rules as the clean variant in `../`, wrapped in their original tags:

- `guardrails.md` → `<guardrails>`
- `project-workflow-rules.md` → `<project-workflow-rules>`
- `docs-workflow-rules.md` → `<docs-workflow-rules>`

Use these files when your tooling expects XML-like blocks (e.g. Laravel Boost-style generated versions). Concatenating the three files in order reproduces `../../AGENTS.xml-blocks.md` (with a blank line between files).