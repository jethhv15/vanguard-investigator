#!/system/bin/sh

#
# Vanguard Investigator
# Relationship Rules
#

relationship_rule_apply() {

    local source_metric="$1"
    local target_metric="$2"

    case "${source_metric}:${target_metric}" in

        "Core Count:Online Cores")

            echo "supports"
            return
            ;;

        "CPU Frequency:Thermal State")

            echo "affects"
            return
            ;;

        "Scheduler Latency:Frame Deadline")

            echo "influences"
            return
            ;;

    esac

    echo ""

}
