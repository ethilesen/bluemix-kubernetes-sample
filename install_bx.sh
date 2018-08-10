#!/bin/bash
# Creator: Espen Thilesen, IBM GBS August 2018

echo "Download IBMCloud CLI"
curl -sL https://ibm.biz/idt-installer | bash

echo $PATH
echo 'testing cli '
bx -v
ibmcloud -v
ibmcloud plugin list
kubectl version
