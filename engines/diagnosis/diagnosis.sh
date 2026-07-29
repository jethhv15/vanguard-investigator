#!/system/bin/sh

#
# Vanguard Investigator
# Diagnosis Engine
#

diagnosis_init() {

    echo "[Diagnosis] Initialized"

}

diagnosis_analyze() {

    local total
    local i

    total=$(evidence_graph_count)

    echo "[Diagnosis] Analyzing Evidence Graph..."

    i=1

    while [ "$i" -le "$total" ]
    do

        local source
        local relation
        local target

        source=$(evidence_graph_source "$i")
        relation=$(evidence_graph_relation "$i")
        target=$(evidence_graph_target "$i")

        diagnosis_rule_match \
            "$source" \
            "$relation" \
            "$target"

        i=$((i + 1))

    done

    echo "[Diagnosis] Analysis Complete"

}

diagnosis_shutdown() {

    echo "[Diagnosis] Shutdown"

}
