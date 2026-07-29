#!/system/bin/sh

#
# Vanguard Investigator
# Observation Queue
#

OBSERVATION_QUEUE_COUNT=0

observation_queue_push() {

    OBSERVATION_QUEUE_COUNT=$((OBSERVATION_QUEUE_COUNT + 1))

    local id="$OBSERVATION_QUEUE_COUNT"

    eval "OBSERVATION_${id}_SUBSYSTEM=\"\$OBSERVATION_SUBSYSTEM\""
    eval "OBSERVATION_${id}_METRIC=\"\$OBSERVATION_METRIC\""
    eval "OBSERVATION_${id}_VALUE=\"\$OBSERVATION_VALUE\""
    eval "OBSERVATION_${id}_UNIT=\"\$OBSERVATION_UNIT\""

}

observation_queue_count() {

    echo "$OBSERVATION_QUEUE_COUNT"

}

observation_queue_subsystem() {

    eval "echo \${OBSERVATION_${1}_SUBSYSTEM}"

}

observation_queue_metric() {

    eval "echo \${OBSERVATION_${1}_METRIC}"

}

observation_queue_value() {

    eval "echo \${OBSERVATION_${1}_VALUE}"

}

observation_queue_unit() {

    eval "echo \${OBSERVATION_${1}_UNIT}"

}
