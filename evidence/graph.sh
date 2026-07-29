#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Graph Engine
#

EVIDENCE_GRAPH_COUNT=0

evidence_graph_reset() {

    EVIDENCE_GRAPH_COUNT=0

}

evidence_graph_add() {

    local source="$1"
    local relation="$2"
    local target="$3"

    EVIDENCE_GRAPH_COUNT=$((EVIDENCE_GRAPH_COUNT + 1))

    local id="$EVIDENCE_GRAPH_COUNT"

    eval "EVIDENCE_GRAPH_${id}_SOURCE=\"$source\""
    eval "EVIDENCE_GRAPH_${id}_RELATION=\"$relation\""
    eval "EVIDENCE_GRAPH_${id}_TARGET=\"$target\""

}

evidence_graph_build() {

    evidence_graph_reset

    local total

    total=$(relationship_registry_count)

    local i=1

    while [ "$i" -le "$total" ]
    do

        evidence_graph_add \
            "$(relationship_registry_source "$i")" \
            "$(relationship_registry_relation "$i")" \
            "$(relationship_registry_target "$i")"

        i=$((i + 1))

    done

}

evidence_graph_count() {

    echo "$EVIDENCE_GRAPH_COUNT"

}

evidence_graph_source() {

    eval "echo \${EVIDENCE_GRAPH_${1}_SOURCE}"

}

evidence_graph_relation() {

    eval "echo \${EVIDENCE_GRAPH_${1}_RELATION}"

}

evidence_graph_target() {

    eval "echo \${EVIDENCE_GRAPH_${1}_TARGET}"

}
