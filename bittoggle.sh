#!/bin/bash

if [ ! -e /sys/class/gpio/gpio67/value ] 
then
	echo 67 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio67/direction
fi

while [ True ] 
do
	echo 1 > /sys/class/gpio/gpio67/value
	usleep 500000
	echo 0 > /sys/class/gpio/gpio67/value
	usleep 500000
done
