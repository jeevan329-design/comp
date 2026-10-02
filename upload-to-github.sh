#!/usr/bin/env bash
# Usage: ./upload-to-github.sh https://github.com/YOUR-NAME/my-community.git
set -e
URL="${1:-}"
[ -z "$URL" ] && read -rp "Paste your empty GitHub repo URL: " URL
[ -d .git ] || git init
git add -A
git commit -m "My Community: initial upload" || true
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$URL"
git push -u origin main
echo "Done! Now enable Pages: Settings > Pages > Source: GitHub Actions"
