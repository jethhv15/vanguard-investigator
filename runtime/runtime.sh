#!/system/bin/sh

#
# Vanguard Investigator
# Runtime Engine
#

PROJECT_NAME="Vanguard Investigator"
PROJECT_VERSION="0.1.0"

runtime_init() {

    echo ""
    echo "=========================================="
    echo "$PROJECT_NAME"
    echo "Android Performance Inspection Framework"
    echo "Version $PROJECT_VERSION"
    echo "=========================================="
    echo ""

}

runtime_start() {

    echo "[Runtime] Starting Investigation..."

}

runtime_finish() {

    echo "[Runtime] Investigation Finished."

}

runtime_shutdown() {

    echo "[Runtime] Shutdown."

}
