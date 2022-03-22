#!/bin/bash

export windows_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
export HTTPS_PROXY=http://$windows_host:7890
export HTTP_PROXY=http://$windows_host:7890
export ALL_PROXY=http://$windows_host:7890

RESET="\033[0m"
BOLD="\033[1m"
BLUE="\033[34;5;11m"

read -p $'\e[1m\e[31mWhat problem do you want to search?\e[0m: ' problem

/home/xtayex/.cargo/bin/so $problem
