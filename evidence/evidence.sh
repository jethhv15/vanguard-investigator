#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Object
#

create_evidence() {

    local subsystem="$1"
    local metric="$2"
    local value="$3"
    local unit="$4"

    EVIDENCE_SUBSYSTEM="$subsystem"
    EVIDENCE_METRIC="$metric"
    EVIDENCE_VALUE="$value"
    EVIDENCE_UNIT="$unit"

}

evidence_subsystem() {

    echo "$EVIDENCE_SUBSYSTEM"

}

evidence_metric() {

    echo "$EVIDENCE_METRIC"

}

evidence_value() {

    echo "$EVIDENCE_VALUE"

}

evidence_unit() {

    echo "$EVIDENCE_UNIT"

}
