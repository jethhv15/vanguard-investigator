#!/system/bin/sh

#
# Vanguard Investigator
# Correlation Engine
#

correlation_init() {

    echo "[Correlation] Initialized"

}

correlation_run() {

    local total
    local i

    total=$(evidence_graph_count)

    echo "[Correlation] Graph Nodes : $total"

    i=1

    while [ "$i" -le "$total" ]
    do

        local source
        local relation
        local target

        source=$(evidence_graph_source "$i")
        relation=$(evidence_graph_relation "$i")
        target=$(evidence_graph_target "$i")

        echo "[Correlation] ${source} --(${relation})--> ${target}"

        echo "[Correlation] Traversal"

        evidence_traversal_walk "$source"

        i=$((i + 1))

    done

}

correlation_relationship_count() {

    relationship_registry_count

}

correlation_relationship_source() {

    relationship_registry_source "$1"

}

correlation_relationship_relation() {

    relationship_registry_relation "$1"

}

correlation_relationship_target() {

    relationship_registry_target "$1"

}

correlation_shutdown() {

    echo "[Correlation] Shutdown"

}
