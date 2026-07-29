#!/system/bin/sh

#
# Vanguard Investigator
# CPU Inspector v1
#

CPU_PATH="/sys/devices/system/cpu"

cpu_inspector_init() {

    echo "[CPU] Initializing..."

}

cpu_collect() {

    echo "[CPU] Collecting Evidence"

    echo ""

    echo "Processor"
    cat /proc/cpuinfo | grep "Hardware" | head -n1

    echo ""

    echo "Core Count"
    ls -d ${CPU_PATH}/cpu[0-9]* 2>/dev/null | wc -l

    echo ""

    echo "Online Cores"

    cat ${CPU_PATH}/online 2>/dev/null

}

cpu_cleanup() {

    echo "[CPU] Finished."

}

cpu_inspector_init
cpu_collect
cpu_cleanup
