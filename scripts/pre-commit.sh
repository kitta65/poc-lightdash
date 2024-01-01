#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

npx lightdash generate -y --select tag:lightdash
sqlfmt models/**/*.sql
dbt-osmosis yaml refactor