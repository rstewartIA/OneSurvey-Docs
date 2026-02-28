# Tickets

## Overview

**Tickets** track service issues, support requests, and reactive follow-up work tied to a specific site. Unlike Assignments — which track planned, owned execution tasks — Tickets are used for problems discovered on site, vendor coordination, repair requests, and anything that needs to be logged, tracked, and resolved.

Each ticket can be linked to a specific survey and element so the issue stays in context.

---

## The Tickets Table

The Tickets tab shows all tickets for the site in a table:

| Column | Description |
|---|---|
| (Checkbox) | Click to mark the ticket complete or closed. |
| **Title** | Ticket title with its auto-assigned ticket number (e.g., *#42*). |
| **Floor Plan** | The linked survey name, if set. |
| **Element** | The linked element and its position number, if set. |
| **Status** | Current status — click to change directly from the table. |
| **Priority** | Current priority — click to change directly from the table. |
| **Category** | The ticket category badge. |
| **SLA** | SLA timer badge, if the client has SLA settings configured. |
| **Created** | Date the ticket was created. |

Click any row to open the ticket detail panel.

---

## Statuses, Priorities, and Categories

### Statuses

| Status | When to use it |
|---|---|
| **Open** | Issue logged, not yet addressed. |
| **Pending Vendor** | Waiting on an external vendor before work can continue. |
| **In Progress** | Actively being worked on. |
| **Waiting on Parts** | Work is paused until materials or components arrive. |
| **Scheduled** | Work is confirmed for a specific date. |
| **Completed** | Issue has been resolved. |
| **Closed** | Ticket is fully done and closed out. |

### Priorities

| Priority | When to use it |
|---|---|
| **Critical** | Requires immediate attention. |
| **High** | Urgent but not immediately blocking. |
| **Medium** | Standard priority. |
| **Low** | Non-urgent; resolve when capacity allows. |

### Categories

| Category | Use for |
|---|---|
| **RMA** | Return merchandise authorization requests. |
| **Maintenance** | Scheduled or reactive maintenance work. |
| **Programming** | Software, firmware, or configuration issues. |
| **Cabling** | Wiring or cabling problems. |
| **Vendor Work** | Work coordinated with or awaiting an external vendor. |
| **Other** | Issues that do not fit the above categories. |

---

## Filtering Tickets

Use the **Filters** panel at the top of the Tickets tab:

- **Search** — Filter by title, description, or ticket number.
- **Status** — Show tickets with a specific status.
- **Priority** — Filter by priority level.
- **Category** — Filter by category type.
- **My Tickets toggle** — Show only tickets assigned to or created by you.

Click **Clear all** to reset all active filters.

---

## Creating a Ticket

1. Click **Create Ticket** in the top-right corner of the Tickets tab.
2. The create panel opens on the right. Fill in the fields:

| Field | Required | Description |
|---|---|---|
| **Title** | Yes | A clear description of the issue. |
| **Description** | No | Additional context — what the problem is and what resolution is expected. |
| **Status** | Yes | Set the initial status (typically Open). |
| **Priority** | Yes | Critical, High, Medium, or Low. |
| **Category** | Yes | The type of issue. |
| **Survey** | No | Link to the survey where the issue was found. |
| **Element** | No | Link to the specific element involved. Requires a survey to be selected first. |

3. Click **Submit** to create the ticket. A ticket number is assigned automatically.

---

## Ticket Detail Panel

Clicking a ticket row opens the detail panel on the right side:

- **Title and ticket number** — Edit directly from the panel.
- **Status, Priority, Category** — Change any of these from the panel.
- **Description** — View or update the issue description.
- **Linked Assignments** — Any assignments converted from or linked to this ticket appear here with their current status.
- **Floor Plan** — A clickable link to the linked survey, if set.
- **Element** — The linked element with a button to navigate directly to it on the survey canvas.
- **Creator** — Who created the ticket and when.
- **SLA** — SLA timer and status summary, if configured for the client.
- **Attachments** — Files uploaded directly to this ticket.
- **Comments** — A threaded comment section for team communication about this issue.
- **Audit Trail** — A full history of every change made to the ticket — who changed what and when.

---

## Updating Status or Priority from the Table

You do not need to open the detail panel to change a ticket's status or priority. The **Status** and **Priority** columns in the table are interactive dropdowns. Click the current value to open the dropdown and select a new one directly from the table row.

---

## Converting a Ticket to an Assignment

When a ticket becomes planned execution work that needs to be owned and tracked, convert it:

1. Open the ticket detail panel.
2. Use the **Convert to Assignment** action.
3. An assignment is created from the ticket's details. The ticket and assignment remain linked.

---

## Typical Workflow

1. Create the ticket and set status, priority, and category.
2. Link the related survey and element so the issue has location context.
3. Add photos or files as attachments to document the issue visually.
4. Collaborate via the comment thread — keep the team informed as the issue progresses.
5. Update the status as work moves forward (Open → In Progress → Completed → Closed).
6. If the ticket turns into planned work, convert it to an Assignment.

---

## Related Pages

- [Assignments](assignments.md)
- [Site Detail](project-detail.md)
- [Clients](../organization/clients.md)
- [Audit Logs](../organization/audit-logs.md)
