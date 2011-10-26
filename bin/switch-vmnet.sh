#!/bin/sh

INTERFACE=eth1
INTERFACE=$@

if [ "$INTERFACE" = '' ]; then
	echo "missing interface. try with eth0?"
	exit -1;
fi

echo $INTERFACE
echo vmnet-bridge -n 0 -i $INTERFACE -d /var/run/vmnet-bridge-0.pid -1vmnet0
