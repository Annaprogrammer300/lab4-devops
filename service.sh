#!/usr/bin/env bash
set -euo pipefail

SERVE_DIR="/opt/lab4-service/html"
cd "$SERVE_DIR"

echo "Starting HTTP server on port 8000"
exec python3 -m http.server 8000
