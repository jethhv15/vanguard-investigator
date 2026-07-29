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

        subsystem)
            OBSERVATION_SUBSYSTEM="$value"
            ;;

        metric)
            OBSERVATION_METRIC="$value"
            ;;

        value)
            OBSERVATION_VALUE="$value"
            ;;

        unit)
            OBSERVATION_UNIT="$value"
            ;;

    esac

}

observation_commit() {

    return 0

}

observation_subsystem() {

    echo "$OBSERVATION_SUBSYSTEM"

}

observation_metric() {

    echo "$OBSERVATION_METRIC"

}

observation_value() {

    echo "$OBSERVATION_VALUE"

}

observation_unit() {

    echo "$OBSERVATION_UNIT"

}
