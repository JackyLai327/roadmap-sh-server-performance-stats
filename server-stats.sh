clear

width=$(echo $COLUMNS)

echo "Server Stats:"
printf "%${width}s\n" | tr ' ' '-'

echo "System Time: $(date)"
echo "Uptime: $(uptime -p)"

printf "%${width}s\n" | tr ' ' '-'

echo "$(top -bn1 | grep '%Cpu' | cut -d ',' -f 4 | awk '{print "CPU Usage: " 100-$1 "%"}')"

printf "%${width}s\n" | tr ' ' '-'

total_mem=$(top -bn1 | grep "MiB Mem" | cut -d ',' -f 1 | cut -d ':' -f 2 | awk '{print $1}')
free_mem=$(top -bn1 | grep "MiB Mem" | cut -d ',' -f 2 | awk '{print $1}')
used_mem=$(top -bn1 | grep "MiB Mem" | cut -d ',' -f 3 | awk '{print $1}')

free_mem_percent=$(echo "scale=2; $free_mem/$total_mem*100" | bc)
used_mem_percent=$(echo "scale=2; $used_mem/$total_mem*100" | bc)

echo "Total Memory: $total_mem MiB"
echo "Free Memory: $free_mem MiB ($free_mem_percent%)"
echo "Used Memory: $used_mem MiB ($used_mem_percent%)"

printf "%${width}s\n" | tr ' ' '-'

total_disk_human=$(df --total -h | grep total | awk '{print $2}')
free_disk_human=$(df --total -h | grep total | awk '{print $4}')
used_disk_human=$(df --total -h | grep total | awk '{print $3}')
total_disk=$(df --total | grep total | awk '{print $2}')
free_disk=$(df --total | grep total | awk '{print $4}')
used_disk=$(df --total | grep total | awk '{print $3}')

free_disk_percent=$(echo "scale=2; $free_disk/$total_disk*100" | bc)
used_disk_percent=$(echo "scale=2; $used_disk/$total_disk*100" | bc)

echo "Total Disk Space: $total_disk_human"
echo "Free Disk Space: $free_disk_human ($free_disk_percent%)"
echo "Used Disk Space: $used_disk_human ($used_disk_percent%)"

printf "%${width}s\n" | tr ' ' '-'

echo "Top 5 Processes by CPU Usage:"
ps aux --sort=-%cpu | head -n 6

printf "%${width}s\n" | tr ' ' '-'

echo "Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6

printf "%${width}s\n" | tr ' ' '-'

printf "\n"