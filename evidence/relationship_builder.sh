#!/system/bin/sh

#
# Vanguard Investigator
# Relationship Builder
#

relationship_builder_run() {

    local total

    total=$(evidence_registry_count)

    local i=1

    while [ "$i" -lt "$total" ]
    do

        local source_id
        local target_id

        local source_metric
        local target_metric

        local relation

        source_id=$(evidence_registry_get_id "$i")
        target_id=$(evidence_registry_get_id "$((i + 1))")

        source_metric=$(evidence_registry_get_metric "$i")
        target_metric=$(evidence_registry_get_metric "$((i + 1))")

        relation=$(relationship_rule_apply "$source_metric" "$target_metric")

        if [ -n "$relation" ]; then

            evidence_link_add \
                "$source_id" \
                "$relation" \
                "$target_id"

        fi

        i=$((i + 1))

    done

}
