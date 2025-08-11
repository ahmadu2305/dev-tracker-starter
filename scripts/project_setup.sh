#!/usr/bin/env bash
set -euo pipefail

# USAGE:
#   bash project_setup.sh <OWNER> "Dev Tracker"    # OWNER = your GitHub username or org
# REQUIRES: gh CLI authenticated with a token that has "project" scope.
#   gh auth login --scopes 'project,repo'
# OUTPUTS: project number and ID (save the ID as a repo secret: PROJECT_ID)

OWNER="${1:?GitHub owner (username or org) required}"
TITLE="${2:-Dev Tracker}"

echo "Creating GitHub Project (beta) under $OWNER with title: $TITLE"
PROJECT_JSON=$(gh project create --owner "$OWNER" --title "$TITLE" --format json)
echo "$PROJECT_JSON" | jq .

PROJECT_NUMBER=$(echo "$PROJECT_JSON" | jq -r '.number')
PROJECT_ID=$(echo "$PROJECT_JSON" | jq -r '.id')
echo "PROJECT_NUMBER: $PROJECT_NUMBER"
echo "PROJECT_ID: $PROJECT_ID"

echo "Adding useful fields..."
gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" --name "Priority" --data-type SINGLE_SELECT --options High,Medium,Low >/dev/null
gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" --name "Week" --data-type TEXT >/dev/null

echo "Creating default views..."
# Board view grouped by Status
gh project view "$PROJECT_NUMBER" --owner "$OWNER" --format json >/dev/null

echo "Done. Save PROJECT_ID as a repository secret named PROJECT_ID."
echo "Optionally save GH_PAT_PROJECT (a fine-grained PAT with project scope) if GITHUB_TOKEN lacks permission."
