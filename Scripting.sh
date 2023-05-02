------------------------- Free Shell Scripting eBooks for Linux Newbies and Administrators -----------------------
1. Bash Guide for Beginners
2. Advanced Bash-Scripting Guide  {abs-guide.pdf} - {Finished}
3. Shell Scripting: Expert Recipes for Linux
4. Linux Shell Scripting Cookbook, Second Edition
5. The Linux Programming Bible  -- {Finished:Not worthy the time}

Rule 1 : Backup Everything
Rule 2 : Master Command Line
Rule 3 : Automate task probably using any Scripting Language or Shell Script

[ TutPig.com ] Udemy - Linux BASH Scripting (course with PDF handbook)

WSL Explorer -- ['explorer.exe .', '\\wsl$']

https://www.baeldung.com/linux/linux-scripting-series

https://www.maketecheasier.com/best-deep-web-search-engines/
ssh-keygen -t rsa
./HOME/Build/walusih/scripts/tecmint_monitor.sh
./tecmint_monitor.sh -i
bash tecmint_monitor -v
monitor -v
${SKILL}

Ctrl+S -- Pause
Ctrl+Q -- Resume

systemctl enable --now cockpit.socket

------------------------ Removing Server-GUI from CentOS 8 ---------------
sudo su 
sudo dnf group list
sudo dnf grouplist
sudo dnf groupremove 'X Window System' 'GNOME'
sudo dnf groupremove 'Server with GUI' 'Workstation'
systemctl set-default multi-user.target
[root@CentOS-8 ~]# systemctl set-default multi-user.target
Removed /etc/systemd/system/default.target.
Created symlink /etc/systemd/system/default.target → /usr/lib/systemd/system/multi-user.target.
dnf groupremove "Graphical Administration Tools" --skip-broken --nobest
dnf groupremove "Workstation" --skip-broken --nobest
-----------------------------------------------------------------------------------

------------------------10 Useful Free Linux eBooks for Newbies and Administrators ----------------------
1. Introduction to Linux – A Hands on Guide (Finished)
2. A Newbie’s Getting Started Guide To Linux (Finished)
3. Linux Command Line Cheat Sheet (Finished)
4. User Mode Linux (Finished)
5. The GNU/Linux Advanced Administration (Finished)
6. Managing Linux Systems with Webmin (N/A)
7. Linux Shell Scripting Cookbook
8. Shell Scripting: Expert Recipes for Linux Bash
9. Linux Patch Management (N/A)
10. Create Your Own Linux from Scratch (N/A)

{/etc/profile, ~/.profile, ~/.bashrc}
PATH=$PATH:${HOME/Build}/bin

Red Hat Enterprise Linux Shell Scripting Fundamentals

-------------- YouTube Videos ---------------
- Bash Shell Scripting Tutorial - Shell Scripting Tutorial - Learn Shell Programming.mp4

Bash Shell Scripting, 2nd Edition by Sander van Vugt Released September 2021
Publisher(s): Addison-Wesley Professional
ISBN: 0137689063

history -d $1-$2	:In Bash v5	to delete a range of history commands

for x in $(seq $1 $2); do history -d $1; done 
for x in $(seq 521 583); do history -d 521; done

Edit $HISTFILE
After history -r && exit 
# 10 Useful Tips for Writing Effective Bash Scripts in Linux
# https://www.tecmint.com/rsync-local-remote-file-synchronization-commands/
# bash -x script.sh					:Debugging				:#!/bin/bash -n
# Parallel SSH
# 1. Always Use Comments in Scripts
# 2. Make a Script exit When Fails
set -o errexit 
# OR
set -e

# 3. Make a Script exit When Bash Uses Undeclared Variable
set -o nounset
# OR
set -u

# 4. Use Double Quotes to Reference Variables
# 5. Use functions in Scripts
# 6. Use = instead of == for String Comparisons

value1="tecmint.com"
value2="fossmint.com"
if [ "$value1" = "$value2" ]
fi

# 7. Use $(command) instead of legacy ‘command` for Substitution
user=`echo "$UID"`
user=$(echo "$UID")

# 8. Use Read-only to Declare Static Variables
readonly passwd_file="/etc/passwd"
readonly group_file="/etc/group"

# 9. Use Uppercase Names for ENVIRONMENT Variables and Lowercase for Custom Variables
#define custom variables using lowercase and use uppercase for env variables
nikto_file=”$HOME/Build/Downloads/nikto-master/program/nikto.pl”
perl "$nikto_file" -h  "$1"

# 10. Always Perform Debugging for Long Scripts

# Methods of Enabling Shell Script Debugging Mode
# 1. Modifying the First Line of a Shell Script

#!/bin/sh option(s)

# 2. Invoking Shell With Debugging Options
$ /bin/bash option(s) script_name argument1 ... argumentN  

# 3. Using set Shell Built-in Command

# To enable debugging mode, use:set -option
# To disable debugging mode, use:set +option

# In addition, if we have enabled several debugging modes in different segments of a shell script, we can disable all of them at once like so:set -
# Set -e. Incase you forgot to define used environment variables is very useful!

https://www.tecmint.com/create-hard-and-symbolic-links-in-linux/
https://www.tecmint.com/linux-partition-managers/
https://www.tecmint.com/run-linux-command-with-time-limit-and-timeout/

:!sh -x % test
:!!
:!%
# : ${var1:="Some Default Value"} OR var2=${var1:="Some Default Value"
# tmpfile=/tmp/myscript.$$
# who > $tmpfile
# ...
# rm $tmpfile 

# process_sig()
# {
		# echo
		# date
		# cal
# }
# trap process_sig 10 

# while :
# do 
	# sleep 1
# done

#!/bin/sh

-------------------------  Complete Linux Bash Shell Scripting with Real Life Examples ---------------------------
chmod a+x script-name
#!/bin/bash
ps -p 1 -o comm=
wsl --shutdown
ubuntu2004 config --default-user root
sudo update-alternatives --config java

------------ Exit Status ----------
echo $?
0 		-- OK or Successful
1 		-- Minor Problem
2 		-- Seriuos Trouble
3-255 	-- Everything Else 
chown walusih messages
service rsyslog status
service rsyslog start
5,408,513 - 1,900,000
2,729,513

