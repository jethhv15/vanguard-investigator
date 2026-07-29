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

    evidence_begin

    evidence_set subsystem "CPU"
    evidence_set metric "Hardware"
    evidence_set value "$hardware"
    evidence_set unit "-"

    evidence_commit

    evidence_begin

    evidence_set subsystem "CPU"
    evidence_set metric "Core Count"
    evidence_set value "$cores"
    evidence_set unit "cores"

    evidence_commit

}
