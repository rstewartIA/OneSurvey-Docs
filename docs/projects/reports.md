# Reports

## Overview

The **Reports** tab is where generated report outputs are collected, downloaded, and managed. Reports are initiated from this tab using a step-by-step wizard, processed server-side, and then appear in the list below the wizard once complete.

---

## Generating a Report

Click the button to start a new report. The wizard walks through three steps:

### Step 1 — Select a Report Type

Choose from the available report types:

| Report Type | What it outputs |
|---|---|
| **Bill of Materials** | Element quantities grouped by type across the site, suitable for procurement or scope review. |
| **Element Information** | Custom field data (model number, serial number, IP address, etc.) for each placed element. |
| **Survey Data** | Survey-level data for each placed element — status, survey fields, and element details. |
| **Installation Data** | Installation details for each element — access notes, technician, timing, and installation status. |
| **Floor Plan** | A PDF of the survey floor plan with elements rendered on the image. |
| **Photo Report** | A formatted PDF of selected site photos, organized for sharing or client handoff. |

Click the card for the report type you want and proceed to the next step.

### Step 2 — Configure the Report

Configuration options vary by report type. Common options include:

- **Surveys to include** — Select one survey or all surveys on the site.
- **Elements to include** — Filter by element type or include all.
- **Fields to include** — Choose which data fields appear in the output.
- **Paper size** — Select the output size (e.g., Letter, A4).
- **Report name** — Give the report a custom title that will appear in the Reports list.
- **Cover page** — Some report types support a branded cover page.

### Step 3 — Generate

Click **Generate**. The report is queued for server-side processing. A confirmation message confirms it has been queued successfully. Once processing is complete, the report appears in the Reports list on this tab.

!!! note "Processing time"
    Reports are generated server-side and may take a moment depending on the size of the site. If your report does not appear immediately, wait a moment and refresh the Reports tab.

---

## Viewing and Downloading Reports

All generated reports appear in the list with a title, report type, and creation date.

- Click the report title or **Download** button to download the file.
- Reports are delivered as **PDF** or **XLSX (spreadsheet)** format depending on the type selected.

---

## Deleting Reports

To remove an outdated or incorrect report:

1. Find the report in the list.
2. Click the **Delete** action (trash icon or row actions menu).
3. Confirm the deletion.

Deleted reports cannot be recovered. Use the wizard to regenerate if needed.

---

## Related Pages

- [Site Data](site-data.md)
- [Gallery](gallery.md)
- [Attachments](attachments.md)
