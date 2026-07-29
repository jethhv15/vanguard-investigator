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
. "$DIR/inspector_registry.sh"
. "$DIR/pipeline.sh"

#
# SDK
#
. "$DIR/../sdk/inspector_sdk.sh"

#
# Observation
#
. "$DIR/../observation/observation.sh"
. "$DIR/../observation/queue.sh"

#
# Evidence
#
. "$DIR/../evidence/model.sh"
. "$DIR/../evidence/evidence.sh"
. "$DIR/../evidence/registry.sh"
. "$DIR/../evidence/link.sh"
. "$DIR/../evidence/link_registry.sh"
. "$DIR/../evidence/builder.sh"
. "$DIR/../evidence/pipeline.sh"
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

runtime_pipeline_run

session_registry_finish

echo ""

echo "[Session Registry] Finished : $(session_registry_end_time)"
echo "[Session Registry] Status   : $(session_registry_status)"

runtime_finish

runtime_shutdown
