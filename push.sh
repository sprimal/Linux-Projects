#!/bin/bash

# Get commit message and GitHub repo URL from arguments
COMMIT_MSG="$1"
REPO_URL="$2"

# If either one is missing, show usage
if [ -z "$COMMIT_MSG" ] || [ -z "$REPO_URL" ]; then
  echo "Usage: ./push.sh \"commit message\" https://github.com/yourusername/yourrepo.git"
  exit 1
fi

# Remove existing origin if it exists
if git remote | grep origin > /dev/null; then
  git remote remove origin
fi

# Add new origin
git remote add origin "$REPO_URL"

#  Get current branch name (e.g., main, master, etc.)
BRANCH_NAME="main"

# Add, commit, and push
git add .
git commit -m "$COMMIT_MSG"
git push -u origin "$BRANCH_NAME"



