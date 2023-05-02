sudo grubby --info=ALL | grep ^kernel
grubby --set-default $kernel_path
sudo grubby --info ALL | grep id
# grubby --set-default /boot/vmlinuz-<version>.<architecture>

yum update kernel
yum install kernel-{version}

export CDPATH=/etc to your ~/.bash_profile
export CDPATH=.:~:/etc:/var

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
Add to ~/.bash_profile

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
Add to ~/.bash_profile

alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

# vi .bash_profile
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\"";
}

cd -
dirs 
popd 
pushd
cd; pushd .

shopt -s cdspell
grep John /etc/passwd
grep -v John /etc/passwd
grep -c John /etc/passwd
grep -cv John /etc/passwd
grep -i john /etc/passwd
grep -ri john /HOME/Build/users
grep -ril john /root
grep "^Nov 10" messages.1
grep "terminating.$" messages
grep -c "^$" messages anaconda.log
find /etc -name "*mail*"
find / -type f -size +100M
find . -mtime +60
find . –mtime -2
sudo find / -type f -name *.tar.gz -size +100M -exec ls -l {} \;
sudo find / -type f -name *.tar.gz -size +100M -exec rm -f {} \;
find /HOME/Build/jsmith -type f -mtime +60 | xargs tar -cvf /tmp/`date '+%d%m%Y'_archive.tar`
30 1 * * * command > /dev/null 2>&1
join employee.txt bonus.txt
tr a-z A-Z < employee.txt
tr A-Z a-z < department.txt
find ~ -name ‘*.log’ -print0 | xargs -0 rm -f
find /etc -name "*.conf" | xargs ls –l
cat url-list.txt | xargs wget –c
find / -name *.jpg -type f -print | xargs tar -cvzf images.tar.gz
ls *.jpg | xargs -n1 -i cp {} /external-harddrive/directory
sort -t: -k 2 names.txt
sort -t: -u -k 3 names.txt
sort -t: -k 3n /etc/passwd | more
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n /etc/hosts
ps –ef | sort
ls -al | sort +4n
ls -al | sort +4nr
sort namesd.txt | uniq –c
sort namesd.txt | uniq –cd
cut -d: -f 1 names.txt
cut -d: -f 1,3 names.txt
cut -c 1-8 names.txt
cut -d: -f1 /etc/passwd
free | tr -s ' ' | sed '/^Mem/!d' | cut -d" " -f2
stat my.cnf
stat -f /
ac -d 
ac -p
ac -d walusih
./my-shell-script.sh &
nohup ./my-shell-script.sh &
at -f backup.sh 10 am tomorrow
watch df -h

sed 's/Linux/Linux-Unix/' thegeekstuff.txt
sed 's/Linux/Linux-Unix/g' thegeekstuff.txt
sed 's/Linux/Linux-Unix/2' thegeekstuff.txt
sed -n 's/Linux/Linux-Unix/gpw output' thegeekstuff.txt
sed '/\-/s/\-.*//g' thegeekstuff.txt
sed 's/...$//' thegeekstuff.txt
sed -e 's/#.*//' thegeekstuff.txt
sed -e 's/#.*//;/^$/d' thegeekstuff.txt
sed -e 's/<[^>]*>//g'

awk '{print;}' employee.txt
awk '/Thomas/ > /Nisha/' employee.txt
awk '{print $2,$5;}' employee.txt
awk '{print $2,$NF;}' employee.txt
awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";} {print $2,"\t",$3,"\t",$4,"\t",$NF;} END{print "Report Generated\n----------------------" }' employee.txt
awk '$1 >200' employee.txt
awk '$4 ~/Technology/' employee.txt
awk 'BEGIN { count=0;} $4 ~ /Technology/ { count++; } END { print "Number of employees in Technology Dept =",count;}' employee.txt

