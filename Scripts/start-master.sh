#!/bin/bash

bash jmeter-properties-set.sh
rm jmeter-properties-set.sh
rm send-ip-to-master.py
rm set_ssh
rm start-slave.sh

mkdir ../logs

cd ../apache-jmeter-*/bin
mkdir Scripts
mkdir test-script
python3 get-ip-from-slave.py & python3 ../../Scripts/check_script.py &

# bash jmeter-properties-set.py