case $- in
    *i*) ;;
      *) return;;
esac


------------------------------------------------------------------------------------------------------------------
cat ${1} | tr -cs A-Za-z '\n' | tr A-Z a-z | sort | uniq -c | sort -rn | sed ${2}q

# ./wordcount.sh 135-0.txt 10
grep -rilcv "{r: recursive, l: displays only the name, v: don't match, c: count, i: case insensitive, ^$: empty line}"

find / -type f -size +100M
find . -mtime +60   # Not Modified in past 60 days
find . -mtime -2    # Modified in last 2 days
find / -type f -name *.tar.gz -size +100 -exec ls -l {} \;
find / -type f -name *.tar.gz -size +100 -exec rm -f {} \;
find /HOME/Build/jsmith -type -f -mtime +60 | xargs tar -cvf /tmp/`date '+%d%m%Y'_archive.tar.gz`

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


cat /proc/meminfo
ps uax
more /proc/filesystems
more /proc/interrupts
cat /proc/cpuinfo
dmesg | grep "Serial line"
screen /dev/pts/13
mkswap /dev/ubdc1
swapon /dev/ubdc1
ifconfig eth0 192.168.0.253 up
tar tf /dev/ubdb | head
tar xpf /dev/ubdb
dd if=/dev/ubdb of=etc.tar
gunzip -c < /dev/ubdc | tar xf -
dd if=/dev/ubdd of=passwd
dd if=/dev/ubdd of=passwd bs=1 count=1575
route add default gw 192.168.0.254
host# iptables -I FORWARD -d 192.168.0.253 -j ACCEPT
host# iptables -I FORWARD -s 192.168.0.253 -j ACCEPT
dd if=/dev/zero of=root_fs bs=1024 seek=$[ 2 * 1024 * 1024 ] count=1
tcpdump -i jeffs-uml -l -n
tcpdump -i eth1 -l -n host 192.168.0.253
arp -Ds 192.168.0.253 eth1 pub
tcpdump -i eth1 -l -n
iptables -A FORWARD -i jeffs-uml -s \! 192.168.0.253 -j DROP
route add -net 192.168.0.0/24 gw 192.168.3.1
tcpdump -i eth0 -l -n
chown jeff.jeff /dev/tty6
grep Mem /proc/meminfo
for i in `seq 0 127`; do ping -c 1 10.0.$i.2 ; done
for i in $(seq 0 127); do ping -c 1 10.0.$i.2 ; done
arp -an
export n=0 ; for i in `seq 0 $n`; \
do ifconfig eth$i 10.0.$i.1/24 up; done ; \
for i in `seq 0 $n`; do ping -c 2 10.0.$i.2 ; done ; \
for i in `seq 0 $n`; do ifconfig eth$i down ; done
dd if=/etc/passwd count=1024 bs=1 > 0
for n in `seq 99` ; do cp 0 $n; done
for n in `seq 99` ; do cp -a 0 $n; done
awk '{ print $6 }' /proc/diskstats
find . -xdev -type f | xargs cat > /dev/null
awk '{ print $6 }' /proc/diskstats
env 
tar -zxvf file.tar.gz
rpm -Uvh 
apt-get dist-upgrade
apt-cache search linux-image
yum install kernel kernel-source
mount -t iso9660 /dev/cdrom /mnt/cdrom 
route add default gw 192.168.64.1 eth0

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

set -o posix
echo $-							: i indicates that the shell is interactive
gunzip file.tar.gz | tar xvf -

cat -n mysystem.sh
w | cut -d " " -f 1 - | grep -v USER | sort -u

timedatectl
timedatectl list-timezones | grep -i Europe
timedatectl list-timezones | egrep -o  "Africa"
sudo timedatectl set-timezone Africa/Kampala
timedatectl set-ntp true					: {Works Perfectly}
timedatectl set-ntp false
timedatectl | grep local
timedatectl set-local-rtc 1
timedatectl set-local-rtc 0
sudo timedatectl set-time "2021-08-09 20:10:35"


sudo dnf search vim
sudo dnf list vim\*
sudo dnf info vim-minimal
sudo dnf info vim-enhanced 
sudo dnf install vim-enhanced 
sudo yum install vim-enhanced 
alias vi='vim'        to ~/.bashrc
echo "alias vi='vim'" >> ~/.bashrc

export PATH="$PATH:~/scripts"

chmod u+x script1.sh
source script_name.sh
bash -x script1.sh

set -x # activate debugging from here
w
set +x # stop debugging from here

#!/bin/bash -xv

diff set.sorted printenv.sorted | grep "<" | awk '{ print $2 }'

Character Definition
$*
Expands to the positional parameters, starting from one. When the expansion occurs within
double quotes, it expands to a single word with the value of each parameter separated by the first
character of the IFS special variable.
$@ Expands to the positional parameters, starting from one. When the expansion occurs within
double quotes, each parameter expands to a separate word.
$# Exooooopands to the number of positional parameters in decimal.
$? Expands to the exit status of the most recently executed foreground pipeline.
$- A hyphen expands to the current option flags as specified upon invocation, by the set built-in
command, or those set by the shell itself (such as the -i).
$$ Expands to the process ID of the shell.
$! Expands to the process ID of the most recently executed background (asynchronous) command.
$0 Expands to the name of the shell or shell script.
$_
The underscore variable is set at shell startup and contains the absolute file name of the shell or
script being executed as passed in the argument list. Subsequently, it expands to the last argument
to the previous command, after expansion. It is also set to the full pathname of each command
executed and placed in the environment exported to that command. When checking mail, this
parameter holds the name of the mail file.

echo sp{el,il,al}l
echo $N*
${VAR:=value}
echo $(date)
timedatectl set-time "2021-08-09 20:09:05"

Operator Meaning
VAR++ and VAR-- variable post-increment and post-decrement
++VAR and --VAR variable pre-increment and pre-decrement
- and + unary minus and plus
! and ~ logical and bitwise negation
** exponentiation
*, / and % multiplication, division, remainder
+ and - addition, subtraction
< < and >> left and right bitwise shifts
<=, >=, < and > comparison operators
== and != equality and inequality
& bitwise AND
^ bitwise exclusive OR
| bitwise OR
&& logical AND
|| logical OR
expr ? expr : expr conditional evaluation
=, *=, /=, %=, +=, -=, < <=, >>=, &=, ^= and |= assignments
, separator between expressions