VIM Editor 
• 0 – go to the starting of the current line.
• ^ – go to the first non blank character of the line.
• $ – go to the end of the current line.
• g_ – go to the last non blank character of the line.
• H – Go to the first line of current screen.
• M – Go to the middle line of current screen.
• L – Go to the last line of current screen.
• ctrl+f – Jump forward one full screen.
• ctrl+b – Jump backwards one full screen
• ctrl+d – Jump forward (down) a half screen
• ctrl+u – Jump back (up) one half screen
• N% – Go to the Nth percentage line of the file.
• NG – Go to the Nth line of the file.
• G – Go to the end of the file.
• `” – Go to the position where you were in NORMAL MODE while last closing the file.
• `^ – Go to the position where you were in INSERT MODE while last closing the file.
• g – Go to the beginning of the file.
• e – go to the end of the current word.
• E – go to the end of the current WORD.
• b – go to the previous (before) word.
• B – go to the previous (before) WORD.
• w – go to the next word.
• W – go to the next WORD
• { – Go to the beginning of the current paragraph. By pressing
{ again and again move to the previous paragraph beginnings.
• } – Go to the end of the current paragraph. By pressing } again
and again move to the next paragraph end, and again.
• /i – Search for a pattern which will you take you to the next
occurrence of it.
• ?i – Search for a pattern which will you take you to the previous
occurrence of it.
• * - Go to the next occurrence of the current word under the
cursor.
• # - Go to the previous occurrence of the current word under the
cursor.
% – Go to the matching braces, or parenthesis inside code

vim +10 /etc/passwd
vim +?bug README
vim +/install README

chmod u+r,g+x filename
chmod u-rx filename
chmod a+x filename
chmod -R 755 directory-name/
sudo tail -f /var/log/messages -f /var/log/secure

wget -O taglist.zip http://www.vim.org/scripts/download_script.php?src_id=7701
wget -c http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
wget -b http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
tail -f wget-log
wget -i download-file-list.txt

kernel-4.18.0-305.19.1.
vi /etc/ssh/sshd_config
PermitRootLogin no
date {mmddhhmiyyyy.ss}
date 013122192009.53
date +%Y%m%d -s "20090131"
date -s "01/31/2009 22:19:53"
date -s "31 JAN 2009 22:19:53"
date set="31 JAN 2009 22:19:53"
date +%T -s "22:19:53"
date +%T%p -s "10:19:53PM"
hwclock –systohc
hwclock --systohc –utc
cat /etc/sysconfig/clock
date --date="now"
date --date="today"
date --date="yesterday"
date --date='3 seconds ago'
date --date="1 days ago"
date --date='4 hours'
date --date='tomorrow'
date --date="1 day"
date --date="1 days"
date --date="2 days"
date --date='1 month'
date --date='1 week'
date --date="2 months"
date --date="2 years"
date --date="next day"
date --date="-1 days ago"
date --date="this Wednesday"

export PROMPT_COMMAND="echo -n [$(date +%H:%M:%S)]"
export PS1="\u@\h \W> "
export PS1="\u@\h [\$(date +%H:%M:%S)]> "
export PS1="\u@\h [\t]> "
export PS1="[\@] \u@\h> "
export PS1="\e[0;34m\u@\h \w> \e[m "			:blue 
export PS1="\e[1;34m\u@\h \w> \e[m "			:dark blue 
export PS1="\e[47m\u@\h \w> \e[m "				:Light Gray background
export PS1="\e[0;34m\e[47m\u@\h \w> \e[m "      :Light Blue foreground and Light Gray background
vi ~/.bash_profile or ~/.bashrc
Black 0;30
Blue 0;34
Green 0;32
Cyan 0;36
Red 0;31
Purple 0;35
Brown 0;33

vi ~/.bash_profile
STARTFGCOLOR='\e[0;34m';
STARTBGCOLOR="\e[47m"
ENDCOLOR="\e[0m"
export PS1="$STARTFGCOLOR$STARTBGCOLOR\u@\h \w> $ENDCOLOR"

