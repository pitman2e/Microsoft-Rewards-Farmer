#!/bin/bash
if [[ -z "$MS_CREDS_USR" ]]; then
    echo -n "Enter your Email Address: ";
    read MS_CREDS_USR;
fi

if [[ -z "$MS_CREDS_PSW" ]]; then
    echo -n "Enter your Password: ";
    read -s MS_CREDS_PSW;
fi

export MS_CREDS_USR=$MS_CREDS_USR;
export MS_CREDS_PSW=$MS_CREDS_PSW;

docker-compose up --build --abort-on-container-exit

export MS_CREDS_USR=;
export MS_CREDS_PSW=;
