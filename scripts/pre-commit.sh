#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

sqlfmt models/**/*.sql
dbt-osmosis yaml refactor