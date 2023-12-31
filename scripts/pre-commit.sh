#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

sqlfmt models/**/*.sql
npx lightdash generate -y
dbt-osmosis yaml refactor