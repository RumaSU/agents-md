# Security Policy

## Reporting a vulnerability

This repository contains agent rules and helper scripts, not a running service. If you find a security issue (for example, a rule that encourages unsafe behavior, a leaked secret in the template, or a risky install script), report it privately:

1. Open a private security advisory on GitHub (Security → Advisories → Report a vulnerability), or
2. Contact the maintainer directly.

Include:

- the file and section,
- the problematic text or behavior,
- why it is a risk,
- a suggested fix.

Please do not open a public issue for an undisclosed vulnerability.

## Scope

- `AGENTS.md`, `AGENTS.xml-blocks.md`
- `install.ps1`, `install.sh`
- `examples/`

## Secrets

Never include API keys, tokens, or `.env` contents in issues or pull requests. Refer to secrets by name, not value.