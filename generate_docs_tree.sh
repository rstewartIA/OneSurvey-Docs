#!/usr/bin/env bash
set -euo pipefail

create_doc() {
  local file="docs/$1"
  local title="$2"
  mkdir -p "$(dirname "$file")"
  printf '# %s\n' "$title" > "$file"
}

create_doc index.md "Home"

create_doc getting-started/index.md "Welcome"
create_doc getting-started/creating-account.md "Creating an Account"
create_doc getting-started/logging-in.md "Logging In"
create_doc getting-started/dashboard-tour.md "Dashboard Tour"

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

create_doc surveys/index.md "Overview"
create_doc surveys/start-survey.md "Start a Survey"
create_doc surveys/upload-floor-plan.md "Upload a Floor Plan"
create_doc surveys/canvas.md "Canvas & Floor Plans"
create_doc surveys/elements.md "Elements & Metadata"
create_doc surveys/quality-check.md "Quality Check"

create_doc onesnap/index.md "Overview"
create_doc onesnap/gallery.md "Gallery"
create_doc onesnap/albums.md "Albums"
create_doc onesnap/map.md "Map"
create_doc onesnap/reports.md "Reports"
create_doc onesnap/archive.md "Archive"
create_doc onesnap/participant.md "Participant"
create_doc onesnap/floor-plan-builder.md "Floor Plan Builder"

create_doc organization/index.md "Organization Settings"
create_doc organization/clients.md "Clients"
create_doc organization/users.md "Users & Roles"

create_doc support/tickets.md "Tickets"
create_doc support/faq.md "FAQ"
create_doc support/glossary.md "Glossary"
