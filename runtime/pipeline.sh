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

    for inspector in $(inspector_registry_list)
    do
        run_inspector "$inspector"
        echo ""
    done

    validator_validate

    correlation_link "CPU" "Scheduler"

    diagnosis_analyze ""

    report_generate

    echo ""

    report_shutdown
    diagnosis_shutdown
    correlation_shutdown
    validator_shutdown

}
