#!/usr/bin/env bash

echo -e "Note: Please search and change '/home/user/lab/path/to/kubeconfig' \n      in vSIM_CNF_CDS_setup.json to the path of your kubernetes cluster config (kube config)"

read -p "Have you set the proper path to your kube config file? (y/n)?" choice
if [ "choice" = "y" ]; then
  newman run vSIM_CNF_CDS_setup.json  --environment ../vSIM_CNF_CDS.postman_environment.json  -k --verbose -r cli
else
  echo "exiting";
fi


n