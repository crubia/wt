#!/bin/bash
. ./launch_functions_lan


### Despliegue de Scenario UC
start_container mediamixer mediamixer

read -p "Press [Enter] key to continue..."

create_interface mediamixer-eth0

start_bridge LAN_BR

bridge_add_interface LAN_BR eth2
bridge_add_interface LAN_BR mediamixer-eth0
 

read -p "Press [Enter] key to continue..."

sudo ip netns exec mediamixer ip route del default
sudo ip netns exec mediamixer ip addr add 192.168.100.208/24 dev eth0
sudo ip netns exec mediamixer ip route add default via 192.168.100.254
