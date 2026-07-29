#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Registry API
#

evidence_registry_count() {

    evidence_model_count

}

evidence_registry_get_subsystem() {

    evidence_model_get_subsystem "$1"

}

evidence_registry_get_metric() {

    evidence_model_get_metric "$1"

}

evidence_registry_get_value() {

    evidence_model_get_value "$1"

}

evidence_registry_get_unit() {

    evidence_model_get_unit "$1"

}
