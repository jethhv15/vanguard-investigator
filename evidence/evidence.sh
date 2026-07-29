#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Foundation
#

EVIDENCE_VERSION="1.0"

create_evidence() {

    local id="$1"
    local subsystem="$2"
    local metric="$3"
    local value="$4"
    local unit="$5"

    echo "{"
    echo "  \"id\":\"$id\","
    echo "  \"subsystem\":\"$subsystem\","
    echo "  \"metric\":\"$metric\","
    echo "  \"value\":\"$value\","
    echo "  \"unit\":\"$unit\""
    echo "}"

}

validate_evidence() {

    echo "[Evidence] Validation Pending"

}

save_evidence() {

    echo "[Evidence] Storage Pending"

}
