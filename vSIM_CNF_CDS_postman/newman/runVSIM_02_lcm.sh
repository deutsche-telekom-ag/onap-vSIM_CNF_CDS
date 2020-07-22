#!/usr/bin/env bash

if [ "$#" -ne 2  ]
then
    echo -e "Pass your service-name and service-version as cmd line arguments"
    echo -e "e.g. runVSIM_02_lcm.sh myBestService 1.0"
    exit
else
    newman run vSIM_CNF_CDS_lcm.json  --environment ../vSIM_CNF_CDS.postman_environment.json  -k --verbose -r cli --env-var "service-name=$1" --env-var "service-version=$2"
fi

