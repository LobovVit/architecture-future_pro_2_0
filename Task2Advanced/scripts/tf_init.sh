#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -f "${ROOT_DIR}/.env" ]; then
  set -a
  source "${ROOT_DIR}/.env"
  set +a
fi

ENV_NAME="${1:?Usage: ./scripts/tf_init.sh <dev|stage|prod>}"

cd "envs/${ENV_NAME}"

terraform init   -reconfigure   -backend-config="../../backend/${ENV_NAME}.hcl"   -backend-config="access_key=${AWS_ACCESS_KEY_ID}"   -backend-config="secret_key=${AWS_SECRET_ACCESS_KEY}"
