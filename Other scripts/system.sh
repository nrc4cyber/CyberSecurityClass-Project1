#!/bin/bash
free -h > ~/backups/freemem/free_mem.txt
du -h -s /* > ~/backups/diskuse/disk_usage.txt
lsof / > ~/backups/openlist/open_list.txt
df -h> ~/backups/freedisk/free_disk.txt
