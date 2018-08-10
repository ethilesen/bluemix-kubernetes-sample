#!/bin/bash
# Creator: Espen Thilesen, IBM GBS August 2018

echo "Download IBMCloud CLI"
curl -sL https://ibm.biz/idt-installer | bash
export PATH="/usr/local/bin/:$PATH"
echo $PATH
echo 'testing cli '
ibmcloud -v
ibmcloud plugin list
