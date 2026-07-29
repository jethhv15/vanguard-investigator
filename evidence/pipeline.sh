#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Pipeline
#

evidence_pipeline_run() {

    local total

    total=$(observation_queue_count)

    if [ "$total" -eq 0 ]; then

        echo "[Evidence Pipeline] No Observation"

        return 0

    fi

    local i=1

    while [ "$i" -le "$total" ]
    do

        evidence_begin

        evidence_set subsystem "$(observation_queue_subsystem "$i")"
        evidence_set metric "$(observation_queue_metric "$i")"
        evidence_set value "$(observation_queue_value "$i")"
        evidence_set unit "$(observation_queue_unit "$i")"

        evidence_commit

        echo "[Evidence Pipeline] Observation #$i -> Evidence"

        i=$((i + 1))

    done

}
