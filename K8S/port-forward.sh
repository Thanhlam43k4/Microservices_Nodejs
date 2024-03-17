#!/bin/bash

while true; do
    kubectl port-forward service/frontend-svc 3000:80
    PID=$!
    wait $PID
    sleep1

done