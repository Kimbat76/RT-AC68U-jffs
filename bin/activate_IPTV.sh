#!/bin/sh

# Create VLAN 100 tagged on port 0 and 4
robocfg vlan 100 ports "0t 4t"
# Add the vlan Interface
vconfig add eth0 100

logger "vlan IPTV activé"