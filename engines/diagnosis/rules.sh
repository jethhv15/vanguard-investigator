#!/system/bin/sh

#
# Vanguard Investigator
# Diagnosis Rule Engine
#

diagnosis_rule_match() {

    local source="$1"
    local relation="$2"
    local target="$3"

    local title=""
    local severity=""
    local confidence=""
    local root_cause=""

    case "${source}:${relation}:${target}" in

        *:"influences":"Frame Deadline")

            title="Frame Deadline Risk"
            ;;

        *:"affects":"Thermal State")

            title="Thermal Influence Detected"
            ;;

        *:"blocks":"Input Pipeline")

            title="Input Pipeline Blocked"
            ;;

        *:"causes":"Frame Drop")

            title="Frame Drop Detected"
            ;;

        *)

            return
            ;;

    esac

    severity=$(severity_calculate "$relation")
    confidence=$(confidence_calculate "$relation")
    root_cause=$(root_cause_calculate "$source" "$relation" "$target")

    finding_add \
        "$title" \
        "$severity" \
        "$confidence" \
        "$root_cause" \
        "$source" \
        "$target"

}

diagnosis_rule_emit() {

    local total
    local i

    total=$(finding_count)

    i=1

    while [ "$i" -le "$total" ]
    do

        echo "[Finding] $(finding_id "$i")"
        echo "Title       : $(finding_title "$i")"
        echo "Severity    : $(finding_severity "$i")"
        echo "Confidence  : $(finding_confidence "$i")%"
        echo "Level       : $(confidence_level "$(finding_confidence "$i")")"
        echo "Root Cause  : $(finding_root_cause "$i")"
        echo "Source      : $(finding_source "$i")"
        echo "Target      : $(finding_target "$i")"
        echo "Status      : $(finding_status "$i")"
        echo ""

        i=$((i + 1))

    done

}
