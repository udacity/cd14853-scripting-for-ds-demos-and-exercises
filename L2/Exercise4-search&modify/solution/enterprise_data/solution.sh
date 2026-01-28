#!/bin/bash
set -e

# Create output directory
mkdir -p output

# 1) Normalize text
# Replace spaces with dashes (simple, global replacement)
sed 's/ /-/g' data/asset_inventory.txt > output/asset_inventory_clean.txt

# 2) Keep only ACTIVE rows (plus header)
# First keep header, then keep ACTIVE rows
head -n 1 output/asset_inventory_clean.txt > output/asset_inventory_active.txt
grep ACTIVE output/asset_inventory_clean.txt >> output/asset_inventory_active.txt

# 3) List unique regions (skip header)
echo "Unique regions (ACTIVE):"
sed 1d output/asset_inventory_active.txt \
  | cut -d',' -f3 \
  | sort \
  | uniq

# 4) Count ACTIVE assets per region
echo ""
echo "ACTIVE asset count by region:"
sed 1d output/asset_inventory_active.txt \
  | cut -d',' -f3 \
  | sort \
  | uniq -c