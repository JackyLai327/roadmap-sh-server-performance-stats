# roadmap-sh-server-performance-stats

- This is a devops project designed by roadmaps.sh. I'm completing this specific project for my own learning purposes.
- Project can be found at [Roadmap.sh](https://roadmap.sh/projects/server-stats)

## Instruction to run the script

1. Clone this Git Repo / Download the code as .zip file
2. Make the script executable: `chmod +x server-stats.sh`
3. Run the script: `./server-stats.sh`

## Output

```bash
Server Stats:
--------------------------------------------------------------------------------------------------------------------------------------------------
System Time: Fri Jan 30 11:09:28 AEDT 2026
Uptime: up 2 days, 18 hours, 59 minutes
--------------------------------------------------------------------------------------------------------------------------------------------------
CPU Usage: 0%
--------------------------------------------------------------------------------------------------------------------------------------------------
Total Memory: 955.7 MiB
Free Memory: 141.6 MiB (14.00%)
Used Memory: 329.5 MiB (34.00%)
--------------------------------------------------------------------------------------------------------------------------------------------------
Total Disk Space: 5.5G
Free Disk Space: 3.1G (57.00%)
Used Disk Space: 2.3G (41.00%)
--------------------------------------------------------------------------------------------------------------------------------------------------
Top 5 Processes by CPU Usage:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root       20403  0.0  0.0      0     0 ?        I    10:37   0:01 [kworker/0:2-events]
ubuntu     20126  0.0  0.7  14996  7072 ?        S    09:28   0:02 sshd: ubuntu@pts/0
root       19987  0.0  0.0      0     0 ?        I    09:00   0:02 [kworker/0:0-cgroup_destroy]
root         335  0.0  2.7 289116 27392 ?        SLsl Jan27   0:48 /sbin/multipathd -d -s
root       20284  0.0  0.0      0     0 ?        I    10:12   0:00 [kworker/u2:2-events_unbound]
--------------------------------------------------------------------------------------------------------------------------------------------------
Top 5 Processes by Memory Usage:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root       16597  0.0  4.4 600700 43392 ?        Ssl  Jan29   0:12 /usr/libexec/fwupd/fwupd
root         335  0.0  2.7 289116 27392 ?        SLsl Jan27   0:48 /sbin/multipathd -d -s
root         714  0.0  2.3 110000 22912 ?        Ssl  Jan27   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root           1  0.0  1.3  22416 13568 ?        Ss   Jan27   0:07 /usr/lib/systemd/systemd --system --deserialize=79
root       16616  0.0  1.3 469092 13568 ?        Ssl  Jan29   0:03 /usr/libexec/udisks2/udisksd
--------------------------------------------------------------------------------------------------------------------------------------------------

```
