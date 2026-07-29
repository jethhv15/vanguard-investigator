#!/system/bin/sh

#
# Vanguard Investigator
# Diagnosis Rule Engine
#

diagnosis_rule_match() {

    local source="$1"
    local relation="$2"
    local target="$3"

    case "${source}:${relation}:${target}" in

        *:"influences":"Frame Deadline")

            finding_add \
                "Frame Deadline Risk" \
                "MEDIUM" \
                "$source" \
                "$target"

            ;;

        *:"affects":"Thermal State")

            finding_add \
                "Thermal Influence Detected" \
                "LOW" \
                "$source" \
                "$target"

            ;;

    esac

}

diagnosis_rule_emit() {

    local total
    local i

    total=$(finding_count)

    i=1

    while [ "$i" -le "$total" ]
    do

        echo "[Finding] $(finding_id "$i")"
        echo "Title      : $(finding_title "$i")"
        echo "Severity   : $(finding_severity "$i")"
        echo "Source     : $(finding_source "$i")"
        echo "Target     : $(finding_target "$i")"
        echo "Status     : $(finding_status "$i")"
        echo ""

        i=$((i + 1))

    done

}
