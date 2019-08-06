#!/bin/bash

typeset pod_status=$(curl -sS 127.0.0.1:8080/actuator/health)

if [[ "${pod_status}" =~ '"UP"' ]]
then
    exit 0
else
    exit 1
fi