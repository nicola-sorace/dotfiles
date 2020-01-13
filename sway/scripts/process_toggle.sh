#!/bin/bash

echo $CMD

if [[ "$1" =~ ^--.* ]] ; then
	option=$1
	echo "option"
	shift
fi

CMD=$@

if ! pkill -xf "$CMD" || [ "$option" == "--restart" ] ; then

	$CMD & disown

fi
