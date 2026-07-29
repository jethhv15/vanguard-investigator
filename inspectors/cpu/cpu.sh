#!/system/bin/sh

#
# Vanguard Investigator
# CPU Inspector
#

inspector_metadata() {

    echo "[CPU Inspector]"
    echo "Subsystem : CPU"

}

inspector_init() {

    echo "[CPU Inspector] Initializing"

}

inspect() {

    local hardware
    local cores

    hardware=$(grep "Hardware" /proc/cpuinfo 2>/dev/null | cut -d':' -f2 | xargs)

    cores=$(ls -d /sys/devices/system/cpu/cpu[0-9]* 2>/dev/null | wc -l)

    echo "Hardware   : $hardware"
    echo "Core Count : $cores"

    observation_begin
    observation_set subsystem "CPU"
    observation_set metric "Hardware"
    observation_set value "$hardware"
    observation_set unit "-"
    observation_commit

    observation_begin
    observation_set subsystem "CPU"
    observation_set metric "Core Count"
    observation_set value "$cores"
    observation_set unit "cores"
    observation_commit

}

inspector_cleanup() {

    echo "[CPU Inspector] Cleanup"

}

inspector_shutdown() {

    echo "[CPU Inspector] Shutdown"

}
