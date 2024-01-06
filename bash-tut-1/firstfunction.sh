#!/bin/bash

up="before"
since="function"
echo $up
echo $since 

showuptime(){
	local up=$(uptime)
	local since=$(sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//')
	cat << EOF
-----
This machine has been up for ${up}
It has been running since ${since}
-----
EOF
}
showuptime

echo $up
echo $since 