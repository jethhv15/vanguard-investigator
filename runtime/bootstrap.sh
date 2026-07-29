#!/system/bin/sh

#
# Vanguard Investigator
# Bootstrap
#

DIR="$(cd "$(dirname "$0")" && pwd)"

#
# Runtime
#
. "$DIR/runtime.sh"
. "$DIR/session.sh"
. "$DIR/dispatcher.sh"
. "$DIR/inspector_manager.sh"

#
# Engines
#
. "$DIR/../engines/validator/validator.sh"
. "$DIR/../engines/correlation/correlation.sh"
. "$DIR/../engines/diagnosis/diagnosis.sh"

runtime_init

session_create

runtime_start

validator_init
correlation_init
diagnosis_init

echo ""

run_inspector cpu

echo ""

validator_validate "CPU Evidence"

correlation_link "CPU Evidence" "Scheduler Evidence"

diagnosis_analyze ""

echo ""

diagnosis_shutdown
correlation_shutdown
validator_shutdown

runtime_finish

runtime_shutdown
