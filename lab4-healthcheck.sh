#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:8000/"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL" 2>/dev/null)

if [ "$HTTP_CODE" = "200" ]; then
    echo "OK - service is healthy (HTTP $HTTP_CODE)"
    exit 0
else
    echo "FAIL - service returned HTTP $HTTP_CODE"
    exit 1
fi
