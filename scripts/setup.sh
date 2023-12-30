#!/bin/bash
set -euo pipefail
cd $(dirname $0)/.. # project root

# dbt
rm -rf venv
python -m venv venv
source ./venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
deactivate

# lightdash
npm install -g @lightdash/cli
