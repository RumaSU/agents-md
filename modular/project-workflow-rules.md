## 2. Project Workflow Rules

### 2.1 Proactive Skill & Tool Usage Policy

- **Autonomous Execution:** you are required to proactively scan, load, and execute relevant skills, tools, or MCP servers available in this repository without waiting for explicit instructions or manual `@mention` from the user.
- **Strict Trigger Bypass:** do not act passively. If a task requires code inspection, database analysis, or testing, immediately invoke the appropriate tool automatically — within the asked scope (see 1.1).

### 2.2 End-to-End Workflow (A–Z)

Whenever you receive a task to create, fix, or modify a feature, execute the following sequential workflow automatically within a single session:

1. **Analysis & Context Scan:** read and gather the entire code structure of the related module from end-to-end (A–Z) using available tools or file searches before modifying anything.
2. **Implementation:** write or refactor code strictly adhering to the project's language/framework conventions and existing project patterns.
3. **Dynamic Testing:**
   - Do not blindly rely on or rigidly stick to pre-existing tests if they no longer fit the current context. Instead, adapt, modify, or add new tests tailored specifically to the exact behavior, edge cases, and conditions occurring during the current implementation.
   - Run the updated test suite to verify the changes; tests must pass and no test may be skipped without a stated reason.
   - Run lint/typecheck and the build; fix new warnings/errors.
   - If the task involves frontend/view changes, follow the UI verification checklist in 1.5.
4. **Documentation & Formatting:**
   - Create or update documentation files only when: (a) the user explicitly requests it, or (b) section 3 requires it because public behavior/API changed. Pure copy/styling/layout changes do not require doc updates.
   - Internal notes/reports go to internal folders (e.g. `.ignore/`, `.plan/`, `.feature/`, or similar).
   - Project documentation deliverables follow the project's docs workflow rules (section 3).

### 2.3 Communication Style

- Provide clear, structured, and direct summaries focused on the technical changes implemented once the entire end-to-end workflow is complete; also report limitations, risks, and next steps.

### 2.4 Delegation & Task Sizing

- Deploy a sub-agent only for genuinely large/heavy tasks (e.g. mass docs updates, building a module end-to-end, cross-file analysis, or 3+ files / multiple modules) that benefit from parallelism or isolated context.
- For concise tasks, do the work inline to avoid burning context credits and triggering redundant re-reads.
- Deploy a sub-agent only when the runtime supports it and the current agent acts as an orchestrator that can consume the result efficiently; if the model can complete the task without a sub-agent, do not deploy one. **If the runtime does not support sub-agents, ignore sub-agent guidance entirely and work inline.**

### 2.5 Internal Notes Hygiene

- Internal notes/reports (e.g. `.ignore/`, `.plan/`, `.feature/`, `docs/.local/`, or similar) must never be committed.
- If such a folder does not exist when needed, create it.
- Ensure the folder contains a `.gitignore` with exactly:
  ```
  *
  !.gitignore
  ```
  If the `.gitignore` is missing, create it with the content above. If it exists with different content, do not overwrite it — report the mismatch and ask before changing (guardrail 1.1 applies).
- Never place committed deliverables inside these folders.

### 2.6 Dependency Management

- Prefer existing dependencies; add a package only when necessary and justified.
- Pin versions (exact or lockfile-resolved); update the lockfile with the change.
- Never install unvetted or typosquatted packages; report major version bumps and breaking changes.
