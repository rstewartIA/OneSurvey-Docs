# Public Docs Scope Policy

This policy defines what belongs in the public OneSurvey help center.

## Audience

Public docs are for OneSurvey app users:
- Member (Viewer, Field, Full)
- Manager
- Owner

## Include

- Task-based user workflows in the app UI
- Role and seat behavior users need to do work
- Troubleshooting steps for common user issues
- Feature guidance for sites, surveys, mobile, assignments, tickets, and reports

## Exclude

- Super-admin only tooling and routes
  - `/ai-center`
  - `/organization-list`
  - `/elements/mass-upload`
- Backend implementation details
  - raw API endpoints
  - serializers/viewsets/models internals
  - auth implementation specifics (JWT internals, token refresh details)
- Internal operations and compliance runbooks
  - SOC 2 control language and audit implementation notes

## Writing Standards

- Use plain language and action-first instructions.
- Prefer "Available to" callouts on role-gated pages.
- Avoid architecture and implementation explanations in end-user docs.

## Optional Frontmatter Standard

Use these keys on key pages where practical:

```yaml
---
audience: public-end-user
roles:
  - member
  - manager
  - owner
last_reviewed: YYYY-MM-DD
doc_owner: Docs Team
---
```

## Pre-Publish Checks

1. Run `python scripts/public_docs_lint.py`.
2. Run `./build.cmd`.
3. Confirm changed pages keep links and redirects intact.
