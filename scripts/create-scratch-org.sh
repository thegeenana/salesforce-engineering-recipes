#!/usr/bin/env bash
set -euo pipefail

ORG_ALIAS="${1:-recipes}"

sf org create scratch \
  --definition-file config/project-scratch-def.json \
  --alias "$ORG_ALIAS" \
  --duration-days 7 \
  --set-default
