#!/bin/bash

#28-3ce
result=$(ls /sys/bus/w1/devices | grep '28-3ce')
first=1

echo "{"
echo "\"data\":["

while IFS= read -r line
do
  if (( "$first" != "1" ))
  then
    echo ,
  fi
  echo -n {"\"{#SENSORID}"\":"\"$line"\"}
  if (( "$first" == "1" ))
  then
    first=0
  fi
done < <(printf '%s\n' "$result")

echo
echo "]"
echo "}"
