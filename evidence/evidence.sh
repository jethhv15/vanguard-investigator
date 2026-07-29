#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Registry
#

EVIDENCE_COUNT=0

create_evidence() {

    local subsystem="$1"
    local metric="$2"
    local value="$3"
    local unit="$4"

    EVIDENCE_COUNT=$((EVIDENCE_COUNT + 1))

    eval "EVIDENCE_${EVIDENCE_COUNT}_SUBSYSTEM='$subsystem'"
    eval "EVIDENCE_${EVIDENCE_COUNT}_METRIC='$metric'"
    eval "EVIDENCE_${EVIDENCE_COUNT}_VALUE='$value'"
    eval "EVIDENCE_${EVIDENCE_COUNT}_UNIT='$unit'"

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
