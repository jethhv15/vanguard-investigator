#!/system/bin/sh

#
# Vanguard Investigator
# Correlation Engine
#

correlation_init() {

    echo "[Correlation] Initialized"

}

correlation_link() {

    local source="$1"
    local relation="$2"
    local target="$3"

    evidence_link_add "$source" "$relation" "$target"

    echo "[Correlation] $source --($relation)--> $target"

}

correlation_shutdown() {

    echo "[Correlation] Shutdown"

}
