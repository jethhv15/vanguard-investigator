#!/system/bin/sh

#
# Vanguard Investigator
# Severity Engine
#

severity_calculate() {

    local relation="$1"

    case "$relation" in

        causes)
            echo "CRITICAL"
            ;;

        blocks)
            echo "HIGH"
            ;;

        influences)
            echo "MEDIUM"
            ;;

        affects)
            echo "LOW"
            ;;

        *)
            echo "INFO"
            ;;

    esac

}

severity_compare() {

    local left="$1"
    local right="$2"

    severity_score() {

        case "$1" in
            INFO) echo 1 ;;
            LOW) echo 2 ;;
            MEDIUM) echo 3 ;;
            HIGH) echo 4 ;;
            CRITICAL) echo 5 ;;
            *) echo 0 ;;
        esac

    }

    local left_score
    local right_score

    left_score=$(severity_score "$left")
    right_score=$(severity_score "$right")

    if [ "$left_score" -ge "$right_score" ]; then
        echo "$left"
    else
        echo "$right"
    fi

}
