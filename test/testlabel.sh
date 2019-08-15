#!/bin/bash

# https://github.com/aheil/EIP-PlantUML/issues/29 
# Missing spaces in decalration might cause rendering issues (variable content not rendered) in v 1.2019.8 
# when label declaration follows a line break \r_label 
# This test script returns 0 when no issues are detected, 1 otherwise

Red=$'\e[1;31m'
Green=$'\e[1;32m'
Clear=$'\e[0m'

count=$(grep 'r_label' -c ../EIP_Elements.puml)

if [ "$count" -eq "0" ] ; then
    echo "$Green PASSED:$Clear No issues detected."
    exit 0
else
    echo "$Red FAILED:$Clear Issues detected"
    grep 'r_label' -n ../EIP_Elements.puml
    exit 1
fi