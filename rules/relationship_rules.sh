#!/system/bin/sh

#
# Vanguard Investigator
# Relationship Rules Dispatcher
#

relationship_rule_apply() {

    local source="$1"
    local target="$2"

    local relation

    relation=$(cpu_relationship_rule "$source" "$target")

    if [ -n "$relation" ]; then
        echo "$relation"
        return
    fi

    relation=$(memory_relationship_rule "$source" "$target")

    if [ -n "$relation" ]; then
        echo "$relation"
        return
    fi

    relation=$(thermal_relationship_rule "$source" "$target")

    if [ -n "$relation" ]; then
        echo "$relation"
        return
    fi

    relation=$(display_relationship_rule "$source" "$target")

    if [ -n "$relation" ]; then
        echo "$relation"
        return
    fi

    relation=$(network_relationship_rule "$source" "$target")

    if [ -n "$relation" ]; then
        echo "$relation"
        return
    fi

    echo ""

}
