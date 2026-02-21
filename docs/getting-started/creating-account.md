# Sign In and Invitations

## Overview

Access to OneSurvey is invitation-based. An organization Owner or Manager sends an invite to each new user. This page covers the admin invite flow, the new user setup flow, and the sign-in experience.

---

## Signing In

Go to the OneSurvey login page. Enter your **email address** and **password**, then click **Sign In**.

- Use the eye icon on the password field to show or hide your password.
- If your organization has Google Sign-In enabled, you can also use the **Continue with Google** option below the form.

If you cannot sign in, see [Password Reset](#password-reset) below.

---

## Admin Flow: Inviting a User

Only **Owners** and **Managers** can invite new users.

1. In the left navigation, click **Users**.
2. Click **Add User** in the top-right corner.
3. In the **Add User** modal that opens, fill in the fields:

| Field | Description |
|---|---|
| **Email** | The email address of the person being invited. |
| **Seat Type** | The capability level: **Full**, **Field**, or **Viewer**. Hover the info icon on each seat type button to see a description. |
| **Org Role** | The organization authority level: **Member**, **Manager**, or **Owner**. |

4. Click **Send Invite**.

The user immediately appears in the Users list with a status of **Invited**.

### Invite Rules

- **Manager** and **Owner** roles require a **Full** seat. When either of those roles is selected, the Field and Viewer seat options are automatically disabled.
- Only an existing **Owner** can assign the Owner role to another user. A confirmation prompt appears before the Owner role is applied.
- If your organization has reached its seat limit for the selected seat type, a warning banner appears in the modal showing the current usage (e.g., "Full seat limit reached 10/10"). A link to **Billing** is provided to expand capacity.
- If the invited email address already belongs to an existing OneSurvey account, the person is added to your organization and receives an **organization join email** rather than a full profile-setup email.

### Managing Pending Invites

From the Users table, find the invited user (shown with **Invited** status) and open their row actions menu (three-dot icon):

- **Resend invite** — Sends a new invite email if the original expired or was not received.
- **Revoke invite** — Cancels the invitation and removes the pending entry.

---

## New User Flow: Accepting an Invitation

When someone is invited for the first time, they receive a setup email.

1. Open the invitation email and click **Accept Invitation**.
2. The **Complete Your Profile** page opens in the browser. Your email and organization name are pre-filled.
3. Fill in the required fields:
   - **First Name**
   - **Last Name**
   - **Password** (minimum 8 characters)
   - **Confirm Password**
4. Optionally add a phone number, address, and profile photo.
5. Click **Complete Setup**.

Your account is activated immediately and you are signed in and taken to the **Sites** page.

---

## Existing User Flow: Joining a New Organization

If your email is already linked to a OneSurvey account and an admin from another organization invites you, you receive an **organization invite email**.

1. Open the organization invite email and click **Go to [Organization Name]**.
2. Sign in with your existing OneSurvey credentials.
3. If the new organization is not your current active one, use the **organization selector** to switch to it.

---

## Password Reset

1. On the login page, click **Forgot Password**.
2. Enter your email address and submit.
3. Open the password reset email and click the reset link.
4. Enter and confirm your new password.
5. Sign in with the new password.

---

## Troubleshooting

| Problem | Solution |
|---|---|
| Invite email not received | Check spam/junk folders. Ask an admin to use **Resend invite** from the Users page. |
| Invite link says expired | Ask an admin to resend the invite. The new link will be valid. |
| Invite link is invalid | The invite may have been revoked. Ask for a new one. |
| Cannot assign Owner role | Only an existing Owner can assign Owner access. |
| Invite blocked by seat limit | The organization has reached its seat capacity for that seat type. Ask an admin to free up seats or expand capacity via Billing. |
| Signed in but missing expected sites | You may be in the wrong organization. Use the organization selector to switch. |

---

## Related Pages

- [Users and Roles](../organization/users.md)
- [Sites Overview](../projects/index.md)
- [FAQ](../support/faq.md)
