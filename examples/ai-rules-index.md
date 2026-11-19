# Rules Index (example)

Routing map for `.ai/rules/`. Agents load a detail leaf only when its row matches the task; the folder is never loaded wholesale.

| Task type | Detail leaf |
|---|---|
| Database migrations | `rules/database.md` |
| API endpoints | `rules/api.md` |
| Authentication | `rules/auth.md` |

Create detail leaves only for task types that recur. Add a row whenever a new detail leaf is added.