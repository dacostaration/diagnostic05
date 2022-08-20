#!/bin/bash

# Automatically write the CPU and Memory usage to a file

dir="$(pwd)"
# Make log files if necessary -------------
if [ ! -f "${dir}/memcpuusage.log" ]; then
	sudo touch "${dir}/memcpuusage.log";
	sudo chmod 766 "${dir}/memcpuusage.log";
fi

ts="$(date +'%Y-%m-%d %H:%M:%S')"
echo "$ts" > "${dir}/memcpuusage.log"
echo "$(ps -aux >> ${dir}/memcpuusage.log)"

exit 0
