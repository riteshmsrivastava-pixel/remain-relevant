#!/bin/bash
# Publishes the REMAIN RELEVANT site to GitHub Pages.
# Usage: ./deploy.sh ["optional commit message"]
set -e
cd ~/remain-relevant
git add -A
git commit -q -m "${1:-update}" || { echo "Nothing to deploy."; exit 0; }
git push -q
echo "Deployed → https://riteshmsrivastava-pixel.github.io/remain-relevant/"
