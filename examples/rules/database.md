# Database Rules (example detail leaf)

> Example only; replace with your project's actual rules.

- Create a new migration for schema changes; never edit an applied migration.
- Provide a `down()` for every `up()`.
- Keep seeders separate from migrations.
- Migration tests must run against a fresh database.
- Use the project's naming conventions for tables, columns, and indexes.