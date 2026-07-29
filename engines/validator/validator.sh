#!/system/bin/sh

#
# Vanguard Investigator
# Validator Engine
#

validator_init() {

    echo "[Validator] Initialized"

}

validator_validate() {

    local total

    total=$(evidence_registry_count)

    if [ "$total" -eq 0 ]; then

        echo "[Validator] No Evidence"

        return 1

    fi

    local i=1

    while [ "$i" -le "$total" ]
    do

        local subsystem
        local metric
        local value
        local unit

        subsystem=$(evidence_registry_get_subsystem "$i")
        metric=$(evidence_registry_get_metric "$i")
        value=$(evidence_registry_get_value "$i")
        unit=$(evidence_registry_get_unit "$i")

        if [ -z "$subsystem" ] ||
           [ -z "$metric" ] ||
           [ -z "$value" ] ||
           [ -z "$unit" ]; then

            echo "[Validator] Invalid Evidence #$i"

            i=$((i + 1))
            continue

        fi

        echo "[Validator] OK : $subsystem / $metric"

        i=$((i + 1))

    done

    echo "[Validator] Validation Complete"

}

validator_shutdown() {

    echo "[Validator] Shutdown"

}
