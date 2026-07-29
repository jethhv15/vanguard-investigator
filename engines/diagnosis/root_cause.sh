#!/system/bin/sh

#
# Vanguard Investigator
# Root Cause Engine
#

root_cause_calculate() {

    local source="$1"
    local relation="$2"
    local target="$3"

    case "${source}:${relation}:${target}" in

        cpu.scheduler:*:*)
            echo "CPU Scheduler Contention"
            ;;

        thermal:*:*)
            echo "Thermal Limitation"
            ;;

        binder:*:*)
            echo "Binder Transaction Delay"
            ;;

        memory:*:*)
            echo "Memory Pressure"
            ;;

        renderthread:*:*)
            echo "RenderThread Bottleneck"
            ;;

        surfaceflinger:*:*)
            echo "SurfaceFlinger Synchronization"
            ;;

        frame.timeline:*:*)
            echo "Frame Timeline Stall"
            ;;

        input.pipeline:*:*)
            echo "Input Pipeline Latency"
            ;;

        network:*:*)
            echo "Network Processing Delay"
            ;;

        *)
            echo "Unknown"
            ;;

    esac

}
