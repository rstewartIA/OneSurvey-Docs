#!/usr/bin/env bash
set -euo pipefail

rm -rf docs

create_doc() {
  local file="docs/$1"
  local title="$2"
  mkdir -p "$(dirname "$file")"
  printf '# %s\n' "$title" > "$file"
}

# Home
create_doc index.md "Home"

# Getting Started
create_doc getting-started/index.md "Welcome"
create_doc getting-started/creating-account.md "Creating an Account"
create_doc getting-started/logging-in.md "Logging In"
create_doc getting-started/dashboard-tour.md "Dashboard Tour"

# Projects
create_doc projects/index.md "Overview"
create_doc projects/create-project.md "Create a Project"
create_doc projects/project-detail.md "Project Detail"
create_doc projects/project-albums.md "Project Albums"
create_doc projects/project-photos.md "Project Photos"
create_doc projects/attachments.md "Attachments"
create_doc projects/gallery.md "Gallery"
create_doc projects/proposals.md "Proposals"
create_doc projects/reports.md "Reports"
create_doc projects/site-data.md "Site Data"
create_doc projects/site-elements.md "Site Elements"
create_doc projects/site-settings.md "Site Settings"
create_doc projects/tasks.md "Tasks"
create_doc projects/tickets.md "Tickets"

# Surveys
create_doc surveys/index.md "Overview"
create_doc surveys/start-survey.md "Start a Survey"
create_doc surveys/upload-floor-plan.md "Upload a Floor Plan"
create_doc surveys/survey-settings.md "Survey Settings"
create_doc surveys/canvas-basics.md "Canvas Basics"
create_doc surveys/drag-and-drop.md "Drag & Drop Elements"
create_doc surveys/visibility-filters.md "Visibility Filters"
create_doc surveys/version-history.md "Version History"
create_doc surveys/design.md "Design & Labels"
create_doc surveys/color-styling.md "Color & Styling"
create_doc surveys/element-information.md "Element Information & Metadata"
create_doc surveys/link-photos.md "Link Photos & Files"
create_doc surveys/installation-access.md "Installation Access Notes"
create_doc surveys/quality-check.md "Quality Check"

# Media & Documentation
create_doc media/onesnap.md "OneSnap"
create_doc media/project-album-detail.md "Project Album Detail"
create_doc media/project-photos.md "Project Photos"

# Organization & Users
create_doc organization/index.md "Organization Settings"
create_doc organization/clients.md "Clients"
create_doc organization/users.md "Users & Roles"

# Support & Resources
create_doc support/tickets.md "Tickets"
create_doc support/faq.md "FAQ"
create_doc support/glossary.md "Glossary"
