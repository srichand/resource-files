#!/bin/bash

current=`ioreg -l | grep -i CurrentCapacity | awk ' {print $NF} '`
max=`ioreg -l | grep -i MaxCapacity | awk ' {print $NF} '`
percent=`echo "{$current*100/$max}" | bc`
echo "Batt: $percent%"




