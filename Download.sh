#!/bin/bash

for i in $(ls Files*)
do
	for j in $(cat $i)
	do
		wget --continue $j
	done &
done

