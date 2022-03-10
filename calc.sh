#!/bin/bash
exp1=$(($(cat $1 | sed -E 's/([a-z]|[A-Z]|\s)//g')))
exp2=$(($(cat $2 | sed -E 's/([a-z]|[A-Z]|\s)//g')))
if [ $exp1 -gt $exp2 ]; then
	echo $exp1
else
	echo $exp2
fi
