#!/system/bin/sh

#
# Bootstrap
#

DIR="$(cd "$(dirname "$0")" && pwd)"

. "$DIR/runtime.sh"
. "$DIR/session.sh"
. "$DIR/dispatcher.sh"

runtime_init

session_create

runtime_start

echo ""

echo "[Bootstrap] Ready."

echo ""

runtime_finish

runtime_shutdown