• \e[40m
• \e[41m
• \e[42m
• \e[43m
• \e[44m
• \e[45m
• \e[46m
• \e[47m

zip -9 var-log-files-9.zip /var/log/*
zip -P mysecurepwd var-log-protected.zip /var/log/*		   :visible
zip -e var-log-protected.zip /var/log/*                    :Secure passwd(non-visible) on terminal
tar cvf /tmp/my_HOME/Build_directory.tar /HOME/Build/jsmith
tar tvf /tmp/my_HOME/Build_directory.tar
tar xvf /tmp/my_HOME/Build_directory.tar
tar xvfz /tmp/my_HOME/Build_directory.tar.gz –C /HOME/Build/ramesh
tar cvfz /tmp/my_HOME/Build_directory.tar.gz /HOME/Build/jsmith
tar xvfz /tmp/my_HOME/Build_directory.tar.gz
tar tvfz /tmp/my_HOME/Build_directory.tar.gz
tar cvfj /tmp/my_HOME/Build_directory.tar.bz2 /HOME/Build/jsmith
tar xvfj /tmp/my_HOME/Build_directory.tar.bz2
tar tvfj /tmp/my_HOME/Build_directory.tar.bz2

!4
!ps 
history -c
export HISTTIMEFORMAT=’%F %T ‘
history n

fdisk /dev/sda 
tune2fs -l /dev/sda1
mke2fs /dev/sda1
mkfs.ext3 /dev/sda1
mke2fs –j /dev/sda1
mount /dev/sda1 /HOME/Build/database
/dev/sda1 /HOME/Build/database ext3 defaults 0 2
sudo tune2fs -l /dev/nvme0n1
dd if=/dev/zero of=/HOME/Build/swap-fs bs=1M count=512
mkswap /HOME/Build/swap-fs
swapon /HOME/Build/swap-fs
/HOME/Build/swap-fs swap swap defaults 0 0		:/etc/fstab

adduser -c "John Smith - Oracle Developer" -e 12/31/09 jsmith
useradd -D 									:Default values used by useradd
groupadd developers
usermod -g developers jsmith

ssh-keygen -t rsa 
ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host

Description of Cron fields
Following is the format of the crontab file.
{minute} {hour} {day-of-month} {month} {day-of-week}
{full-path-to-shell-script}
• minute: Allowed range 0 – 59
• hour: Allowed range 0 – 23
• day-of-month: Allowed range 0 – 31
• month: Allowed range 1 – 12. 1 = January. 12 = December.
• Day-of-week: Allowed range 0 – 7. Sunday is either 0 or 7

Run at 12:01 a.m. 1 minute after midnight everyday. This is a good
time to run backup when the system is not under load.
1 0 * * * /root/bin/backup.sh

Run backup every weekday (Mon – Fri) at 11:59 p.m.
59 11 * * 1,2,3,4,5 /root/bin/backup.sh

Following will also do the same.
59 11 * * 1-5 /root/bin/backup.sh

Execute the command every 5 minutes.
*/5 * * * * /root/bin/check-status.sh

Execute at 1:10 p.m on 1st of every month
10 13 1 * * /root/bin/full-backup.sh

 Execute 11 p.m on weekdays.
0 23 * * 1-5 /root/bin/incremental-backup.sh

rsync -avz /root/temp/ thegeekstuff@192.168.200.10:/HOME/Build/thegeekstuff/temp

systemctl list-unit-files
systemctl list-dependencies [target]

yum search firefox 
yum info python
rpm -ivh MySQL-client-3.23.57-1.i386.rpm
rpm -qa
rpm -q MySQL-client
rpm -qa --queryformat '%{name-%{version}-%{release} %{size}\n'
rpm -qf /usr/bin/mysqlaccess
rpm -qdf /usr/bin/mysqlaccess
rpm -qip MySQL-client-3.23.57-1.i386.rpm
rpm -qlp ovpc-2.1.10.rpm
rpm -qRp MySQL-client-3.23.57-1.i386.rpm

apt-cache search ^apache2$
dpkg -l | grep -i apache
sudo apt-get install apache2
sudo apt-get purge apache2 or sudo apt-get remove apache2

for ((i=1, j=10; i <= 5 ; i++, j=j+5))
do
	echo "Number $i: $j"
done

df -Tha
du -sh ~ 
du -h ~ 
lsof –u walusih
sysctl –a
vi /etc/sysctl.conf
sysctl –p
sysctl –w {variable-name=value}

ps axl
--------------------------------------------------------------------------------------------------------

Phillipians 4:6-7
Luke 18:1
1 Samuel 1:1
2 Samuel 22:37


john 10:10
psalms 105:3-5
ephesians 3:20
matthew 18:18
john 1:12

-- Adobe App and Tutorials Download
-- Linux Shell Scripting Cookbook, 2nd Edition 

tar cvfz etc.tar.gz /etc/
export PATH=$PATH:/HOME/Build/ramesh
-- Command Line Editing Mode {emacs, vi}
set | grep SHELLOPTS
set -o vi 
set -o emacs 

export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTIGNORE="pwd:ls:ls -ltr:"
export HISTSIZE=0									:Disable history 
history -c
history -d 15
history -w
history -s "tar cvf /tmp/newfile.tar file"			:Add a command to history without really executing it.
fc -l 2 5											:List history commands 2 through 5
fc -ln 2 5											:List history commands 2 through 5 (without the line numbers).
find / -ctime -1 > /tmp/changed-file-list.txt &
%2 &
jobs 
fg %1
kill %2
jobs -l
jobs -l 3
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"
alias hcl='history -c; clear'
export PS1="\u@\h [\$(date +%k:%M:%S)]$ "
export PS1="\u@\h \w [\$(date +%k:%M:%S)]$ "
export PS1="\u@\h [\t]$ "
export PS1="[\@] \u@\h$ "
export PS1="\e[0;34m\u@\h \w$ \e[m"
export PS1="\e[1;34m\u@\h \w$ \e[m"
export PS1="\u@\h \w$ "

-eq Equal to
-ne Not Equal to
-gt Greater than
-ge Greater than or equal to
-lt Less than
-le Less than or equal to

for i in {1..20..2}; do echo "$i"; done
i=1; cd ~
for item in *
do
	echo "Item $((i++)) : $item"
done

ls -1 /etc/[abcd]*.conf

for ((i=1, j=10; i <= 5 ; i++, j=j+5))
do
	echo "Number $i: $j"
done 
type ls pwd if file
type -a ls 
ulimit -a
shopt
shopt cdspell
shopt -s cdspell
shopt -u checkwinsize
shopt -p

array1=("one" "two" "three" "four")
echo ${array1[@]}
array2=([0]="one" [5]="two" [11]="three" [13]="four")
echo ${array2[@]}

ls -l /etc/doesnotexist.conf >/tmp/output.txt 2>&1
cat > cities.txt <<EOF
Los Angeles
Las Vegas
San Francisco
Santa Monica
EOF

( ls /etc/|wc -l; FILENAME1=/etc/passwd; echo $FILENAME1)
{ ls /etc/|wc -l; FILENAME2=/etc/passwd; echo $FILENAME2; }

: <<COMMENT
-------------------------------------------
3. Multi line comment inside shell script
can be elegantly documented without giving #
in front of every line
-------------------------------------------
COMMENT

cat /var/log/messages.{1..3}
echo {a..f}{1..9}.txt
echo /var/log/messages.{1..7..2}
echo {1..5}
echo {01..5}
echo {001..5}
echo {001..5..2}
city="Los Angeles"
echo "${city:4}"
echo "${city:0:3}"
city="Los Angeles"
echo "${city/Angeles/Altos}"
echo "${city//e/E}"

America's Best Dance Crew