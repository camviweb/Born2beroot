#!/bin/bash
archi=$(uname -srvmo)
cpup=$(grep "physical id" /proc/cpuinfo | wc -l) 
cpuv=$(nproc)
ram_tot=$(free -m | awk '$1 == "Mem:" {print $2}')
ram_use=$(free -m | awk '$1 == "Mem:" {print $3}')
ram_per=$(awk "BEGIN {printf \"%.2f\", ($ram_use/$ram_tot)*100}")
disk_tot=$(df -BG --total | grep 'total' | awk '{print $2}')
disk_use=$(df -BG --total | grep 'total' | awk '{print $3}')
disk_per=$(df -BG --total | grep 'total' | awk '{print $5}')
cpu_per=$(echo $[100-$(vmstat 1 2|tail -1|awk '{print $15}')])
lb=$(who -b | awk '{print($3 " " $4)}')
lvmu=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo 'Non'; else echo 'Oui'; fi)
conn=$(ss -Ht state established | wc -l)
ulog=$(users | wc -w)
ip=$(hostname -I)
mac=$(ip link show | grep "ether" | awk '{print $2}')
sudo=$(journalctl _COMM=sudo | grep "COMMAND" | wc -l)
wall "  #Architecture: $archi
        #CPU physical: $cpup
        #vCPU: $cpuv
        #Memory Usage: $ram_use/${ram_tot}MB ($ram_per%)
        #Disk Usage: $disk_use/${disk_tot} ($disk_per)
        #CPU load: $cpu_per%
        #Last boot: $lb
        #LVM use: $lvmu
        #Connections TCP: $conn ESTABLISHED
        #User log: $ulog
        #Network: IP $ip ($mac)
        #Sudo: $sudo cmd"
