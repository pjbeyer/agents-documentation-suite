#!/opt/homebrew/bin/bash
# create-optimization-issue.sh
# Creates GitHub issue for AGENTS.md optimization

set -euo pipefail

FILE_PATH="$1"
CURRENT_SIZE="$2"
MAX_SIZE="$3"
RECOMMENDATIONS="$4"

# Calculate metrics
OVER_BY=$((CURRENT_SIZE - MAX_SIZE))
PERCENT_OVER=$(( (OVER_BY * 100) / MAX_SIZE ))

# Current date
DATE=$(date +"%Y-%m-%d")

# Analysis report path
REPO_ROOT=$(git rev-parse --show-toplevel)
ANALYSIS_REPORT="$REPO_ROOT/docs/optimization/agents-md-analysis-$DATE.json"

# Load template (relative to script location for portability)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_PATH="$SCRIPT_DIR/../templates/optimization-issue.md"

if [ ! -f "$TEMPLATE_PATH" ]; then
    echo "Error: Template not found at $TEMPLATE_PATH"
    exit 1
fi

# Substitute variables
ISSUE_BODY=$(cat "$TEMPLATE_PATH" | \
    sed "s|{FILE_PATH}|$FILE_PATH|g" | \
    sed "s/{CURRENT_SIZE}/$CURRENT_SIZE/g" | \
    sed "s/{MAX_SIZE}/$MAX_SIZE/g" | \
    sed "s/{OVER_BY}/$OVER_BY/g" | \
    sed "s/{PERCENT_OVER}/$PERCENT_OVER/g" | \
    sed "s|{RECOMMENDATIONS}|$RECOMMENDATIONS|g" | \
    sed "s|{ANALYSIS_REPORT}|$ANALYSIS_REPORT|g" | \
    sed "s/{DATE}/$DATE/g")

# Extract file name for title
FILE_NAME=$(basename "$FILE_PATH")
FILE_DIR=$(dirname "$FILE_PATH" | xargs basename)

ISSUE_TITLE="Optimize AGENTS.md: $FILE_DIR/$FILE_NAME"

# Create issue
if command -v op &>/dev/null; then
    NEW_ISSUE=$(op plugin run -- gh issue create \
        --title "$ISSUE_TITLE" \
        --body "$ISSUE_BODY" \
        --label "documentation" \
        --label "optimization" \
        --label "auto-generated")
else
    NEW_ISSUE=$(gh issue create \
        --title "$ISSUE_TITLE" \
        --body "$ISSUE_BODY" \
        --label "documentation" \
        --label "optimization" \
        --label "auto-generated")
fi

echo "Created optimization issue: $NEW_ISSUE"
