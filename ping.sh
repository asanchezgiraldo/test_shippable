#!/bin/bash
COUNTER=0

until(curl --fail $URL/version); do 
	echo "Pinging Homes Version Page...\n";
	sleep 5;
	COUNTER=$(( $COUNTER + 5));
	echo $COUNTER;
	if [ "$COUNTER"==10 ]; then
		echo "Could not ping" >&2
  		exit 1
	fi
done
