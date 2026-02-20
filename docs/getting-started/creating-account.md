# Creating an Account

## Overview
Most people join OneSurvey through an invite sent by an admin.
This guide covers both sides of the flow:
- Admin flow: invite a user.
- Invited user flow: accept the invite and finish setup.

## Admin Flow: Invite a User
1. Open **Users**.
2. Select **Add User**.
3. Enter the user email.
4. Select **Seat Type** (`Full`, `Field`, or `Viewer`).
5. Select **Org Role** (`Owner`, `Manager`, or `Member`).
6. Select **Send Invite**.

After sending:
- The user appears with status **Invited**.
- Use row actions for **Resend invite** or **Revoke invite**.

### Invite Rules Admins Should Know
- `Manager` and `Owner` require a `Full` seat.
- Only an existing `Owner` can assign another `Owner`.
- If seat limits are reached, the invite is blocked until seats are available.
- If the email already belongs to an existing OneSurvey account, the person is added to the organization and gets an organization invite email.

## Invited User Flow: New User
1. Open the invitation email.
2. Select **Accept Invitation**.
3. On **Complete Your Profile**, confirm your email and organization.
4. Enter required fields:
   - First name
   - Last name
   - Password (minimum 8 characters)
   - Confirm password
5. Optional: add phone, address, and profile photo.
6. Select **Complete Setup**.

Result:
- The account is activated.
- The user is signed in and sent to **Sites**.

## Invited User Flow: Existing OneSurvey User
1. Open the organization invite email.
2. Select **Go to [Organization]**.
3. Sign in with your existing OneSurvey account.
4. If needed, switch to the invited organization from the organization selector.

## Password Help
1. On the login page, select **Forgot Password**.
2. Enter your email.
3. Open the reset email and use the reset link.
4. Set a new password and sign in.

## Troubleshooting
- Invite email not received: check spam/junk, then ask an admin to use **Resend invite**.
- Invite link expired: ask an admin to resend the invite.
- Invite link invalid: the invite may have been revoked; ask for a new invite.
- Cannot assign `Owner`: only an existing `Owner` can do this.
- Cannot send invite due to seat limit: free up seats or update seat capacity.
- Signed in but missing expected sites: switch to the correct organization.

## Related Pages
- [Users and Roles](../organization/users.md)
- [Sites Overview](../projects/index.md)
- [FAQ](../support/faq.md)
