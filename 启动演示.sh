#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$ROOT_DIR"

echo "正在启动本地演示服务..."
echo "目录: $ROOT_DIR"
echo "端口: $PORT"
echo ""
echo "请在浏览器打开："
echo "- http://localhost:${PORT}/ui-demo.html"
echo "- http://127.0.0.1:${PORT}/ui-demo.html"
echo ""
echo "如果你在远程开发环境，请改用该环境提供的端口转发地址。"
echo "按 Ctrl+C 停止服务。"

python3 -m http.server "$PORT" --bind 0.0.0.0 --directory "$ROOT_DIR"
