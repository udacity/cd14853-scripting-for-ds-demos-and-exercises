#!/usr/bin/env bash
set -euo pipefail

# Main entrypoint
APP_NAME="${APP_NAME:-enterprise_project}"
LOG_LEVEL="${LOG_LEVEL:-info}"

echo "Starting ${APP_NAME} with log level ${LOG_LEVEL}"
