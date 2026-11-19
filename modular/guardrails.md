## 1. Guardrails

Safety-first constraints for agent behavior.

### 1.1 Editing safety

- **Question vs implementation:** if the user asks a question (e.g. "this is a question", "just check"), answer only. Never edit files until explicitly told to implement. This applies even when you notice improvements: report them instead of applying them.
- **Scope guard:** do not refactor, delete, or "improve" beyond the asked scope. Spot problems outside scope? Report them; do not fix them silently. Proactive tool usage (section 2.1) stays inside the asked task and never expands the scope. Proactive means choosing the right tools for the task, not doing extra work.
- **Re-scan before editing:** never edit from memory of a file's earlier state. Re-read it fresh every time. Content you did not write must be preserved and built on, never discarded, reverted, overwritten, or "fixed", unless the user explicitly asks to replace, refactor, or remove it. If a conflict with the task appears, stop and report instead of silently adapting.
- **File handling:** preserve the existing file encoding and line endings unless the task is explicitly about them.
- **Foreign changes:** files shown in `git status` that you did not change belong to the user/another agent. Report them; never stash/restore/commit/revert them. Build byproducts (e.g. `npm run build`, `composer install`) also regenerate files; expected noise, never revert or commit unless asked.
- **Destructive operations need an explicit yes:** never run `git rm` on tracked files, `git reset --hard`, `git clean`, `git restore`/`git checkout -- <file>`, `git branch -D`, `git tag -d`, `git rebase`, `git commit --amend` on pushed commits, force-push, `rm -rf` outside build/temp directories, deleting tracked files, or dropping published assets without explicit confirmation; when in doubt, list what would be deleted/lost first.
- **Stash guard:** `git stash drop` and `git stash clear` destroy stored work. An explicit yes is required, and show the basis plus a file-stat summary of the stash first; never `git stash` on your own initiative; propose `git stash pop`/`apply` only with the conflict risk stated for a dirty working tree; `git stash list`/`stash show` are safe to read freely.

### 1.2 Git safety

- **Git remote actions:** never `git push` (or set/push upstreams) without explicit request; commits follow repo style.
- **Branch & commit:** do not commit directly to `main`/`master` unless the user explicitly asks; follow the repo's branch naming and commit conventions; keep commits focused (one logical change); never rewrite shared history (rebase/amend/force-push) without explicit approval.
- **Push checklist:** before `git push`, show the staged list (what goes up), review `git diff --cached` for secrets, large files, and unintended changes, confirm the target branch, confirm nothing ignored-but-needed (e.g. `.env`) is sneaking in, and make sure the commit message matches repo conventions.
- **[skip ci] rule:** add `[skip ci]` (or `[ci skip]`) only when the commit changes nothing CI verifies: docs, markdown, `AGENTS.md`, skills-lock, `.gitignore`, rules folders. Never for source code, tests, database migrations, dependency manifests/lockfiles, frontend/build files, `.env.example`, or CI workflow files. Adapt the "never" list to your stack; when in doubt, omit it.

### 1.3 Secrets & credentials

- Never read, print, paste, or log secrets (API keys, tokens, passwords, private keys, `.env` contents). Refer to them by name, not value.
- Never commit `.env`, credential files, or secrets. If a secret is found in the repo or in a diff, report it without echoing the value.
- If a task requires a secret, ask the user to provide it through the proper channel; never guess or reuse a secret found elsewhere.

### 1.4 Verification & completion

- **No claim without proof:** never say "done/fixed/working" without verifying evidence (test output, lint/types check, build success, route count, or a browser check for UI), and make that evidence available in the report.
- **Definition of Done:** a task is Done only when tests pass (or no tests apply), lint/typecheck pass, the build succeeds, there are no new warnings/errors, docs are updated when section 3 requires it, and no known regressions remain.
- **Blocked means stop:** stop and report when blocked by missing business logic, permissions, or requirements whose ambiguity materially changes the outcome; do not guess business logic. For minor choices (naming, formatting, default values), pick a reasonable option and note it.
- **Rollback:** if a change breaks the build or tests, stop, report, and revert safely. Non-destructive fixes (new commit) are fine, but destructive reverts need explicit confirmation (see 1.1).

### 1.5 Communication

- **Language:** chat responses use the user's language (whatever they write). Code, comments, and commit messages default to English. Committed docs follow the language set in section 3 (`ADAPT`); an explicit docs-language choice there overrides the English default. The user's language is allowed for reports/notes inside internal folders (e.g. `.ignore/`, `.plan/`, `.feature/`).
- **Routing map first (if present):** before editing, open the project's rules index (e.g. `.ai/rules/index.md` and/or `.agents/rules/master.md` if they exist); load a detail leaf only when its routing-map row matches the task; never load the folder wholesale. A routing map is a Markdown table mapping task types to detail leaves (e.g. `| Database migrations | rules/database.md |`); create detail leaves only for task types that recur.
- **UI verification:** for frontend/view changes, verify at desktop and mobile viewports, check the browser console for errors, check for failed network requests, take screenshots where useful, and check basic accessibility (keyboard navigation, labels).
- **Long sessions end with a handoff:** close with Done / Pending / Decisions-needed so the next session or reviewer can continue without re-deriving context. Done = what changed and how it was verified; Pending = what remains; Decisions-needed = open questions with options.
