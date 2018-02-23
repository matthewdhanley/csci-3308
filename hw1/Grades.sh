#!/bin/bash

full_str=()

while read p; do
  grade1=`echo $p | cut -d " " -f 4`
  grade2=`echo $p | cut -d " " -f 5`
  grade3=`echo $p | cut -d " " -f 6`
  total=$(($grade1+$grade2+$grade3))
  avg=$(($total/3))
  sid=`echo $p | cut -d " " -f 1`
  last_name=`echo $p | cut -d " " -f 3`
  first_name=`echo $p | cut -d " " -f 2`
  full_str+=("$avg [$sid] $last_name, $first_name")
done < $1

for i in "${full_str[@]}"
do
  echo $i
done | sort -k3 -k4

