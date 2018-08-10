#!/bin/bash
# Creator: Espen Thilesen, IBM GBS August 2018

echo "Download IBMCloud CLI"
sudo curl -sL https://ibm.biz/idt-installer install | bash
find / -name ibmcloud -print
echo $PATH
ls -l /usr/bin
echo 'testing cli '
ibmcloud -v
if [ $? -ne 0 ]; then
  echo "Failed to initialize to IBM Cloud CLI"
  exit 1
fi
kctl=kubectl version
if [ $? -ne 0 ]; then
  echo "Failed to initialize to kubctl CLI"
  exit 1
fi
