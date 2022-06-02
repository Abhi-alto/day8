#!/bin/bash
declare -A dice
declare -A times
times[1]=0
times[2]=0
times[3]=0
times[4]=0
times[5]=0
times[6]=0
while [ $ind -lt 60 ]
do
	ran=$(( RANDOM % 6 ))
	a=$(( $ran + 1 ))
	dice[$ind]=$a
	((ind++))

	times[$a]=$(( ${times[a]} + 1))
done
for (( i=1; i<=6; i++))
do
	for (( j=1; j<=5; j++ ))
	do
		p=$(( $j + 1 ))
		if [ ${times[j]}>=${times[$p]} ]
		then
			k=${times[j]}
			${times[$p}=${times[j]}
			${times[j]}=$k
		fi
	done
done
echo "${times[6]} most"
echo "${times[1]} least"
