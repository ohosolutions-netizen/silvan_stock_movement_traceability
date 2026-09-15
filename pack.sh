#!/usr/bin/env bash
# Build the Zoho Creator widget package from the single source file (index.html).
# Usage:  ./pack.sh   -> produces zet-widget/dist/zet-widget.zip
set -euo pipefail
cd "$(dirname "$0")"

# index.html is the single source of truth (also served by Vercel for preview).
cp index.html zet-widget/app/widget.html

cd zet-widget
zet validate
zet pack
echo "Done -> zet-widget/dist/zet-widget.zip"
