#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Builder
#

build_evidence() {

    evidence_begin

    evidence_set subsystem "$(observation_subsystem)"
    evidence_set metric "$(observation_metric)"
    evidence_set value "$(observation_value)"
    evidence_set unit "$(observation_unit)"

    evidence_commit

}
