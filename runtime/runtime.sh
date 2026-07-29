#!/system/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"

. "$DIR/runtime.sh"
. "$DIR/session.sh"
. "$DIR/dispatcher.sh"
. "$DIR/inspector_manager.sh"

. "$DIR/../engines/validator/validator.sh"
. "$DIR/../engines/correlation/correlation.sh"

runtime_init

session_create

runtime_start

validator_init
correlation_init

echo ""

run_inspector cpu

validator_validate "CPU Evidence"

correlation_link "CPU Evidence" "Scheduler Evidence"

echo ""

correlation_shutdown
validator_shutdown

runtime_finish
runtime_shutdown
