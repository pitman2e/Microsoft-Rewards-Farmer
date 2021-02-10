#!/bin/bash
source env/bin/activate

echo -n "Enter your Email Address: ";
read EMAIL;
echo -n "Enter your Password: ";
read -s PASSWORD;

export EMAIL=$EMAIL;
export PASSWORD=$PASSWORD;

python3 ms_rewards_farmer.py

export EMAIL=;
export PASSWORD=;
