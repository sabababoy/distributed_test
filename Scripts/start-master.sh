#!/bin/bash

bash Script/jmeter-properties-set.sh

python3 apache-jmeter-*/bin/get-ip-from-slave.py

# bash jmeter-properties-set.py