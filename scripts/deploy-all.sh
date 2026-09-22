#!/usr/bin/env bash
set -euo pipefail

TARGET_ORG="${1:-recipes}"
ALLOWED_SOURCE_ROOTS=(
  "shared"
  "recipes/campaign-notification"
  "recipes/mortgage-pricing"
  "recipes/bulk-trigger-remediation"
  "recipes/register-pdf"
  "recipes/lead-conversion"
  "recipes/multi-currency-invoicing"
)

ARGS=()
for SOURCE_ROOT in "${ALLOWED_SOURCE_ROOTS[@]}"; do
  if [[ -d "$SOURCE_ROOT/main/default" ]]; then
    ARGS+=(--source-dir "$SOURCE_ROOT")
  fi
done

if [[ "${#ARGS[@]}" -eq 0 ]]; then
  echo "No implemented Salesforce metadata found." >&2
  exit 1
fi

sf project deploy start "${ARGS[@]}" --target-org "$TARGET_ORG"
