#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Model
#

EVIDENCE_COUNT=0

evidence_model_reset() {

    EVIDENCE_COUNT=0

}

evidence_model_create() {

    EVIDENCE_COUNT=$((EVIDENCE_COUNT + 1))

    local id="$EVIDENCE_COUNT"

    eval "EVIDENCE_${id}_SUBSYSTEM=''"
    eval "EVIDENCE_${id}_METRIC=''"
    eval "EVIDENCE_${id}_VALUE=''"
    eval "EVIDENCE_${id}_UNIT=''"

    echo "$id"

}

evidence_model_set() {

    local id="$1"
    local field="$2"
    local value="$3"

    field=$(echo "$field" | tr '[:lower:]' '[:upper:]')

    eval "EVIDENCE_${id}_${field}=\"\$value\""

}

evidence_model_get() {

    local id="$1"
    local field="$2"

    field=$(echo "$field" | tr '[:lower:]' '[:upper:]')

    eval "echo \${EVIDENCE_${id}_${field}}"

}

evidence_model_count() {

    echo "$EVIDENCE_COUNT"

}
