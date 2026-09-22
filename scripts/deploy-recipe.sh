#!/usr/bin/env bash
set -euo pipefail

RECIPE_ID="${1:?Usage: deploy-recipe.sh <recipe-id> [target-org]}"
TARGET_ORG="${2:-recipes}"
RECIPE_PATH="recipes/$RECIPE_ID"

if [[ ! -f "$RECIPE_PATH/recipe.json" ]]; then
  echo "Unknown recipe: $RECIPE_ID" >&2
  exit 1
fi

sf project deploy start \
  --source-dir "$RECIPE_PATH" \
  --target-org "$TARGET_ORG"
