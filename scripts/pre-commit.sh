#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

npx lightdash dbt run
dbt-osmosis yaml refactor