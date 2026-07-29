#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Link Model
#

EVIDENCE_LINK_COUNT=0

evidence_link_add() {

    local source="$1"
    local relation="$2"
    local target="$3"

    EVIDENCE_LINK_COUNT=$((EVIDENCE_LINK_COUNT + 1))

    local id="$EVIDENCE_LINK_COUNT"

    eval "EVIDENCE_LINK_${id}_SOURCE=\"$source\""
    eval "EVIDENCE_LINK_${id}_RELATION=\"$relation\""
    eval "EVIDENCE_LINK_${id}_TARGET=\"$target\""

}

evidence_link_count() {

    echo "$EVIDENCE_LINK_COUNT"

}

evidence_link_source() {

    eval "echo \${EVIDENCE_LINK_${1}_SOURCE}"

}

evidence_link_relation() {

    eval "echo \${EVIDENCE_LINK_${1}_RELATION}"

}

evidence_link_target() {

    eval "echo \${EVIDENCE_LINK_${1}_TARGET}"

}
