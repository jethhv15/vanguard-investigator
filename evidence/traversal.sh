#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Traversal Engine
#

evidence_traversal_find_next() {

    local current="$1"

    local total
    local i

    total=$(evidence_graph_count)

    i=1

    while [ "$i" -le "$total" ]
    do

        local source

        source=$(evidence_graph_source "$i")

        if [ "$source" = "$current" ]; then

            evidence_graph_target "$i"
            return

        fi

        i=$((i + 1))

    done

    echo ""

}

evidence_traversal_walk() {

    local current="$1"

    while [ -n "$current" ]
    do

        echo "$current"

        current=$(evidence_traversal_find_next "$current")

    done

}
