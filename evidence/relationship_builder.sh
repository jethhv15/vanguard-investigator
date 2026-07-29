#!/system/bin/sh

#
# Vanguard Investigator
# Relationship Builder
#

relationship_builder_run() {

    local total

    total=$(evidence_registry_count)

    #
    # Temporary sequential relationship.
    # This will evolve into rule-based relationship generation.
    #

    local i=1

    while [ "$i" -lt "$total" ]
    do

        local source
        local target

        source=$(evidence_registry_get_id "$i")
        target=$(evidence_registry_get_id "$((i + 1))")

        evidence_link_add "$source" "precedes" "$target"

        i=$((i + 1))

    done

}
