#!/bin/bash

echo "input para num is $#"
i=0
num=$#
while [ $i -lt $num ]
do
	echo "input $i : $1"
	shift
	let i++
done
