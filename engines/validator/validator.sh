#!/system/bin/sh

#
# Vanguard Investigator
# Validator Engine
#

validator_init() {

    echo "[Validator] Initialized"

}

validator_validate() {

    local subsystem

    subsystem=$(evidence_subsystem)

    if [ -z "$subsystem" ]; then

        echo "[Validator] Invalid Evidence"

        return 1

    fi

    echo "[Validator] Evidence Accepted"

    return 0

}

validator_shutdown() {

    echo "[Validator] Shutdown"

}
