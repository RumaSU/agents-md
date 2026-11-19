# Contributing

Proposing changes to the agent rules in this template.

## How

1. Open an issue describing the problem the rule change solves.
2. Create a branch: `feat/<topic>`, `fix/<topic>`, or `docs/<topic>`.
3. Open a PR using the pull request template; link the issue and explain the motivation.
4. Keep changes minimal and explain precedence impact (see below).

## Keep the variants in sync

The rules exist in four places. A change to one must be mirrored to the others:

| Source | Files |
|---|---|
| Clean all-in-one | `AGENTS.md` |
| XML-blocks all-in-one | `AGENTS.xml-blocks.md` |
| Clean modular | `modular/guardrails.md`, `modular/project-workflow-rules.md`, `modular/docs-workflow-rules.md` |
| XML modular | `modular/xml/guardrails.md`, `modular/xml/project-workflow-rules.md`, `modular/xml/docs-workflow-rules.md` |

`AGENTS.md` and `AGENTS.xml-blocks.md` are the source of truth. Mirror changes to `modular/` and `modular/xml/`.

## Validation

Run Markdown lint before opening a PR:

```bash
npx markdownlint-cli2 "**/*.md"
```

The repo config is `.markdownlint.json`.

## Rules for changes

- **Guardrails take precedence** over workflow rules. Do not weaken a safety rail (destructive-op approval, stash guard, push checklist, no-claim-without-proof) without strong justification.
- **Keep the core portable.** Per-project specifics belong in the `ADAPT` markers of the docs workflow adapter, not in the core rules.
- **No secrets**, internal URLs, proprietary snippets, or personal data in any file.
- **Docs updates only on explicit request**; changelog entries must reflect real, git-verified changes; never fabricated.
- **Internal notes** go in self-ignoring folders (`.ignore/`, `.plan/`, `.feature/`) and are never committed.

## Commit style

Follow the existing repo style. `[skip ci]` is allowed only for commits that change nothing CI verifies (docs, markdown, `AGENTS.md`, `.gitignore`, rules folders), per the rule inside `AGENTS.md` itself.

## Versioning

- Use semantic versioning (SemVer).
- Update `CHANGELOG.md` for user-facing changes.
- Tag releases (`v1.2.0`).

## Code of conduct & security

- Behaviors are governed by [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
- Security issues: see [SECURITY.md](SECURITY.md).