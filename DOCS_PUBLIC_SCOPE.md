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

## Required Metadata Standard (Nav Pages)

Every page listed in `mkdocs.yml` nav must include these keys:

```yaml
---
doc_id: HC-AREA-###
doc_owner: OneSurvey Support Team
audience: public-end-user
roles:
  - member
  - manager
  - owner
last_reviewed: YYYY-MM-DD
---
```

`last_reviewed` is optional for page owners but, if present, must be `YYYY-MM-DD`.
`Last updated` is rendered automatically from git revision date.

### Doc ID Assignment Rules

- Format: `HC-(START|SITES|SURV|MOB|ORG|HELP)-###`
- Keep IDs stable forever; moving a page does not change its ID.
- Assign the next available number in that area.
- Record every new ID in `DOC_ID_REGISTRY.md`.

Examples:
- `HC-START-001` for Start Here pages
- `HC-SITES-006` for Sites pages
- `HC-HELP-003` for Help pages

## Pre-Publish Checks

1. Run `python scripts/public_docs_lint.py`.
2. Run `./build.cmd`.
3. Confirm changed pages keep links and redirects intact.
