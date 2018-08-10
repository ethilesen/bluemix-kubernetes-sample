#!/bin/bash
# Creator: Espen Thilesen, IBM GBS August 2018

echo "Download IBMCloud CLI"
curl -sL https://ibm.biz/idt-installer | bash

echo $PATH
echo 'testing cli '
bx -v
ic=$(ibmcloud -v)
icp=$(ibmcloud plugin list)
kctl=$(kubectl version)
echo $ic $icp $kctl
