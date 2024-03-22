#!/bin/bash
echo "This Tool Is Developed By Hamza Javed For Linux"
echo "Enter The Service Which You Want to Check Install or not"
read Service_name
command=$(which $Service_name)
status=$?
if [[ $status -eq 0 ]]; then
    echo "$Service_name is installed in this Linux system"
    echo "The Service Version is: $($Service_name -v)"
else
    echo "$Service_name is not installed"
fi

