#!/system/bin/sh

#
# Common SDK
#

require_root() {

    if [ "$(id -u)" != "0" ]; then

        echo "Root required."

        exit 1

    fi

}

command_exists() {

    command -v "$1" >/dev/null 2>&1

}
