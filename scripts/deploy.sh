#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

npx lightdash dbt run --select tag:lightdash
npx lightdash deploy
