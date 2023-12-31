#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

if ! [[ -v CI ]]; then
    npx lightdash preview
fi
npx lightdash deploy
