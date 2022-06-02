#!/bin/bash
declare -A name
for((indi=1;indi<=50;indi++))
do
	i=$(( RANDOM % 12 + 1 ))
	name[$i]="${indi}"
done
for a in ${!name[@]}
do
	echo " month - $a"
	for indi in ${name[$a]}
	do
			echo -n "$indi "
	done
	echo " "
done
