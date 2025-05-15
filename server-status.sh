#!/bin/bash

echo "Total CPU Usage"
echo "----------------------------------------------------------------------------------------------------------------------------------"
CPU_IDLE=$(top -bn1 | grep "%Cpu(s)" | awk '{print $8}' | sed 's/,/./')
CPU_USED=$(echo "scale=1; 100 - $CPU_IDLE" | bc)
echo "$CPU_USED%"
echo " "
echo "Total MEM Usage(Free vs Used including percentage)"
echo "----------------------------------------------------------------------------------------------------------------------------------"
MEM_TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
MEM_USED=$(free -m | awk '/^Mem:/ {print $3}')
MEM_PERCENT=$(echo "scale=1; ($MEM_USED / $MEM_TOTAL) * 100" | bc)
echo "Memory Used: $MEM_USED MB / $MEM_TOTAL MB"
echo "Memory Usage: $MEM_PERCENT%"
echo " "
echo "Total disk usage (Free vs Used including percentage)"
echo "----------------------------------------------------------------------------------------------------------------------------------"
DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
DISK_AVAIL=$(df -h / | awk 'NR==2 {print $4}')
DISK_USE_PCT=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage for / :"
echo "Total: $DISK_TOTAL"
echo "Used: $DISK_USED"
echo "Available: $DISK_AVAIL"
echo "Usage Percentage: $DISK_USE_PCT"
echo " "
echo "Top 5 processes by CPU usage"
echo "----------------------------------------------------------------------------------------------------------------------------------"
ps -eo pid,cmd,%cpu --sort=%cpu | head -n 6
echo " "
echo "Top 5 processes by MEM usage"
echo "----------------------------------------------------------------------------------------------------------------------------------"
ps -eo pid,cmd,%mem --sort=%mem | head -n 6
