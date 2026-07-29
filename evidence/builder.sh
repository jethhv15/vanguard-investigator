#!/system/bin/sh

#
# Vanguard Investigator
# Evidence Builder
#

build_evidence() {

    local subsystem="$1"
    local metric="$2"
    local value="$3"
    local unit="$4"

    cat <<EOF
{
    "subsystem":"$subsystem",
    "metric":"$metric",
    "value":"$value",
    "unit":"$unit"
}
EOF

}
