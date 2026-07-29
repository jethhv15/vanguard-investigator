#!/system/bin/sh

#
# Vanguard Investigator
# Inspector Manager
#

INSPECTOR_DIR="$(dirname "$0")/../inspectors"

load_inspector() {

    local inspector="$1"

    local path="$INSPECTOR_DIR/$inspector/$inspector.sh"

    if [ ! -f "$path" ]; then

        echo "[Inspector] $inspector not found."

        return 1
    fi

    . "$path"

}

run_inspector() {

    local inspector="$1"

    load_inspector "$inspector" || return 1

    inspector_metadata

    inspector_init

    inspect

    inspector_cleanup

    inspector_shutdown

}
