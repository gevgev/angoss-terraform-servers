#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "ERROR: missing required parameters:  <instances> "
  echo "|"
  echo "| instances:   1, 2, 0 (= destroy)"
  exit 1
fi

readonly instances=$1

echo $instances

terraform plan -var "instances=$instances"

