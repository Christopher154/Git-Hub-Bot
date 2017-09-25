#!/bin/bash

if [ ! $1 ]
then
echo "Usage: ./helperScript.sh <#>"
exit -1
fi

if [ -f task$1.sh ]
then
./task$1.sh
else
./task0$1.sh
fi

