# Users and Roles

## Overview
The **Users** page is where admins invite people, set access, and manage seat usage.

## Role and Seat Model

### Organization Role
| Role | What it controls |
| --- | --- |
| Owner | Full organization authority, including assigning Owner access. |
| Manager | Manages users and operations across the organization. |
| Member | Works in sites based on seat type. |

### Seat Type
| Seat | Typical usage |
| --- | --- |
| Full | Full site planning, editing, and management workflows. |
| Field | Field execution workflows for surveys, assignments, tickets, and capture. |
| Viewer | View and comment access with limited editing. |

Manager and Owner roles require a Full seat.

## Invite a User
1. Open **Users**.
2. Select **Add User**.
3. Enter email.
4. Choose seat type and role.
5. Select **Send Invite**.

## Invitation Lifecycle
- New invitees appear as **Invited** until they complete setup and sign in.
- Use row actions to **Resend invite** or **Revoke invite**.
- If the email already has a OneSurvey account, the user is added to your organization and receives a join email.

## Edit Access
1. Open row actions and select **Edit**.
2. Update role and seat.
3. Save changes.

### Important Behavior
- Only existing owners can assign Owner access.
- The last owner in an organization cannot be demoted.
- Access updates take effect immediately.

## Remove a User
Use row actions and select **Delete**.

### What Happens on Removal
- If the person belongs to only your organization, their user record is removed.
- If the person belongs to multiple organizations, they are removed from your organization only.

## Seat Usage
The page shows Full, Field, and Viewer usage against seat limits, so admins can monitor capacity before inviting new users.

## Related Pages
- [Organization Settings](index.md)
- [Audit Logs](audit-logs.md)
- [Creating an Account](../getting-started/creating-account.md)

