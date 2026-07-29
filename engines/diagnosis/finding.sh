#!/system/bin/sh

#
# Vanguard Investigator
# Finding Model
#

FINDING_COUNT=0

finding_reset() {

    FINDING_COUNT=0

}

finding_add() {

    local title="$1"
    local severity="$2"
    local confidence="$3"
    local root_cause="$4"
    local source="$5"
    local target="$6"

    FINDING_COUNT=$((FINDING_COUNT + 1))

    local id

    id=$(printf "FND-%06d" "$FINDING_COUNT")

    eval "FINDING_${FINDING_COUNT}_ID=\"$id\""
    eval "FINDING_${FINDING_COUNT}_TITLE=\"$title\""
    eval "FINDING_${FINDING_COUNT}_SEVERITY=\"$severity\""
    eval "FINDING_${FINDING_COUNT}_CONFIDENCE=\"$confidence\""
    eval "FINDING_${FINDING_COUNT}_ROOT_CAUSE=\"$root_cause\""
    eval "FINDING_${FINDING_COUNT}_SOURCE=\"$source\""
    eval "FINDING_${FINDING_COUNT}_TARGET=\"$target\""
    eval "FINDING_${FINDING_COUNT}_STATUS=\"OPEN\""
    eval "FINDING_${FINDING_COUNT}_TIMESTAMP=\"$(date '+%Y-%m-%d %H:%M:%S')\""

}

finding_count() {

    echo "$FINDING_COUNT"

}

finding_id() {

    eval "echo \${FINDING_${1}_ID}"

}

finding_title() {

    eval "echo \${FINDING_${1}_TITLE}"

}

finding_severity() {

    eval "echo \${FINDING_${1}_SEVERITY}"

}

finding_confidence() {

    eval "echo \${FINDING_${1}_CONFIDENCE}"

}

finding_root_cause() {

    eval "echo \${FINDING_${1}_ROOT_CAUSE}"

}

finding_source() {

    eval "echo \${FINDING_${1}_SOURCE}"

}

finding_target() {

    eval "echo \${FINDING_${1}_TARGET}"

}

finding_status() {

    eval "echo \${FINDING_${1}_STATUS}"

}

finding_timestamp() {

    eval "echo \${FINDING_${1}_TIMESTAMP}"

}
