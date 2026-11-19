# Contributing

Proposing changes to the agent rules in this template.

## How

1. Open an issue describing the problem the rule change solves.
2. Open a PR against `AGENTS.md` (or the affected template file) with the motivation in the PR description.
3. Keep changes minimal and explain precedence impact (see below).

## Rules for changes

- **Guardrails take precedence** over workflow rules. Do not weaken a safety rail (destructive-op approval, stash guard, push checklist, no-claim-without-proof) without strong justification.
- **Keep the core portable.** Per-project specifics belong in the `ADAPT` markers of the docs workflow adapter, not in the core rules.
- **No secrets**, internal URLs, proprietary snippets, or personal data in any file.
- **Docs updates only on explicit request**; changelog entries must reflect real, git-verified changes — never fabricated.
- **Internal notes** go in self-ignoring folders (`.ignore/`, `.plan/`, `.feature/`) and are never committed.

## Commit style

Follow the existing repo style. `[skip ci]` is allowed only for commits that change nothing CI verifies (docs, markdown, `AGENTS.md`, `.gitignore`, rules folders) — per the rule inside `AGENTS.md` itself.
