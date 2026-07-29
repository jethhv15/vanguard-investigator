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
. "$DIR/../evidence/identity.sh"
. "$DIR/../evidence/registry.sh"
. "$DIR/../evidence/index.sh"
. "$DIR/../evidence/link.sh"
. "$DIR/../evidence/link_registry.sh"
. "$DIR/../evidence/graph.sh"
. "$DIR/../evidence/traversal.sh"
. "$DIR/../evidence/builder.sh"
. "$DIR/../evidence/pipeline.sh"
. "$DIR/../evidence/relationship_builder.sh"
. "$DIR/../evidence/contract.sh"

#
# Rules
#
. "$DIR/../rules/cpu.rules.sh"
. "$DIR/../rules/memory.rules.sh"
. "$DIR/../rules/thermal.rules.sh"
. "$DIR/../rules/display.rules.sh"
. "$DIR/../rules/network.rules.sh"
. "$DIR/../rules/relationship_rules.sh"

#
# Diagnosis
#
. "$DIR/../engines/diagnosis/finding.sh"
. "$DIR/../engines/diagnosis/rules.sh"

#
# Engines
#
. "$DIR/../engines/validator/validator.sh"
. "$DIR/../engines/correlation/correlation.sh"
. "$DIR/../engines/diagnosis/diagnosis.sh"
. "$DIR/../engines/report/report.sh"

#
# Initialize
#
evidence_identity_reset
evidence_model_reset
evidence_graph_reset
finding_reset

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
