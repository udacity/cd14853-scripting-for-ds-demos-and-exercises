#!/bin/bash

FILE_PATH=$1

if [ -z "$FILE_PATH" ]; then
  echo "No file provided"
  exit 1
fi

TOTAL_LINES=$(wc -l < "$FILE_PATH")
ERROR_LINES=$(grep ERROR "$FILE_PATH" | wc -l)

echo "Total lines: $TOTAL_LINES"
echo "ERROR lines: $ERROR_LINES"
