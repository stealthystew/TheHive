#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
HOST="${HOST:-127.0.0.1}"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Error: python3 is required but not installed." >&2
  exit 1
fi

if ! [[ "$PORT" =~ ^[0-9]+$ ]] || [ "$PORT" -lt 1 ] || [ "$PORT" -gt 65535 ]; then
  echo "Error: port must be a number between 1 and 65535." >&2
  exit 1
fi

echo "Starting Dundas Valley Pools site..."
echo "URL: http://${HOST}:${PORT}"
echo "Press Ctrl+C to stop."

exec python3 -m http.server "$PORT" --bind "$HOST"
