# shows free/total memory
free -h | awk '/^Mem:/ {print $3 "/" $2}'

# cpu temp
sensors | awk '/^temp1/ {print $2}'


# memory by percentage of most memory intensive processes, BOLJE DA POKAZE U MEGABAJTIMA
ps axch -o cmd:15,%mem --sort=-%mem | head

# cpu usage, max=nr_cores * 100%?, maby fix that
ps axch -o cmd:15,%cpu --sort=-%cpu | head
