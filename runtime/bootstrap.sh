#!/system/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"

. "$DIR/runtime.sh"
. "$DIR/session.sh"
. "$DIR/dispatcher.sh"
. "$DIR/inspector_manager.sh"

runtime_init

session_create

runtime_start

echo ""

run_inspector cpu

echo ""

runtime_finish

runtime_shutdown
