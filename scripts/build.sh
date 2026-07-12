#!/bin/bash
# Build script for MaterialRoblox
# Usage: ./scripts/build.sh
#
# Prerequisites:
#   - wally install (to fetch dependencies into Packages/)
#   - rojo (in PATH or via aftman)

set -e

ROJO=${ROJO:-rojo}

# Ensure dependencies are installed
if [ ! -d "Packages/_Index" ]; then
    echo "Installing dependencies with wally..."
    wally install
fi

echo "Building MaterialRoblox.rbxm..."
$ROJO build build.project.json -o MaterialRoblox.rbxm
echo "Built: MaterialRoblox.rbxm ($(du -h MaterialRoblox.rbxm | cut -f1))"
echo ""
echo "Usage:"
echo "  1. Insert MaterialRoblox.rbxm into ReplicatedStorage in Studio"
echo "  2. Run 'wally install' to get dependencies (if not already done)"
echo "  3. Require with: require(ReplicatedStorage.MaterialRoblox)"
