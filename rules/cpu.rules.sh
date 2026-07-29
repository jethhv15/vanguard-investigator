#!/system/bin/sh

#
# Vanguard Investigator
# CPU Knowledge Base
#

cpu_relationship_rule() {

    local source="$1"
    local target="$2"

    case "${source}:${target}" in

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
