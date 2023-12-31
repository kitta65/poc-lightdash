#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

npx lightdash generate
dbt-osmosis yaml refactor