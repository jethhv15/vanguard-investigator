#!/system/bin/sh

#
# Investigation Session
#

SESSION_ID=""
SESSION_TIME=""

session_create() {

    SESSION_ID=$(date +%s)

    SESSION_TIME=$(date)

    echo "[Session] ID : $SESSION_ID"
    echo "[Session] Time : $SESSION_TIME"

}
