#!/system/bin/sh

#
# Vanguard Investigator
# Report Export Engine
#

report_export() {

    echo ""
    echo "=========================================="
    echo " Vanguard Investigation Report"
    echo "=========================================="

    report_session
    report_findings
    report_summary

    echo "=========================================="

}
