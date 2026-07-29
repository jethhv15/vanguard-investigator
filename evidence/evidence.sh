#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Builder API
#

EVIDENCE_COUNT=0

evidence_begin() {

    EVIDENCE_SUBSYSTEM=""
    EVIDENCE_METRIC=""
    EVIDENCE_VALUE=""
    EVIDENCE_UNIT=""

}

evidence_set() {

    local key="$1"
    local value="$2"

    case "$key" in

        subsystem)
            EVIDENCE_SUBSYSTEM="$value"
            ;;

        metric)
            EVIDENCE_METRIC="$value"
            ;;

        value)
            EVIDENCE_VALUE="$value"
            ;;

        unit)
            EVIDENCE_UNIT="$value"
            ;;

    esac

}

evidence_commit() {

    EVIDENCE_COUNT=$((EVIDENCE_COUNT + 1))

    eval "EVIDENCE_${EVIDENCE_COUNT}_SUBSYSTEM=\"\$EVIDENCE_SUBSYSTEM\""
    eval "EVIDENCE_${EVIDENCE_COUNT}_METRIC=\"\$EVIDENCE_METRIC\""
    eval "EVIDENCE_${EVIDENCE_COUNT}_VALUE=\"\$EVIDENCE_VALUE\""
    eval "EVIDENCE_${EVIDENCE_COUNT}_UNIT=\"\$EVIDENCE_UNIT\""

}

evidence_count() {

    echo "$EVIDENCE_COUNT"

}

evidence_subsystem() {

    local index="$1"

    eval "echo \${EVIDENCE_${index}_SUBSYSTEM}"

}

evidence_metric() {

    local index="$1"

    eval "echo \${EVIDENCE_${index}_METRIC}"

}

evidence_value() {

    local index="$1"

    eval "echo \${EVIDENCE_${index}_VALUE}"

}

evidence_unit() {

    local index="$1"

    eval "echo \${EVIDENCE_${index}_UNIT}"

}
