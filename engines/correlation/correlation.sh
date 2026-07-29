#!/system/bin/sh

#
# Vanguard Investigator
# Correlation Engine
#

correlation_init() {

    echo "[Correlation] Initialized"

}

correlation_link() {

    local source_id="$1"
    local relation="$2"
    local target_id="$3"

    evidence_link_add "$source_id" "$relation" "$target_id"

    echo "[Correlation] ${source_id} --(${relation})--> ${target_id}"

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
