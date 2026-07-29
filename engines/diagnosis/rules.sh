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

            diagnosis_rule_emit \
                "Frame Deadline Risk" \
                "Medium" \
                "$source" \
                "$target"

            ;;

        *:"affects":"Thermal State")

            diagnosis_rule_emit \
                "Thermal Influence Detected" \
                "Low" \
                "$source" \
                "$target"

            ;;

    esac

}

diagnosis_rule_emit() {

    local finding="$1"
    local severity="$2"
    local source="$3"
    local target="$4"

    echo "[Finding] ${finding}"
    echo "[Severity] ${severity}"
    echo "[Cause] ${source}"
    echo "[Impact] ${target}"
    echo ""

}
