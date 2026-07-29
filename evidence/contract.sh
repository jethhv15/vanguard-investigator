#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Contract
#

EVIDENCE_REQUIRED_FIELDS="
subsystem
metric
value
unit
"

evidence_required_fields() {

    echo "$EVIDENCE_REQUIRED_FIELDS"

}

evidence_has_required_fields() {

    [ -n "$EVIDENCE_SUBSYSTEM" ] || return 1
    [ -n "$EVIDENCE_METRIC" ] || return 1
    [ -n "$EVIDENCE_VALUE" ] || return 1
    [ -n "$EVIDENCE_UNIT" ] || return 1

    return 0

}
