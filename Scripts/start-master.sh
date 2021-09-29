#!/bin/bash

bash jmeter-properties-set.sh
rm jmeter-properties-set.sh
rm send-ip-to-master.py
rm set_ssh
rm start-slave.sh

cd ../apache-jmeter-*/bin
python3 get-ip-from-slave.py

# bash jmeter-properties-set.py