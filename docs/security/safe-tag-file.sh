#!/usr/bin/env bash
set -e

REQUIRED_NAME="operator"

ARGS=("$@")

SOURCE=""
DESCRIPTION_SET=false

for ((i=0; i<${#ARGS[@]}; i++)); do
  if [[ "${ARGS[$i]}" == "--source" ]]; then
    SOURCE="${ARGS[$((i+1))]}"
  fi

  if [[ "${ARGS[$i]}" == "--description" ]]; then
    DESCRIPTION_SET=true
  fi
done

if [[ "$SOURCE" != *"$REQUIRED_NAME"* ]]; then
  echo "BLOCKED: --source must include the operator identity."
  exit 1
fi

if [ "$DESCRIPTION_SET" = false ]; then
  ARGS+=(--description "Auto-description: tagging action recorded by secure wrapper")
fi

python ops/tag_file.py "${ARGS[@]}"
