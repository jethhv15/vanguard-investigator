#!/system/bin/sh

#
# Vanguard Investigator
# Observation Model
#

OBSERVATION_SUBSYSTEM=""
OBSERVATION_METRIC=""
OBSERVATION_VALUE=""
OBSERVATION_UNIT=""

observation_begin() {

    OBSERVATION_SUBSYSTEM=""
    OBSERVATION_METRIC=""
    OBSERVATION_VALUE=""
    OBSERVATION_UNIT=""

}

observation_set() {

    local key="$1"
    local value="$2"

    case "$key" in

        subsystem) OBSERVATION_SUBSYSTEM="$value" ;;
        metric) OBSERVATION_METRIC="$value" ;;
        value) OBSERVATION_VALUE="$value" ;;
        unit) OBSERVATION_UNIT="$value" ;;
    esac

}

observation_commit() {

    observation_queue_push

}
