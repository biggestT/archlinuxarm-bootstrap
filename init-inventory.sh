#! /bin/bash

read -p "Your raspberrys IP adress on the LAN: " IP

printf '[raspberry]\n'$IP'\n' > hosts.yml
