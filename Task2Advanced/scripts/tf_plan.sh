#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -f "${ROOT_DIR}/.env" ]; then
  set -a
  source "${ROOT_DIR}/.env"
  set +a
fi

ENV_NAME="${1:?Usage: ./scripts/tf_plan.sh <dev|stage|prod>}"

"${ROOT_DIR}/scripts/tf_init.sh" "${ENV_NAME}"

cd "${ROOT_DIR}/envs/${ENV_NAME}"

terraform plan   -var-file="terraform.tfvars"   -out="tfplan"
