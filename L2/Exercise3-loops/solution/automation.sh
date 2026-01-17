#!/bin/bash
# Move error files into a separate directory
mkdir -p outputs/errors
for file in outputs/*; do
  if [[ $(basename "$file") == error_* ]]; then
    mv "$file" outputs/errors/
  fi
done
