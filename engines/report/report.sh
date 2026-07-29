#!/system/bin/sh

#
# Vanguard Investigator
# Report Engine
#

report_init() {

    echo "[Report] Initialized"

}

report_generate() {

    local total
    local i

    total=$(finding_count)

    echo ""
    echo "========================================"
    echo " Vanguard Investigation Report"
    echo "========================================"
    echo ""

    echo "Total Findings : $total"
    echo ""

    i=1

    while [ "$i" -le "$total" ]
    do

        echo "Finding ID : $(finding_id "$i")"
        echo "Title      : $(finding_title "$i")"
        echo "Severity   : $(finding_severity "$i")"
        echo "Source     : $(finding_source "$i")"
        echo "Target     : $(finding_target "$i")"
        echo "Status     : $(finding_status "$i")"

        echo ""

        i=$((i + 1))

    done

    echo "========================================"

}

report_shutdown() {

    echo "[Report] Shutdown"

}
