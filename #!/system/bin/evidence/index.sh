#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Index
#

#
# ID -> Registry Position
#

evidence_index_build() {

    EVIDENCE_INDEX_COUNT=$(evidence_registry_count)

    local i=1

    while [ "$i" -le "$EVIDENCE_INDEX_COUNT" ]
    do

        local id

        id=$(evidence_registry_get_id "$i")

        eval "EVIDENCE_INDEX_${id}=\"$i\""

        i=$((i + 1))

    done

}

evidence_index_exists() {

    eval "[ -n \"\${EVIDENCE_INDEX_${1}}\" ]"

}

evidence_index_position() {

    eval "echo \${EVIDENCE_INDEX_${1}}"

}
