#!/bin/bash

# Set a node named k8s-node-1 as unavailable 
# and reschedule all the pods running on it using the following command

kubectl drain k8s-node-1 --ignore-daemonsets --delete-emptydir-data