#!/system/bin/sh

#
# Vanguard Investigator
# Runtime Pipeline
#

runtime_pipeline_run() {

    validator_init
    correlation_init
    diagnosis_init
    report_init

    echo ""

    #
    # Inspection Phase
    #
    for inspector in $(inspector_registry_list)
    do
        run_inspector "$inspector"
    done

    echo ""

    #
    # Observation → Evidence
    #
    evidence_pipeline_run

    echo ""

    #
    # Validation
    #
    validator_validate

    #
    # Correlation
    #
    # Temporary example relationship.
    # Will be replaced by automatic relationship generation.
    #
    correlation_link "EV-000001" "influences" "EV-000002"

    #
    # Diagnosis
    #
    diagnosis_analyze ""

    #
    # Report
    #
    report_generate

    echo ""

    report_shutdown
    diagnosis_shutdown
    correlation_shutdown
    validator_shutdown

}
