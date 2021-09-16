#!/bin/bash

bash Script/jmeter-properties-set.sh

python3 apache-jmeter-*/bin/jmeter-properties-set.py

python3 Scripts/send-ip-to-master.py $(hostname -i)