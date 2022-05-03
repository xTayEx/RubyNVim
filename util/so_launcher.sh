#!/bin/bash

export windows_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
export HTTPS_PROXY=http://$windows_host:7890
export HTTP_PROXY=http://$windows_host:7890
export ALL_PROXY=http://$windows_host:7890

RESET="\033[0m"
BOLD="\033[1m"
BLUE="\033[34;5;11m"

read -p $'\e[1m\e[31mWhat problem do you want to search?\e[0m: ' problem
echo -e "\e[1m\e[31mWhich engine do you want to use? (input 1, 2 or 3)\e[0m"
echo "1) Google (default)"
echo "2) DuckDuckGo"
echo "3) StackExchange"

engine='google'
read n
case $n in
    1) engine='google';;
    2) engine='duckduckgo';;
    3) engine='stackexchange';;
    "") engine='google';;
    *) echo 'invalid option';;
esac
echo $engine

/home/xtayex/.cargo/bin/so $problem -e $engine
