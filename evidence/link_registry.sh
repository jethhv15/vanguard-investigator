#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Relationship Registry
#

relationship_registry_count() {

    evidence_link_count

}

relationship_registry_source() {

    evidence_link_source "$1"

}

relationship_registry_relation() {

    evidence_link_relation "$1"

}

relationship_registry_target() {

    evidence_link_target "$1"

}
