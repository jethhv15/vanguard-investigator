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
. "$DIR/session_registry.sh"
. "$DIR/dispatcher.sh"
. "$DIR/inspector_manager.sh"

#
# Evidence
#
. "$DIR/../evidence/model.sh"
. "$DIR/../evidence/evidence.sh"
. "$DIR/../evidence/contract.sh"

#
# Engines
#
. "$DIR/../engines/validator/validator.sh"
. "$DIR/../engines/correlation/correlation.sh"
. "$DIR/../engines/diagnosis/diagnosis.sh"
. "$DIR/../engines/report/report.sh"

evidence_model_reset

runtime_init

session_create
session_registry_start

runtime_start

echo "[Session Registry] ID      : $(session_registry_id)"
echo "[Session Registry] Status  : $(session_registry_status)"
echo "[Session Registry] Started : $(session_registry_start_time)"

echo ""

validator_init
correlation_init
diagnosis_init
report_init

echo ""

run_inspector cpu

echo ""

validator_validate

correlation_link "CPU" "Scheduler"

diagnosis_analyze ""

report_generate

echo ""

report_shutdown
diagnosis_shutdown
correlation_shutdown
validator_shutdown

session_registry_finish

echo "[Session Registry] Finished : $(session_registry_end_time)"
echo "[Session Registry] Status   : $(session_registry_status)"

runtime_finish

runtime_shutdown
