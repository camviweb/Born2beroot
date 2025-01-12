#!/bin/bash

archi=$(uname -a)
cpup=$(grep "physical id" /proc/cpuinfo | wc -l) 
cpuv=$(nproc)
ram_total=$(free -m | awk '$1 == "Mem:" {print $2}')
ram_use=$(free -m | awk '$1 == "Mem:" {print $3}')
ram_percent=$(awk "BEGIN {printf("%.2f", ${ram_use}/${ram_total}*100)}")
disk_total=$(df -BG | grep '^/dev/' | grep -v '/boot$' | awk '{ft += $2} END {print ft}')
disk_use=$(df -BM | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} END {print ut}')
disk_percent=$(awk "BEGIN {print int($disk_use/$disk_total*100)}")
cpul=$(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')
lb=$(who -b | awk '$1 == "system" {print $3 " " $4}')
lvmu=$(if [ $(lsblk | awk '{print $6}' | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
conn=$(ss -Ht state established | wc -l)
ulog=$(users | wc -w)
ip=$(hostname -I)
mac=$(ip link show | grep "ether" | awk '{print $2}')
sudo=$(journalctl _COMM=sudo | grep COMMAND | wc -l)
wall "  #Architecture: $archi
        #CPU physical: $cpup
        #vCPU: $cpuv
        #Memory Usage: $ram_use/${ram_total}MB ($ram_percent%)
        #Disk Usage: $udisk/${fdisk}Gb ($pdisk%)
        #CPU load: $cpul
        #Last boot: $lb
        #LVM use: $lvmu
        #Connections TCP: $conn ESTABLISHED
        #User log: $ulog
        #Network: IP $ip ($mac)
        #Sudo: $sudo cmd"
