#!/bin/bash

if [ "Darwin" = `uname` ]; then
    echo "OSX => ipfw"
    sudo ipfw add fwd 127.0.0.1,12345 tcp from me to 10.128.0.0/10
else
    echo "Linux? => iptables"
    sudo iptables -t nat -A OUTPUT -p tcp -d 10.128.0.0/10 -j REDIRECT --to-port 12345
fi

redsocks
