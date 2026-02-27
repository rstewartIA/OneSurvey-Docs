# Docs Coverage Checklist

Use this checklist to keep public docs aligned with user-facing product areas while excluding internal-only features.

## Public User-Facing Coverage

- `/projects` -> `docs/projects/index.md`
- `/projects/:id` -> `docs/projects/project-detail.md`
- `/tickets` -> `docs/projects/tickets.md`
- `/oneSnap` -> `docs/media/onesnap.md` and `docs/mobile/onesnap.md`
- `/my-assignments` -> `docs/projects/assignments.md`
- `/clients` -> `docs/organization/clients.md` (Manager/Owner)
- `/users` -> `docs/organization/users.md` (Manager/Owner)
- `/organization` -> `docs/organization/index.md` (Manager/Owner)
- `/audit-logs` -> `docs/organization/audit-logs.md` (Owner)

## Keep Undocumented in Public Help Center

- `/ai-center` (super-admin)
- `/organization-list` and `/organization-list/:id` (super-admin)
- `/elements/mass-upload` (super-admin)

## Review Steps Before Merge

1. Confirm each edited doc describes only end-user actions.
2. Confirm no internal/backend implementation terms were introduced.
3. Run `python scripts/public_docs_lint.py`.
4. Run `./build.cmd` and verify strict build passes.
5. Verify nav links and redirects for any moved or removed pages.
