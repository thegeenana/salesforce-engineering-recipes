#!/usr/bin/env bash
set -euo pipefail

RECIPE_ID="${1:?Usage: test-recipe.sh <recipe-id> [target-org]}"
TARGET_ORG="${2:-recipes}"
DESCRIPTOR="recipes/$RECIPE_ID/recipe.json"

if [[ ! -f "$DESCRIPTOR" ]]; then
  echo "Unknown recipe: $RECIPE_ID" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required to read recipe test classes." >&2
  exit 1
fi

mapfile -t TEST_CLASSES < <(jq -r '.testClasses[]?' "$DESCRIPTOR")

if [[ "${#TEST_CLASSES[@]}" -eq 0 ]]; then
  echo "No test classes declared for $RECIPE_ID." >&2
  exit 1
fi

ARGS=()
for TEST_CLASS in "${TEST_CLASSES[@]}"; do
  ARGS+=(--tests "$TEST_CLASS")
done

sf apex run test "${ARGS[@]}" \
  --target-org "$TARGET_ORG" \
  --wait 20 \
  --result-format human
