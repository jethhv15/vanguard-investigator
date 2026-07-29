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

    total=$(evidence_count)

    if [ "$total" -eq 0 ]; then

        echo "[Validator] No Evidence"

        return 1

    fi

    local i=1

    while [ "$i" -le "$total" ]
    do

        echo "[Validator] Validate: $(evidence_subsystem "$i") / $(evidence_metric "$i")"

        i=$((i + 1))

    done

    echo "[Validator] Validation Complete"

}

validator_shutdown() {

    echo "[Validator] Shutdown"

}
