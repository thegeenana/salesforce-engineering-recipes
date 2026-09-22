#!/usr/bin/env bash
set -euo pipefail

TARGET_ORG="${1:-recipes}"

sf project deploy start \
  --source-dir shared \
  --source-dir recipes/campaign-notification \
  --source-dir recipes/mortgage-pricing \
  --source-dir recipes/bulk-trigger-remediation \
  --source-dir recipes/register-pdf \
  --source-dir recipes/lead-conversion \
  --source-dir recipes/multi-currency-invoicing \
  --target-org "$TARGET_ORG"
