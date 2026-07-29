#!/system/bin/sh

#
# Vanguard Investigator
# Session Registry
#

SESSION_ID=""
SESSION_START_TIME=""
SESSION_END_TIME=""
SESSION_STATUS=""

session_registry_start() {

    SESSION_ID=$(date +%s)

    SESSION_START_TIME=$(date)

    SESSION_STATUS="RUNNING"

}

session_registry_finish() {

    SESSION_END_TIME=$(date)

    SESSION_STATUS="FINISHED"

}

session_registry_id() {

    echo "$SESSION_ID"

}

session_registry_status() {

    echo "$SESSION_STATUS"

}

session_registry_start_time() {

    echo "$SESSION_START_TIME"

}

session_registry_end_time() {

    echo "$SESSION_END_TIME"

}
