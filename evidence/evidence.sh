#!/system/bin/sh

#
# Vanguard Investigator
# Evidence API
#

EVIDENCE_ID=""
EVIDENCE_SUBSYSTEM=""
EVIDENCE_METRIC=""
EVIDENCE_VALUE=""
EVIDENCE_UNIT=""

evidence_begin() {

    EVIDENCE_ID="$(evidence_identity_next)"
    EVIDENCE_SUBSYSTEM=""
    EVIDENCE_METRIC=""
    EVIDENCE_VALUE=""
    EVIDENCE_UNIT=""

}

evidence_set() {

    local key="$1"
    local value="$2"

    case "$key" in
        subsystem) EVIDENCE_SUBSYSTEM="$value" ;;
        metric) EVIDENCE_METRIC="$value" ;;
        value) EVIDENCE_VALUE="$value" ;;
        unit) EVIDENCE_UNIT="$value" ;;
    esac

}

evidence_commit() {

    evidence_model_add \
        "$EVIDENCE_ID" \
        "$EVIDENCE_SUBSYSTEM" \
        "$EVIDENCE_METRIC" \
        "$EVIDENCE_VALUE" \
        "$EVIDENCE_UNIT"

}
