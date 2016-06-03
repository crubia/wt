#!/bin/bash
. ./launch_functions_lan



### Despliegue de Scenario UC
start_container mcu unifiedcom/mcu

read -p "Press [Enter] key to continue..."

create_interface mcu-eth0

start_bridge LAN_BR

bridge_add_interface LAN_BR eth2
bridge_add_interface LAN_BR mcu-eth0
 

read -p "Press [Enter] key to continue..."

sudo ip netns exec mcu ip route del default
sudo ip netns exec mcu ip addr add 192.168.100.207/24 dev eth0
sudo ip netns exec mcu ip route add default via 192.168.100.254
