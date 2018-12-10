#!/bin/bash

while ! mpc -q 2>/dev/null ; do
    echo "Waiting for mopidy to start"
    sleep 1
done

echo "--Play playlist--"
echo "-----------------"
mpc clear
mpc load radios
mpc replay on
mpc play
