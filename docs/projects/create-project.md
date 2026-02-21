# Create a Site

## Overview

A **Site** is the central workspace for a project in OneSurvey. Everything — surveys, photos, elements, data, assignments, tickets, and reports — is organized under a site. Creating a site is the first step before any field work or survey design begins.

---

## Who Can Create a Site

Only users with a **Full seat** (or higher) can create a new site. If the **Add Project** button is not visible on the Sites page, your seat type does not permit site creation. Contact your organization's Owner or Manager to request access.

---

## Steps to Create a Site

### 1. Open the Sites Page

In the left navigation, click **Sites**. This opens the **Project List**, which shows all sites your account has access to.

### 2. Click Add Project

In the upper-right corner of the Project List, click the **Add Project** button. The **Add Project** modal will open.

### 3. Fill In the Site Details

The modal contains four fields:

| Field | Required | Description |
|---|---|---|
| **Name** | Yes | The full display name for the site (e.g., *Westside Medical Center*). |
| **Project ID** | Yes | A short identifier used to tag the site (e.g., *WSM-2024-01*). Spaces are automatically replaced with hyphens. |
| **Stage** | No | The current phase of the project. See [Stage Options](#stage-options) below. |
| **Client Organization** | No | Associates the site with a client from your organization's client list. |

!!! note "Project ID formatting"
    Any spaces you type in the Project ID field will automatically be converted to hyphens when the site is saved. For example, `WSM 2024 01` becomes `WSM-2024-01`.

### 4. Select a Stage (Optional)

The **Stage** field indicates where the project is in its lifecycle. If left blank, the site defaults to **Lead in/Profile**. You can change the stage at any time from the Project List.

Available stages:

| Stage | Description |
|---|---|
| **Lead in/Profile** | Initial site profile, pre-project scoping. |
| **Pre-Design** | Survey and site assessment phase. |
| **Take Off** | Quantity and scope takeoff. |
| **Design** | Active design work underway. |
| **Deployment** | Installation or deployment phase. |
| **LiveBuilt™** | Final as-built documentation. |

### 5. Select a Client Organization (Optional)

If your organization has clients configured, use the **Client Organization** dropdown to associate the site with a specific client. The client name will appear beneath the site name in the Project List. If no clients are listed, contact your organization's Owner or Manager to set them up under [Organization Settings](../organization/index.md).

### 6. Submit

Click **Submit** to create the site. The modal will close and the Project List will refresh to include the new site.

---

## Opening the New Site

After creation, your new site will appear as a row in the Project List. Click anywhere on the site row to open the **Site Detail** page, where you can manage surveys, team members, files, and more.

---

## Managing the Site Team

After a site is created, you can assign team members directly from the Project List. Only users with a **Manager** role or higher can add or change team access.

### Opening the Team Panel

In the **Team** column of the Project List, each site row displays stacked avatar icons for any assigned users. Managers will also see a dashed **+** button next to the avatars. Click anywhere on the avatar group (or the **+** button) to open the **Manage Team** modal for that site.

### Searching and Adding Users

The modal has a **Search users** field at the top. Type a name or email address to filter your organization's user list. Each result shows the user's name, email, organization role (Owner, Manager, or Member), and seat type (Full, Field, or Viewer).

Click **Add** next to a user to move them into the **Invitees** list below. Users who are already assigned to the site will not appear in the search results.

### Setting Access Levels

Once a user is in the Invitees list, use the dropdown on the right of their row to set their project access level:

| Access Level | Who It's For | What They Can Do |
|---|---|---|
| **Edit** | Full seat users | Design surveys, manage assignments, upload photos, and perform all project actions. |
| **Restricted Edit** | Field seat users | Capture photos and update field notes. Cannot modify survey designs or manage assignments. |
| **View** | Viewer seat users | View all project content and leave comments. Cannot make any edits. |

!!! note "Seat type limits what access you can assign"
    A user's seat type determines the highest access level they can be given on any site:

    - **Full seat** users can be assigned Edit, Restricted Edit, or View.
    - **Field seat** users can only be assigned Restricted Edit or View.
    - **Viewer seat** users can only be assigned View.

    When you add a user, the system automatically sets a default access level based on their seat type. You can change this within the limits above.

!!! info "Owners and Managers are always Edit"
    Users with an Owner or Manager organization role are permanently locked to **Edit** access on all sites. Their access level dropdown will show Edit and cannot be changed.

### Removing a User's Access

To remove a user who is already assigned, click their access dropdown in the Invitees list and select **Remove access** (shown in red at the bottom of the dropdown). This removes their access to the site when you save.

### Saving Changes

Click **Save** to apply all changes. Access is updated immediately for all listed users.

### Copying the Site Link

In the top-right corner of the Manage Team modal, click **Copy link** to copy the direct URL for the site to your clipboard. You can share this link with team members who already have access.

---

## What to Do Next

Once your site is created, the typical next steps are:

1. **Add your first survey** — Navigate to the Surveys tab, then upload a floor plan.
2. **Assign team members** — Click the team avatar area on the project row to open the Manage Team modal. See [Managing the Site Team](#managing-the-site-team) above for full details on access levels.
3. **Review site elements and data** — Confirm your element library and custom data fields are set up correctly for this site.
4. **Begin photo capture** — Use the Gallery or OneSnap mobile app to start capturing and organizing site photos.
5. **Set up assignments and tickets** — Use the Assignments and Tickets tabs to track tasks and issues.

---

## Managing Existing Sites

From the Project List, users with a **Manager** role or higher can access a three-dot actions menu on the right side of each site row.

### Edit a Site

Select **Edit** from the actions menu to reopen the site form and update the Name, Project ID, Stage, or Client Organization. Edit is disabled for archived sites.

### Duplicate a Site

Select **Copy Project** from the actions menu to create a full duplicate of the site, including all surveys, icons, and images. You will be prompted to enter a name for the copy. A progress indicator will track the duplication. When complete, click **Done** to return to the Project List.

### Archive or Unarchive a Site

Select **Archive Site** from the actions menu to move a site out of the active list. Archived sites can be viewed by toggling the **Archived** toggle at the top of the Project List. To restore an archived site, open the archived view and select **Unarchive Site** from its actions menu.

!!! tip "Archive vs. delete"
    OneSurvey uses archiving rather than deletion to preserve all site data. Archived sites remain accessible and their data is retained.

### Changing the Stage Inline

Users with a **Full seat** can update a site's stage directly from the Project List without opening the edit modal. Click the stage indicator in the **Stage** column for any active site to open a dropdown and select the new stage.

---

## Related Pages

- [Site Detail](project-detail.md)
- [Surveys Overview](../surveys/index.md)
- [Gallery](gallery.md)
- [Assignments](assignments.md)
- [Tickets](tickets.md)
- [Clients](../organization/clients.md)
