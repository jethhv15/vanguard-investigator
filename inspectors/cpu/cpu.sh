#!/system/bin/sh

#
# CPU Inspector
#

inspect() {

    echo "[CPU Inspector]"

    echo ""

    echo "Hardware"

    grep "Hardware" /proc/cpuinfo 2>/dev/null

    echo ""

    echo "Core Count"

    ls -d /sys/devices/system/cpu/cpu[0-9]* 2>/dev/null | wc -l

}
