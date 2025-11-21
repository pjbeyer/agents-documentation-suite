#!/opt/homebrew/bin/bash
# write-optimization-report.sh
# Writes optimization analysis to shared location

set -euo pipefail

PROJECT_DIR="$1"
SOURCE="$2"  # "context-system" or "doc-suite"
ANALYSIS_DATA="$3"

REPORT_DIR="$PROJECT_DIR/docs/optimization"
mkdir -p "$REPORT_DIR"

DATE=$(date +"%Y-%m-%d")
REPORT_FILE="$REPORT_DIR/${SOURCE}-analysis-${DATE}.json"

# Write analysis
echo "$ANALYSIS_DATA" > "$REPORT_FILE"

echo "Analysis saved to: $REPORT_FILE"
