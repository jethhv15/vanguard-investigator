#!/system/bin/sh

#
# Vanguard Investigator
# Confidence Engine
#

confidence_calculate() {

    local relation="$1"

    case "$relation" in

        causes)

            echo "95"
            ;;

        blocks)

            echo "90"
            ;;

        influences)

            echo "80"
            ;;

        affects)

            echo "70"
            ;;

        supports)

            echo "60"
            ;;

        *)

            echo "50"
            ;;

    esac

}

confidence_level() {

    local score="$1"

    if [ "$score" -ge 90 ]; then

        echo "VERY HIGH"

    elif [ "$score" -ge 80 ]; then

        echo "HIGH"

    elif [ "$score" -ge 70 ]; then

        echo "MEDIUM"

    elif [ "$score" -ge 60 ]; then

        echo "LOW"

    else

        echo "VERY LOW"

    fi

}
