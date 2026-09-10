#!/usr/bin/env bash
set -euo pipefail
PORT=${1:-8000}
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Serving $ROOT_DIR on http://localhost:$PORT"
cd "$ROOT_DIR"
python3 -m http.server "$PORT"
