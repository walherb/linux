#!/bin/sh
cat ${1} | tr -cs A-Za-z '\n' | tr A-Z a-z | sort | uniq -c | sort -rn | sed ${2}q

# ./wordcount.sh 135-0.txt 10
grep -rilcv "{r: recursive, l: displays only the name, v: don't match, c: count, i: case insensitive, ^$: empty line}"

find / -type f -size +100M
find . -mtime +60   # Not Modified in past 60 days
find . -mtime -2    # Modified in last 2 days
find / -type f -name *.tar.gz -size +100 -exec ls -l {} \;
find / -type f -name *.tar.gz -size +100 -exec rm -f {} \;
find /home/jsmith -type -f -mtime +60 | xargs tar -cvf /tmp/`date '+%d%m%Y'_archive.tar.gz`

30 1 * * * cmd > /dev/null 2>$1   # suppress output and error msg
tr a-z A-Z < employee.txt    # convert a file to all uppercase
find ~ -name '*.log' -print0 | xargs -0 rm -f
find /etc -name "*.cond" | xargs ls -l
cat url-list.txt | xargs wget -c
find / -name *.jpg -type f -print | xargs tar -cvzf imges.tar.gz
ls *.jpg | xargs -n1 -i cp {} /external-hard-drive/dir
sort -t: -k 2 names.txt
sort -t: -u -k 3 names.txt   # sort a tab delimited file on 3rd field & suppress duplicates
sort -t: -k 3n /etc/passwd
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n /etc/hosts	# sort by ip-address
ls -al | sort +4n	# ascending order of file size 5th field
ls -al | sort -k 5n
sort -u named.txt, sort namesd.txt | uniq -c
sort namesd.txt | uniq -cd	# Displays only entries that r duplicates
cut -d: -f 1 names.txt	# Field 1 colon delimited
cut -d: -f 1,3 names.txt	# Field 1 & 3 colon delimited
cut -c 1-8 names.txt	# display only first 8 chars of every line
cut -d: -f1 /etc/passwd	# Displays the unix login names 4 users
free | tr -s '' | sed '/^Mem/!d' | cut -d" " -f2	# Displays the total memory available on the system. 
ac -d	# connect time 4 current logged in user
ac -p	# connect time 4 all users
ac -d walusih
nohup ./my-shell-script.sh &	# execute cmd in background without getting killed after logout
at -f backup.sh 10 am tomorrow	# schedule a command
watch df -h		# execute a command cont at a certain interval

