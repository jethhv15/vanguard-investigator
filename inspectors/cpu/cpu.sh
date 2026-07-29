#!/system/bin/sh

#
# CPU Inspector
#

inspect() {

    local hardware
    local cores

    hardware=$(grep "Hardware" /proc/cpuinfo 2>/dev/null | cut -d':' -f2 | xargs)

    cores=$(ls -d /sys/devices/system/cpu/cpu[0-9]* 2>/dev/null | wc -l)

    echo "[CPU Inspector]"

    echo "Hardware : $hardware"

    echo "Core Count : $cores"

    create_evidence \
        "CPU" \
        "Hardware" \
        "$hardware" \
        "-"

    create_evidence \
        "CPU" \
        "Core Count" \
        "$cores" \
        "cores"

}
