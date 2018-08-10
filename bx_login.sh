#!/bin/sh

if [ -z $CF_ORG ]; then
  API_ENDPOINT="$IBMCLOUD_API_ENDPOINT"
fi
if [ -z $CF_SPACE ]; then
  API_KEY="$IBMCLOUD_APIKEY"
fi


echo "ibmcloud login -a $CF_TARGET_URL"
ibmcloud login -a "$API_ENDPOINT" --apikey "$APIKEY"
if [ $? -ne 0 ]; then
  echo "Failed to authenticate to Bluemix"
  exit 1
fi

# Init container clusters
echo "bx cs init"
bx cs init
if [ $? -ne 0 ]; then
  echo "Failed to initialize to Bluemix Container Service"
  exit 1
fi
