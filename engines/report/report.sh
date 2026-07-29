#!/system/bin/sh

#
# Vanguard Investigator
# Report Engine
#

report_session() {

    echo ""
    echo "[SESSION]"

    echo "ID        : $(session_registry_id)"
    echo "STATUS    : $(session_registry_status)"
    echo "STARTED   : $(session_registry_start_time)"
    echo "FINISHED  : $(session_registry_end_time)"

}

report_findings() {

    echo ""
    echo "[FINDINGS]"

    local total
    local i

    total=$(finding_count)

    if [ "$total" -eq 0 ]; then
        echo "No Findings."
        return
    fi

    i=1

    while [ "$i" -le "$total" ]
    do

        echo ""
        echo "Finding     : $(finding_id "$i")"
        echo "Title       : $(finding_title "$i")"
        echo "Severity    : $(finding_severity "$i")"
        echo "Confidence  : $(finding_confidence "$i")%"
        echo "Root Cause  : $(finding_root_cause "$i")"
        echo "Source      : $(finding_source "$i")"
        echo "Target      : $(finding_target "$i")"
        echo "Status      : $(finding_status "$i")"

        i=$((i + 1))

    done

}

report_summary() {

    echo ""
    echo "[SUMMARY]"

    echo "Total Findings : $(finding_count)"

}
