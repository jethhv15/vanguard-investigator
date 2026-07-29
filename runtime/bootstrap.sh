#!/system/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"

. "$DIR/runtime.sh"
. "$DIR/session.sh"
. "$DIR/dispatcher.sh"
. "$DIR/inspector_manager.sh"
. "$DIR/../engines/validator/validator.sh"

runtime_init

session_create

runtime_start

validator_init

echo ""

run_inspector cpu

echo ""

validator_validate "CPU Evidence"

echo ""

validator_shutdown

runtime_finish

runtime_shutdown
