#!/bin/bash
if [[ "$1" == "" ]]; then
  echo "Need path to coffee file"
  exit 1
fi
coffee-to-typescript -cma $1
rm -v *.ts
flow check
