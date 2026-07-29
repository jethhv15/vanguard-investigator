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

    total=$(relationship_registry_count)

    echo "[Correlation] Relationships : $total"

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
