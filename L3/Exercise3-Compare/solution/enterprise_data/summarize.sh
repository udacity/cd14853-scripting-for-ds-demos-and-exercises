#!/bin/bash
set -e

files=logs/*.log
files_count=$(ls $files 2>/dev/null | wc -l)

total_lines=0
for f in $files; do
  lines=$(wc -l < "$f")
  total_lines=$((total_lines + lines))
done

error_lines=$(grep -h "ERROR" $files | wc -l)

echo "Files: $files_count"
echo "Total lines: $total_lines"
echo "ERROR lines: $error_lines"
