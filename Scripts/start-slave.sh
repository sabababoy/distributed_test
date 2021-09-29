#!/bin/bash

bash jmeter-properties-set.sh

cd ../apache-jmeter-*/bin
python3 jmeter_properties_set.py

cd ../../Scripts
python3 send-ip-to-master.py $(hostname -i)

cd ../apache-jmeter-*/bin
./jmeter-server