echo $[365*24]
set -o
bash --posix script.sh
set -o noclobber
set +o noclobber

cat -n filename
sed -n '/erors/p' example
sed '/erors/d' example
sed -n '/^This.*errors.$/p' example
sed '2,4d' example
sed '3,$d' example
sed -n '/a text/,/This/p' example
sed 's/erors/errors/g' example
sed 's/^/> /' example
sed 's/$/EOL/' example
sed -e 's/erors/errors/g' -e 's/last/final/g' example

ls -l | awk '{ print $5 $9 }'
ls -ldh * | grep -v total | awk '{ print "Size is " $5 " bytes for " $9 }'
df -h | sort -rnk 5 | head -3 | awk '{ print "Partition " $6 "\t: " $5 " full!" }'
df -h | awk '/dev\/hd/ { print $6 "\t: " $5 }'
ls -l /etc | awk '/\<(a|x).*\.conf$/ { print $9 }'
ls -l /etc | awk 'BEGIN { print "Files found:\n" } /\<[a|x].*\.conf$/ { print $9 }'
ls -l /etc | awk '/\<[a|x].*\.conf$/ { print $9 } END { print "Can I do anything else for you, mistress?" }'
awk 'BEGIN { FS=":" } { print $1 "\t" $5 }' /etc/passwd
awk -f printnames.awk /etc/passwd
awk 'BEGIN { OFS=";" ; ORS="\n-->\n" } { print $1,$2}' test
awk -f processed.awk test
awk -f total.awk revenues
grep awk /etc/init.d/*

Primary Meaning
[ -a FILE ] True if FILE exists.
[ -b FILE ] True if FILE exists and is a block-special file.
[ -c FILE ] True if FILE exists and is a character-special file.
[ -d FILE ] True if FILE exists and is a directory.
[ -e FILE ] True if FILE exists.
[ -f FILE ] True if FILE exists and is a regular file.
[ -g FILE ] True if FILE exists and its SGID bit is set.
[ -h FILE ] True if FILE exists and is a symbolic link.
[ -k FILE ] True if FILE exists and its sticky bit is set.
[ -p FILE ] True if FILE exists and is a named pipe (FIFO).
[ -r FILE ] True if FILE exists and is readable.
[ -s FILE ] True if FILE exists and has a size greater than zero.
[ -t FD ] True if file descriptor FD is open and refers to a terminal.
[ -u FILE ] True if FILE exists and its SUID (set user ID) bit is set.
[ -w FILE ] True if FILE exists and is writable.
[ -x FILE ] True if FILE exists and is executable.
[ -O FILE ] True if FILE exists and is owned by the effective user ID.
[ -G FILE ] True if FILE exists and is owned by the effective group ID.
[ -L FILE ] True if FILE exists and is a symbolic link.
[ -N FILE ] True if FILE exists and has been modified since it was last read.
[ -S FILE ] True if FILE exists and is a socket.
[ -o OPTIONNAME] True if shell option "OPTIONNAME" is enabled.
[ -z STRING ] True of the length if "STRING" is zero.
[ -n STRING ] or [STRING ] True if the length of "STRING" is non-zero.
[ STRING1 ==STRING2 ] True if the strings are equal. "=" may be used instead of "==" for strict POSIX compliance.
[ STRING1 !=STRING2 ] True if the strings are not equal.
[ STRING1 <STRING2 ] True if "STRING1" sorts before "STRING2" lexicographically in the current locale.
[ STRING1 > STRING2 ] True if "STRING1" sorts after "STRING2" lexicographically in the current locale.
[ ARG1 OP ARG2 ]"OP" is one of -eq, -ne, -lt, -le, -gt or -ge. These arithmetic binary operators
return true if "ARG1" is equal to, not equal to, less than, less than or equal to, greater
than, or greater than or equal to "ARG2", respectively. "ARG1" and "ARG2" are integers.
[ ! EXPR ] True if EXPR is false.
[ ( EXPR ) ] Returns the value of EXPR. This may be used to override the normal precedence of operators.
[ EXPR1 -a EXPR2] True if both EXPR1 and EXPR2 are true.
[ EXPR1 -o EXPR2] True if either EXPR1 or EXPR2 is true

 if [ -o noclobber ] ; then echo ; echo "your files are protected
against overwriting." ; echo ; fi
if [ $? -eq 0 ] then echo 'That was a good job!'; fi
echo $?
if ! grep $USER /etc/passwd then echo "your user account is not managed locally"; fi
grep $USER /etc/passwd
if [ $? -ne 0 ] ; then echo "not a local account" ; fi
WEEKOFFSET=$[ $(date +"%V") % 2 ]
bash -x weight.sh 55 169
$#  -> Where total number of arguments is stored
./feed.sh apple penguin
cat /etc/rc.d/init.d/functions {/etc/init.d }
feed.sh apple camel
feed.sh apple
ls -l * > /var/tmp/spoollist 2>&1
for i in `cat list`; do cp "$i" "$i".bak ; done
for i in `ls /sbin`; do file /sbin/$i | grep ASCII; done

-------------- abs-guide ------------------
chmod u+rx scriptname
ls -lahS

#!/bin/sh
#!/bin/bash
#!/usr/bin/perl
#!/usr/bin/tcl
#!/bin/sed -f
#!/bin/awk -f

E_WRONG_ARGS=85
script_parameters="-a -h -m -z"
# -a = all, -h = help, etc.
if [ $# -ne $Number_of_expected_args ]
then
echo "Usage: `basename $0` $script_parameters"
# `basename $0` is the script's filename.
exit $E_WRONG_ARGS
fi

chmod 555 scriptname
chmod +rx scriptname
chmod u+rx scriptname

echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.
echo ${PATH#*:} # Parameter substitution, not a comment.
echo $(( 2#101011 )) # Base conversion, not a comment.
# Thanks, S.C

case "$variable" in
	abc) echo "\$variable = abc" ;;
	xyz) echo "\$variable = xyz" ;;
esac

mkdir -p folder{1,2,3}
echo $?

: ${username=`whoami`}
# ${username=`whoami`} Gives an error without the leading :
# unless "username" is a command or builtin...
: ${1?"Usage: $0 ARGUMENT"} # From "usage-message.sh example script.

: ${HOSTNAME?} ${USER?} ${MAIL?}
# Prints error message
#+ if one or more of essential environmental variables not set.

.
: > data.xxx # File "data.xxx" now empty.
# Same effect as cat /dev/null >data.xxx
# However, this does not fork a new process, since ":" is a builtin.

ls . | xargs -i -t cp ./{} $1
a=3
b=7
echo $[$a+$b] # 10
echo $[$a*$b] # 21
echo $?
cat *.lst | sort | uniq
ls -l | ./uppercase.sh
cat -
file -
abc 
file -
#!/bin/bash

let a=16+5
for a in 7 8 9 11
do
	echo -n "$a "
done
R=$(cat /etc/redhat-release)
arch=$(uname -m)
echo $?
exit $?

-e file exists
-f file is a regular file (not a directory or device file)
-s file is not zero size
-d file is a directory
-b file is a block device
-c file is a character device
-l file is a symbolic link

device0="/dev/sda1"
if [ -b "$device0" ]
then
	echo "$device0 is a block device."
fi

-eq is equal to if [ "$a" -eq "$b" ]
-ne -gt -ge -le 
< is less than (within double parentheses) (("$a" < "$b"))
<= > >=
if [[ "$a" < "$b" ]]
if [ "$a" \< "$b" ]
fi # not necessary
fi # not necessary

a=$(( 5 + 3 ))
rm .[A-Za-z0-9]* # Delete dotfiles.
rm -f .[^.]* ..?* to remove filenames beginning with multiple dots.
result=$? # Result of delete operations. If successful = 0
$#	Number of command-line arguments [44] or positional parameters
$*	All of the positional parameters, seen as a single word "$*" must be quoted.
$@	Same as $*, but each parameter is a quoted string

c=0
for i in "$*" # quoted
do echo "$((c+=1)): [$i]" 	# This line remains the same in every instance.
							# Echo args.
done
echo ---


c=0
for i in $* # unquoted
do echo "$((c+=1)): [$i]"
done
echo ---

echo 'IFS unchanged, using "$@"'
c=0
for i in "$@"
do echo "$((c+=1)): [$i]"
done
echo ---


echo 'IFS unchanged, using $@'
c=0
for i in $@
do echo "$((c+=1)): [$i]"
done
echo ---


IFS=:
echo 'IFS=":", using "$*"'
c=0
for i in "$*"
do echo "$((c+=1)): [$i]"
done
echo ---


echo 'IFS=":", using $*'
c=0
for i in $*
do echo "$((c+=1)): [$i]"
done
echo ---

declare -r var1 works the same as readonly var1
declare | grep HOME/Build
zzy=68; declare | grep zzy
Arrays 
Colors=([0]="purple" [1]="reddish-orange" [2]="light green")
echo ${Colors[@]}
declare | grep Colors

Move () { # Move one unit right / left, or stay put.
Move=$RANDOM # How random is $RANDOM? Well, let's see ...
let "Move %= RANGE" # Normalize into range of 0 - 2.
case "$Move" in
0 ) ;; # Do nothing, i.e., stay in place.
1 ) ((POS--));; # Left.
2 ) ((POS++));; # Right.
* ) echo -n "Error ";; # Anomaly! (Should never occur.)
esac
}
a=${!xyz*}
--------------------------------------------------------------------------------
for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
	echo $planet
done
--------------------------------------------------------------------------------
NUMBERS="9 7 3 8 37.53"
for number in `echo $NUMBERS`
do
	echo -n "$number "
done

echo
exit 0
----------------------------------------------------------------------------------
cat /etc/passwd | awk -F: '{print $1}'

for a in {1..10}
do
	echo -n "$a "
done
-----------------------------------------------------------------------------------
LIMIT=10
for ((a=1; a <= LIMIT ; a++)) # Double parentheses, and naked "LIMIT"
do
	echo -n "$a "
done
-----------------------------------------------------------------------------------
LIMIT=10 # 10 iterations.
a=1
while [ "$a" -le $LIMIT ]
do
	echo -n "$a "
	let "a+=1"
done
-------------------------------------------------------------------------------
((a = 1)) # a=1
# Double parentheses permit space when setting a variable, as in C.
while (( a <= LIMIT )) # Double parentheses,
do #+ and no "$" preceding variables.
	echo -n "$a "
	((a += 1)) # let "a+=1"
	# Yes, indeed.
	# Double parentheses permit incrementing a variable with C-like syntax.
done
-----------------------------------------------------------------------------
for a in {1..10}
do
	echo $a
done
-------------------------------------------------------------------------
z=$(($z+3)) OR z=$((z+3)) OR z=`expr $z + 3`- Also correct

type -a echo
echo $?
chattr +i file1.txt
ln -s oldfile newfile
find ~/ -name '*.txt'
find ~/ -name 'core*' -exec rm {} \;	# Removes all core dump files from user's HOME/Build directory.
find "$DIR" -type f -atime +5 -exec rm {} \;
find ~/mail -type f | xargs grep "Linux"
ls | xargs -n 8 echo
find / -type f -print0 | xargs -0 grep -liwZ GUI | xargs -0 rm -f
a=`expr 5 + 3`
date -u 

SixDaysAgo=$(date --date='6 days ago')
OneMonthAgo=$(date --date='1 month ago') # Four weeks back (not a month!)
OneYearAgo=$(date --date='1 year ago')
zdump EST #Time in a specific timezone 
sort testfile | uniq -c | sort -nr
cut -d ' ' -f1,2 /etc/mtab
uname -a | cut -d" " -f1,3,11,12
cut -d ' ' -f2,3 filename is equivalent to awk -F'[ ]' '{ print $2, $3 }' filename
wc [d-h]* | grep total | awk '{print $3}'
... | grep -c foo
--------------------------------------------------------------------------------------
#!/bin/bash
WIDTH=40 # 40 columns wide.
b=`ls /usr/local/bin` # Get a file listing...
echo $b | fmt -w $WIDTH
# Could also have been done by
# echo $b | fold - -s -w $WIDTH
exit 0
-------------------------------------------------------------------------------------
getfacl *, setfacl
setfacl -m u:bozo:rw yearly_budget.csv
bash$ getfacl yearly_budget.csv
md5sum testfile
sha1sum testfile
host surfacemail.com
pcalc -h 202.92.42.236
dig -x 81.9.6.2
infocmp
factor 27417
variable=$(echo "OPTIONS; OPERATIONS" | bc)
seq 5
seq -s : 5
-----------------------------------------------------------------------------
for a in $( seq 80 )
do
	echo -n "$a "
done
----------------------------------------------------------------------------
`seq $BEGIN $END`
jot -r 3 999
result=$(echo $quantity*$cfactor | bc)
groups 
id 
sudo lid daemon
w 
last
lsof -an -i tcp
nc localhost.localdomain 25
chkconfig --list
lsusb
lspci
ulimit             -- {ulimit -f 1000 limits files to 1 meg maximum, ulimit -c 0 eliminates coredump}
lsmod
ldd /bin/ls
watch -n 5 tail /var/log/messages
"^$" matches blank lines

echo a111b | sed -ne '/a1\+b/p'
echo a111b | grep 'a1\+b'
echo a111b | gawk '/a1+b/'
# All of above are equivalent
egrep 're(a|e)d' misc.txt

• [:alnum:] matches alphabetic or numeric characters. This is equivalent to A-Za-z0-9.
• [:alpha:] matches alphabetic characters. This is equivalent to A-Za-z.
• [:blank:] matches a space or a tab.
• [:cntrl:] matches control characters.
• [:digit:] matches (decimal) digits. This is equivalent to 0-9.
[:graph:] (graphic printable characters). Matches characters in the range of ASCII 33 - 126. This
is the same as [:print:], below, but excluding the space character.
•
• [:lower:] matches lowercase alphabetic characters. This is equivalent to a-z.
[:print:] (printable characters). Matches characters in the range of ASCII 32 - 126. This is the
same as [:graph:], above, but adding the space character.
•
• [:space:] matches whitespace characters (space and horizontal tab).
• [:upper:] matches uppercase alphabetic characters. This is equivalent to A-Z.
[:xdigit:] matches hexadecimal digits. This is equivalent to 0-9A-Fa-f

grep [[:digit:]] test.file
abc=723

# ...
if [[ $arow =~ [[:digit:]] ]] # Numerical input?
then # POSIX char class	
fi
if [[ $acol =~ [[:alpha:]] ]]  # Number followed by a letter? Illegal!
fi
# ...
# From ktour.sh example script.
ls -l ?[[:digit:]][[:digit:]]?
ls -l [^ab]*
ls -l {b*,c*,*est*}

Here Documents 
COMMAND <<InputComesFromHERE
...
...-p
InputComesFromHERE
---------------------------------------------------------------------------------
# Insert 2 lines in file, then save.
#--------Begin here document-----------#
vi $TARGETFILE <<x23LimitStringx23
i
This is line 1 of the example file.
This is line 2 of the example file.
^[
ZZ
x23LimitStringx23
--------------------------------------------------------------------------------------
#!/bin/bash
# Replace all instances of "Smith" with "Jones": Used testing.txt
#+ in files with a ".txt" filename suffix.
ORIGINAL=Smith
REPLACEMENT=Jones
for word in $(fgrep -l $ORIGINAL *.txt)
do
# -------------------------------------
ex $word <<EOF
:%s/$ORIGINAL/$REPLACEMENT/g
:wq
EOF
# :%s is the "ex" substitution command.
# :wq is write-and-quit.
# -------------------------------------
done
------------------------------------------------------------------------------------
variable=$(cat <<SETVAR
This variable
runs over multiple lines.
SETVAR
)
echo "$variable"
------------------------------------------------------------------------------------
#!/bin/bash
: <<TESTVARIABLES
${HOSTNAME?}${USER?}${MAIL?} # Print error message if one of the variables not set.
TESTVARIABLES
exit $?
----------------------------------------------------------------------------------
: > filename -    The : serves as a dummy placeholder, producing no output, 2>&1
echo 1234567890 > File # Write string to "File"
exec 3<> File # Open "File" and assign fd 3 to it.
read -n 4 <&3 # Read only 4 characters.
echo -n . >&3 # Write a decimal point there.
exec 3>&- # Close fd 3.
cat File # ==> 1234.67890
-----------------------------------------------------------------------------
ROOT_UID=0, $UID 
comm <(ls -l) <(ls -al)
diff <(ls $first_directory) <(ls $second_directory)
-----------------------------------------------------------------------------
function_name ()
{
command...
}

function function_name {
command...
}
-----------------------------------------------------------------------------
Arrays
${element[xx]}
area[11]=23
area[13]=37
area[51]=UFOs
echo ${area[11]} 
----------------------------------------------------------------------------
#!/bin/bash
#************************************************#
# xyz.sh 										 #
# written by Bozo Bozeman 						 #
# July 05, 2001 								 #
# 												 #
# Clean up project files. 						 #
#************************************************#
--------------------------------------------------------------------------------
case $- in
*i*) # interactive shell
;;
*) # non-interactive shell
;;
# (Courtesy of "UNIX F.A.Q.," 1993)
esac
-------------------------------------------------------------------------------
sed -e /^$/d "$1"	# Same as	# sed -e '/^$/d' filename

echo -e "\033[1mThis is bold text.\033[0m"
echo -e "\033[4mThis is underlined text.\033[0m"
echo -e '\E[34;47mThis prints in blue.'; tput sgr0
echo -e '\E[33;44m'"yellow text on blue background"; tput sgr0
echo -e '\E[1;33;44m'"BOLD yellow text on blue background"; tput sgr0
Since tput sgr0 fails to restore terminal settings under certain circumstances, echo -ne \E[0m may be a better choice.

Color 		Foreground 		Background
black 		30 				40
red 		31 				41
green 		32 				42
yellow 		33 				43
blue 		34 				44
magenta 	35 				45
cyan 		36 				46
white 		37 				47

black='\E[30;47m'
red='\E[31;47m'
green='\E[32;47m'
yellow='\E[33;47m'
blue='\E[34;47m'
magenta='\E[35;47m'
cyan='\E[36;47m'
white='\E[37;47m'

echo -ne '\E[37;47m'
echo -ne '\E[30m'
echo -ne '\E[31m'		Set foreground color to red.

# Restore cursor and old colors.
echo -en "\E[?25h"
echo -en "\E[0m"

/^$/d Delete all blank lines

cat -n file-name 					: Indicate line-numbers with cat
sudo dnf install fish
-----------------------------------------------------------------------------------------------
grep foo /path/to/file | sort -n -k 3 | more

echo -n "Enter your name: "
read myvar
echo "Hello $myvar"

echo -n "Please enter your first name and last name: "
read firstname lastname
echo "Hello, $firstname. How is the $lastname family?"
set|grep "name="

read message < /etc/motd
$ echo $message

while read message
> do
> echo $message
> done < /etc/motd
---------------------------------------------------------------------------------------------
while read message
do
 echo $message
 sleep 1
 date
done < /etc/motd
-----------------------------------------------------------------------------------------
TODAY=`date +%A`
echo $TODAY 

cat params.sh
#!/bin/bash
echo “My name is `basename $0` - I was called as $0”
echo “My first parameter is: $1”
echo “My second parameter is: $2”
./params.sh One Two
---------------------------------------------------------------------------------------------------
for x in $(seq 594 611); do history -d 594; done

read field1 field2 field3 < datafile
--------------------------------------------------------------------------------------------
while read ip name alias
do
	if [ ! -z "$name" ]; then
# Use echo -en here to suppress ending the line;
# aliases may still be added
		echo -en "IP is $ip - its name is $name"
		if [ ! -z "$aliases" ]; then
		echo " Aliases: $aliases"
		else
# Just echo a blank line
			echo
		fi
	fi
done < /etc/hosts
----------------------------------------------------------------------------------------------------------
unset myvar
echo $RANDOM
-----------------------------------------------------------------------
for i in `seq 10 -1 1`
do
	echo -en "${i} ..."
done ; echo "boom"
----------------------------------------------------------------------
read -p 'Username : ' user_var
read -sp 'Password : ' pass_var
read -a names   --> Reading an array 
echo "Names : ${names[0]} ${names[1]} ${names[2]}"
echo $0 $1 $2 $3 '> $1 $2 $3'
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo $@
echo $#

echo -e "Enter the name of the file : \c"
read fileName 
if [ -e $fileName]
then 
	echo "$fileName found "
	else 
		echo "$fileName not found "
fi
----------------------------------------------------------------------------
age=25
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then 
	echo "Valid Age"
	else 
	echo "Age not Valid"
fi
if [[ "$age" -gt 18 &&  "$age" -lt 30 ]] 
fi
if [[ "$age" -gt 18 || "$age" -lt 30 ]] 
fi
if [ "$age" -gt 18 -o "$age" -lt 30 ]
fi
-------------------------------------------------------
num1=20
num2=5
num=27
echo $(( num1 + num2 ))
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo "20.5+5" | bc
echo "scale=2; 20.5/5" | bc
echo "$num1+$num2" | bc
echo "scale=2; sqrt($num)" | bc -l
echo "scale=2; 3^3" | bc -l
--------------------------------------------------------
vehicle=$1
case $vehicle in 
	"car" )
		echo "Rent of $vehicle is 100 dollar" ;;
	"van" )
		echo "Rent of $vehicle is 80 dollar" ;;
	"bicycle" )
		echo "Rent of $vehicle is 5 dollar" ;;
	"truck" )
		echo "Rent of $vehicle is 150 dollar" ;;
	* )
		echo "Unknown vehicle" ;;
esac
---------------------------------------------------------
echo -e "Enter some character : \c"
read value 

case $value in 
	[a-z] )
		echo "User entered $value  a to z" ;;
	[A-Z] )
		echo "User entered $value  A to Z" ;;
	[0-9] )
		echo "User entered $value  0 to 9" ;;
	? )
		echo "User entered $value  special character" ;;
	* )
		echo "Unknown Input" ;;
esac
LANG=C
---------------------------------------------------------
OS=('Ubuntu' 'Windows' 'CentOS' 'RHEL' 'Kali')
OS[5]='Mac'
echo "${OS[@]}"
echo "${!OS[@]}"			-- Prints Indexes
echo "${#OS[@]}"			-- Length of Array
unset OS[5]					-- Remove Index
--------------------------------------------------------
n=1 
while [ $n -le 10 ] # (( $n <= 10))
do 
	echo "$n"
	#n=$(( n+1 ))
	#(( n++ ))
	(( ++n ))
done
--------------------------------------------------------
n=1 
while [ $n -le 10 ] # (( $n <= 10))
do 
	echo "$n"
	(( n++ ))
	sleep 1
done
-------------------------------------------------------
n=1
while [ $n -le 3 ]
do 
	echo "$n"
	(( n++ ))
	gnome-terminal &
done 
-------------------------------------------------------
n=1
until [ $n -gt 10 ]
do 
	echo $n
	n=$(( n+1 ))
done
------------------------------------------------------
for n in 1 2 3 4 5
do 
	echo $n
done
----------------------------------------------------
for i in {1..10}
do 
	echo $i 
done
---------------------------------------------------
for i in {1..10..2}
do 
	echo $i 
done
-----------------------------------------------------
echo ${BASH_VERSION}
for (( i=0; i<5; i++))
do 
	echo $i 
done
-------------------------------------------------------
for cmd in ls pwd date 
do
	echo "-----------------$cmd-------------------"
	$cmd 
done
------------------------------------------------------
for item in *
do
	if [ -d $item ]
	then 
		echo $item 
	fi 
done
-------------------------------------------------------
select var in Mark John Tom Ben
do 
	echo "$var Selected"
done 
------------------------------------------------------
select var in Mark John Tom Ben
do 
	case $var in 
	Mark )
		echo Mark Selected
		;;
	John )
		echo John Selected
		;;
	Tom )
		echo Tom Selected
		;;
	Ben )
		echo Ben Selected
		;;
		* )
		echo "Error please provide the no. between 1..4"
	esac 
done 
--------------------------------------------------------
for (( i=1; i<=10; i++ ))
do 
	if [ $i -gt 5 ]
	then 
		break
	fi
	echo "$i"
done 
-------------------------------------------------------
for (( i=1; i<=10; i++ ))
do 
	if [ $i -eq 3 -o $i -eq 6 ]
	then 
		continue
	fi
	echo "$i"
done 
-----------------------------------------------------
function Hello(){
	echo "Hello"
}

quit () {
	exit
}
-----------------------------------------------------
readonly 
readonly -p
readonly -f
-----------------------------------------------------
trap "echo Exit signal is detected" SIGINT
trap "echo Exit signal is detected" SIGKILL
echo "pid is $$"
while (( COUNT < 10))
do 
	sleep 10
	(( COUNT++ ))
	echo $COUNT
done 
exit 0
man 7 signal 
trap - 0 2 15
------------------------------------------------
#!/bin/bash -x 
set -x 
...
set +x
-------------------------------------- Bash Scripting Cookbook 2nd Edition -----------------------
chmod a+x script.sh
~/.bashrc (or ~/.bash_profile
printf "Hello World!"
printf "%-5s %-10s %-4s\n" No Name Mark
printf "%-5s %-10s %-4.2f\n" 1 Sarath 80.3456
echo -e "1\t2\t3"
echo -n "Hello World"                  -- removes newline
reset = 0, black = 30, red = 31,green = 32, yellow = 33, blue = 34, magenta = 35, cyan = 36, and white = 37
echo -e "\e[1;31m This is red text \e[0m"
For a colored background, reset = 0, black = 40, red = 41, green = 42, yellow = 43, blue = 44, magenta = 45, cyan = 46, and white=47
echo -e "\e[1;42m Green Background \e[0m"
env 
cat /proc/$PID/environ
pgrep bash  -- {$PID}
cat /proc/10725/environ | tr '\0' '\n'
export PATH="$PATH:/HOME/Build/user/bin"
length=${#var}  -- length of the variable
var=12345678901234567890$
echo ${#var}
echo $0 or echo $SHELL
If [ $UID -ne 0 ]; then
	echo Non root user. Please run as root.
else
	echo Root user
fi
cat /etc/bashrc | grep PS1
export PATH=/opt/myapp/bin:$PATH
PATH=/opt/myapp/bin:/usr/bin:/bin
However, we can make this easier by adding this function in .bashrc-:
prepend() { [ -d "$2" ] && eval $1=\"$2':'\$$1\" && export $1; }
This can be used in the following way:
prepend PATH /opt/myapp/bin
prepend() { [ -d "$2" ] && eval $1=\"$2\$\{$1:+':'\$$1\}\" && export $1 ; }
let, (( )), and [] expr & bc 
echo "4 * 0.56" | bc       --> 2.24
no=54;
result=`echo "$no * 1.5" | bc`
echo $result				--> 81.0
echo "scale=2;3/8" | bc     --> 0.37
Desc: Number conversion From decimal to binary
no=100
echo "obase=2;$no" | bc		--> 1100100
From Binary to decimal 
no=1100100
echo "obase=10;ibase=2;$no" | bc	--> 100
echo "sqrt(100)" | bc #Square root
echo "10^10" | bc #Square
--------------------------------------------------------------------------------------
apt list --upgradable
Ctrl+Shift+N -- New Folder
Win + .
Win + M
Win + Ctrl + D (->/F4)
Ctrl + Shift + N -> Incognito Mode
Intel Core i5-7200U
$$ – This represents the process ID number (PID) of the current shell. 
$0 – This variable represents the file name of the current script.
$# – This variable represents the number of the arguments which are provided to a script.
$n – This variable is related to the arguments with which a script was requested
$* – This variable represents that all the arguments are double quoted. In the case of a script receiving two arguments, S* will be analogous to $1  $2.
$@ – This variable represents that all the arguments are individually double quoted. In the case of a script receiving two arguments, S@ will be analogous to $1  $2.
$! – This variable represents the process number of the last background command.$? – This variable represents the exit status of the command which was executed at last.

#!/bin/sh
for n in {1..10..2}
do 
    echo "$n"
done
for n in {1..10..2};do echo "$n";done

Display () {
    echo "My two favourite fruits are $1 and $2."
    return 0
 } 
Display Pineapple Mango
echo "The function has returned $?."

------------------------------- Linux Shell Scripting Cookbook 2nd Edition --------------------------------------
printf "%-5s %-10s %-4s\n" No Name Mark
printf "%-5s %-10s %-4.2f\n" 1 Sarath 80.3456
reset = 0, black = 30, red = 31, green = 32, yellow = 33, blue = 34, magenta = 35, cyan = 36, and white = 37 
echo -e "\e[1;31m This is red text \e[0m"
Background, reset = 0, black = 40, red = 41, green = 42, yellow = 43, blue = 44, magenta = 45, cyan = 46, and white=47
echo -e "\e[1;42m Green Background \e[0m"
env 
pgrep gedit
cat /proc/$PID/environ
cat /proc/12501/environ | tr '\0' '\n'
echo $var Or echo ${var}
fruit=apple
count=5
echo "We have $count ${fruit}(s)"
export PATH="$PATH:/HOME/Build/user/bin"
length=${#var}
var=12345678901234567890$
echo ${#var}
echo $SHELL Or echo $0
If [ $UID -ne 0 ]; then
	echo Non root user. Please run as root.
else
	echo Root user
fi
\u expands to username, \h expands to hostname, and \w expands to the current working directory
prepend() { [ -d "$2" ] && eval $1=\"$2':'\$$1\" && export $1; }   to .bashrc-
prepend() { [ -d "$2" ] && eval $1=\"$2\$\{$1:+':'\$$1\}\" && export $1 ; }
let, (( )), and [] expr & bc 
echo "4 * 0.56" | bc       --> 2.24
no=54;
result=`echo "$no * 1.5" | bc`
echo $result				--> 81.0
echo "scale=2;3/8" | bc     --> 0.37
Desc: Number conversion From decimal to binary no=100
echo "obase=2;$no" | bc		--> 1100100
echo "obase=2;100" | bc
From Binary to decimal no=1100100
echo "obase=10;ibase=2;$no" | bc	--> 100
echo "obase=10;ibase=2;1100100" | bc
echo "sqrt(100)" | bc #Square root  --> 10
echo "10^10" | bc #Square --> 100

cmd 2>&1 output.txt Or cmd &> output.txt
cat a* | tee out.txt | cat -n
cat a* | tee -a out.txt | cat -n
echo who is this | tee -

array_var=(1 2 3 4 5 6)
echo ${array_var[0]}
echo ${array_var[*]}
echo ${array_var[@]}
echo ${#array_var[*]}
declare -A ass_array
declare -A fruits_value
fruits_value=([apple]='100dollars' [orange]='150 dollars')
echo "Apple costs ${fruits_value[apple]}"

tput {cols,lines,longname}
tput cup 100 100
tputsetb n{0-7}
tputsetf n{0-7}
tput {bold,smul,rmul}
tputed

stty -echo
read password
stty echo

date --date "Nov 13 2021" +%A
date "+%d %B %Y"
date -s "21 June 2009 11:01:22"

_DEBUG=on ./script.sh
#!/bin/bash to #!/bin/bash -xv

echo $?;
read -n 5 var 
read -s var

repeat() { while true; do $@ && return; done } Or
repeat() { while :; do $@ && return; done }
repeat() { while :; do $@ && return; sleep 30; done }

systemctl enable --now cockpit.socket
for x in $(seq 521 583); do history -d 521; done

-gt: Greater than
-lt: Less than
-ge: Greater than or equal to
-le: Less than or equal to

[ -f $file_var ]: This returns true if the given variable holds a regular file path or filename
[ -x $var ]: This returns true if the given variable holds a file path or filename that is executable
[ -d $var ]: This returns true if the given variable holds a directory path or directory name
[ -e $var ]: This returns true if the given variable holds an existing file
[ -c $var ]: This returns true if the given variable holds the path of a character device file
[ -b $var ]: This returns true if the given variable holds the path of a block device file
[ -w $var ]: This returns true if the given variable holds the path of a file that is writable
[ -r $var ]: This returns true if the given variable holds the path of a file that is readable
[ -L $var ]: This returns true if the given variable holds the path of a symlink

cat -s file					:Getting rid of blank lines 
tr 
cat -n lines.txt
cat -b lines.txt
find . -print
find /HOME/Build/slynux -name "*.txt" -print
find . \( -name "*.txt" -o -name "*.pdf" \) -print
find . -regex ".*\(\.py\|\.sh\)$"
find . -iregex ".*\(\.py\|\.sh\)$"
find . ! -name "*.txt" -print
find . -type d -print
find . -type f -print
find . -type l -print

File type 					Type argument
Regular file 				f
Symbolic link 				l
Directory 					d
Character special device 	c
Block device 				b
Socket 						s
FIFO 						p

find . -type f -mtime +10 -name "*.txt" -exec cp {} OLD \;
find . -type f -name "*.txt" -exec printf "Text file: %s\n" {} \;
cat example.txt | xargs
cat example.txt | xargs -n 3
echo 12345 | tr '0-9' '9876543210'
md5sum filename
find path -type f -name "*.mp3" -exec mv {} target_dir \;
find path -type f -exec rename 's/ /_/g' {} \;

sudo systemctl enable --now cockpit.socket
ln -s target symbolic_link_name
dd if=/dev/zero of=loobackfile.img bs=1G count=1
mkfs.ext4 loopbackfile.img
0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
grep "text" . -R -n
grep "main()" . -r --include *.{c,cpp}
sed '/^$/d' file 						:Removing blank lines 
awk 'BEGIN { i=0 } { i++ } END{ print i}' filename
seq 5 | awk 'BEGIN{ sum=0; print "Summation:" } { print $1"+"; sum+=$1 } END { print "=="; print sum }' 
echo | awk -v VARIABLE=$VAR '{ print VARIABLE }'
var1="Variable1" ; var2="Variable2"
echo | awk '{ print v1,v2 }' v1=$var1 v2=$var2
for(i=0;i<10;i++) { print $i ; }
egrep -o '[A-Za-z0-9._]+@[A-Za-z0-9.]+\.[a-zA-Z]{2,4}' url_email.txt
egrep -o "http://[a-zA-Z0-9.]+\.[a-zA-Z]{2,3}" url_email.txt
find . -name *.cpp -print0 | xargs -I{} -0 sed -i 's/Copyright/Copyleft/g' {} Or 
find . -name *.cpp -exec sed -i 's/Copyright/Copyleft/g' \{\} \;
echo ${string:4:8}
echo ${string:4}
echo ${var/line/REPLACED}
tar -rvf original.tar new_file
tar -cf archive.tar hello.txt
tar -tf archive.tar
tar --delete --file archive.tar filea
tar -cf arch.tar * --exclude "*.txt"
zcat test.gz
tar -xjvf archive.tar.bz2
rsync -av source_path destination_path
rsync -avz source destination
0 */10 * * * rsync -avz /HOME/Build/code user@IP_ADDRESS:/HOME/Build/backups

ifconfig | cut -c-6 | tr -d ' ' | tr -s '\n'
ifconfig ens160
route add default gw 192.168.0.1 wlan0
fping -a 192.160.1/24 -g 2> /dev/null
fping -a 192.168.0.1 192.168.0.255 -g
fping -a < ip.list
ssh USER@REMOTE_HOST "cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub]
lsof -i 
lsof -i | grep ":[0-9]\+->" -o | grep "[0-9]\+" -o | sort | uniq
du -ak ~ | sort -nrk 1 | head
du -ahk ~ | sort -nrk 1 | head
find ~ -type f -exec du -hk {} \; | sort -nrk 1 | head
who 
w
users
last 
uptime | grep -Po '\d{2}\:\d{2}\:\d{2}'
watch -d -n 5 'ls -ltrh'
logger -f /var/log/source.log
cat /proc/cpuinfo
cat /proc/cpuinfo | sed -n 5p
cat /proc/meminfo
cat /proc/meminfo | head -1
sudo fdisk -l
sudo lshw
pgrep bash - {/proc/4295/environ}
