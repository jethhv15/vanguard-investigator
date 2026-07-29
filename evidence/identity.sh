#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Identity
#

EVIDENCE_SEQUENCE=0

evidence_identity_next() {

    EVIDENCE_SEQUENCE=$((EVIDENCE_SEQUENCE + 1))

    printf "EV-%06d\n" "$EVIDENCE_SEQUENCE"

}

evidence_identity_reset() {

    EVIDENCE_SEQUENCE=0

}
