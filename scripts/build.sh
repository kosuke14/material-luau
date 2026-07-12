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

echo "Building MaterialRoblox.rbxm (with dependencies)..."
$ROJO build build.project.json -o MaterialRoblox.rbxm
echo "Built: MaterialRoblox.rbxm ($(du -h MaterialRoblox.rbxm | cut -f1))"
echo ""
echo "Usage:"
echo "  Insert MaterialRoblox.rbxm into ReplicatedStorage in Roblox Studio"
echo "  The folder structure matches dev.project.json:"
echo "    ReplicatedStorage/MaterialRoblox/Packages/  (dependencies)"
echo "    ReplicatedStorage/MaterialRoblox/MaterialRoblox/  (module source)"
