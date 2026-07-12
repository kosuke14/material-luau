#!/bin/bash
# Build script for MaterialRoblox
# Usage: ./scripts/build.sh

set -e

ROJO=${ROJO:-rojo}

echo "Building MaterialRoblox.rbxm..."
$ROJO build default.project.json -o MaterialRoblox.rbxm
echo "Built: MaterialRoblox.rbxm"

echo "Building MaterialRoblox-dev.rbxl (for Studio testing)..."
$ROJO build dev.project.json -o MaterialRoblox-dev.rbxl
echo "Built: MaterialRoblox-dev.rbxl"
