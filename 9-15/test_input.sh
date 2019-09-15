#!/bin/bash

echo "input para num is $#"
i=0
while [ $i -le $# ]
do
	echo "input $i : $1"
	shift
	let i++
done
