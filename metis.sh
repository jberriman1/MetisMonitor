#!/bin/bash

DATE=$(date)
TXN=$(curl -s 'http://103.224.119.196:8080/verifier/get/true/1088'  | jq '.verify.index')
echo $DATE $TXN >> metis.txt
tail -10 metis.txt