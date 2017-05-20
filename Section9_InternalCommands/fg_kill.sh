#!/usr/local/bin/bash

echo "Waiting for 5 seconds"

sleep 5 &

wait

times #suspend the execution of the script until all background processes are finished

echo "done"
