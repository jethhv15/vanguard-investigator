#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Builder API
#

CURRENT_EVIDENCE_ID=""

evidence_begin() {

    CURRENT_EVIDENCE_ID=$(evidence_model_create)

}

evidence_set() {

    local key="$1"
    local value="$2"

    evidence_model_set "$CURRENT_EVIDENCE_ID" "$key" "$value"

}

evidence_commit() {

    return 0

}

evidence_count() {

    evidence_model_count

}

evidence_subsystem() {

    evidence_model_get "$1" subsystem

}

evidence_metric() {

    evidence_model_get "$1" metric

}

evidence_value() {

    evidence_model_get "$1" value

}

evidence_unit() {

    evidence_model_get "$1" unit

}
