#!/bin/bash
# sync.sh — sync sector research output between local workspace and repo
SECTORS_DIR="$HOME/Claude/Code/2026 Master Investment Workflow/Sectors"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
ACTION="${1:-push}"
SECTOR="$2"

if [ -z "$SECTOR" ]; then
    echo "Usage: ./sync.sh [push|pull] <Sector_Slug>"
    echo "Example: ./sync.sh push India_Telecom"
    exit 1
fi

if [ "$ACTION" = "push" ]; then
    if [ ! -d "$SECTORS_DIR/$SECTOR" ]; then
        echo "Error: $SECTORS_DIR/$SECTOR not found"
        exit 1
    fi
    echo "Pushing: $SECTOR → repo"
    mkdir -p "$REPO_DIR/$SECTOR"
    rsync -av --delete \
        --exclude='_working/' \
        "$SECTORS_DIR/$SECTOR/" "$REPO_DIR/$SECTOR/"
    cd "$REPO_DIR"
    git add "$SECTOR/"
    if git diff --cached --quiet; then
        echo "No changes to commit."
    else
        git commit -m "Update $SECTOR sector research output"
        git push
        echo "Pushed to GitHub."
    fi
elif [ "$ACTION" = "pull" ]; then
    if [ ! -d "$REPO_DIR/$SECTOR" ]; then
        echo "Error: $SECTOR not found in repo"
        exit 1
    fi
    echo "Pulling: repo → $SECTOR"
    mkdir -p "$SECTORS_DIR/$SECTOR"
    rsync -av "$REPO_DIR/$SECTOR/" "$SECTORS_DIR/$SECTOR/"
    echo "Done. Files installed to $SECTORS_DIR/$SECTOR"
else
    echo "Usage: ./sync.sh [push|pull] <Sector_Slug>"
fi
