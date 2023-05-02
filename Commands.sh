https://uae.sharafdg.com/product/lenovo-thinkpad-x1-carbon-gen-9-20xw000qad-laptop-core-i7-1165g7-2-80ghz-16gb-1tb-ssd-intel-iris-xe-graphics-win10-pro-14inch-fhd-black-3-years-warranty/?utm_campaign=marketing_automation&utm_source=synerise&utm_medium=
/usr/share/redhat-release/EULA
https://developers.redhat.com/cheat-sheets
https://phoenixnap.com/kb/

du -sh * | sort -hr

[CourseClub.Me]
find /samba/walusih/ -name "*[CourseClub.Me]*" -print | less 
find . -name "*[CourseClub.Me]*" -exec rm -r {} \;
find /samba/walusih/Courses/ -type f -name "*\[CourseClub.Me\]*" -print | less
find . -type f -name "*\[CourseClub.Me\]*" -print | less
find . -type f -name "*\[CourseClub.Me\]*" -exec rm {} \;
find . -type f -name "*\[DesireCourse.Net\]*" -exec rm {} \;
find . -type f -name "*\[FreeCourseWorld.Com\]*" -exec rm {} \;
find . -type f -name "*\[GigaCourse.Com\]*" -exec rm {} \;
find . -type f -name "*\[CourseClub.NET]]\]*" -exec rm {} \;
find . -type f -name "*\[FreeCourseSite.com]\]*" -exec rm {} \;
find /samba/walusih/Courses/ -type f -name "*\[CourseClub.Me\]*" -exec rm {} \;  {*****}
find /samba/walusih/Courses/ -type f -name "*\[DesireCourse.Net\]*" -exec rm {} \;
find /samba/walusih/Courses/ -type f -name "*\[FreeCourseWorld.Com\]*" -exec rm {} \;
find /samba/walusih/Courses/ -type f -name "*\[GigaCourse.Com\]*" -exec rm {} \;
find . -type f -name "0. Websites you may like*" -exec rm {} \;   --> files 
find . -type d -name "0. Websites you may like*" -exec rm -r {} \;
find /samba/walusih/Courses/ -type d -name "0. Websites you may like*" -print
find /samba/walusih/Courses/ -type d -name "0. Websites you may like*" -exec rm -r {} \;
find . -type f -name "*\[CourseClub.Me\]*" -exec rm {} \;
for i in *; do od -c <<< "$i"; done
for i in /samba/walusih/*; do od -c <<< "$i"; done
find /samba/walusih/ -name "*.url" -print | less
find /samba/walusih/ -name "[CourseClub.Me]" -print | less
find /samba/walusih/ -type f -name "[CourseClub.Me]" -print | less
find . -name "*.jpg" -exec /bin/rm {} \;
find /dir/to/search/ -type f -name "FILES-TO-FIND" -delete
find /samba/walusih/ -type f -name "[CourseClub.Me]" -delete
find . -type f -name "*.bak" -exec rm -f {} \;
find . -type f -name "*.bak" -delete
find . -type f -name "*.err" -print0 | xargs -I {} -0 rm -v "{}"
find /projectA/ \( -name '∗.bak' -o -name '*.core' \) -exec rm "{}" \;
sudo find / -name .DS_Store -exec rm {} +

find . -type f -name "*(*)*" -delete -maxdepth 1
find . -type f -name "*(*)*" -print -maxdepth 1
find . -type f -name "*(*)*" -exec rm -rf {} \;

----------- 18 Conmmands That Will Change The Way You Use Linux Forever --> YT ---------------
Ctrl+L -- reset
Ctrl+Z -- background 
sudo !!
Ctrl+R -- Search History 
!102
HISTTIMEFORMAT="%Y-%m-%d %T "
vi ~/.bashrc --> 
cmatrix 
F11
Ctrl+U		-- clear line 
Ctrl+A 		-- beginning of the line 
Ctrl+E		-- end of the line 
tail -f /var/log/syslog
> hello.txt -- truncate -s 0 hello.txt 
mount | column -t 
ps -eo comm,pcpu --sort -pcpu | head -5; ps -eo comm,pmem --sort -pmem | head -5
curl wttr.in		-- weather 
Shift+Pg Up/Dn 


Bash Scripting Cookbook 2nd Edition
Complete Linux Bash Shell Scripting with Real Life Examples

page 2496: Bash Cookbook 

ssh-keygen -R 10.1.1.120  (WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!)
ssh-keygen -R 192.168.64.129

lsof -i :80

sudo passwd root
su -
sudo passwd -dl root

sudo apt install net-tools
[[ -f /sbin/ifconfig ]] && echo "ifconfig exists"
export PATH=$PATH:/sbin


apt install lsb-base lsb-release
sudo apt install lsb-core
lsb_release -cdr
lsb_release -cdir
lsb_release -cs

https://getlabsdone.com/how-to-install-debian-11-on-vmware-workstation/
https://www.sysnettechsolutions.com/en/install-debian-vmware/
https://www.cyberithub.com/solved-package-has-no-installation-candidate-in-debian/
https://itslinuxfoss.com/initial-server-setup-with-debian-eleven/

https://www.linuxshelltips.com/install-apache-tomcat-rhel-8/
https://techviewleo.com/how-to-install-apache-tomcat-on-rhel-centos/
https://technixleo.com/install-apache-tomcat-centos-rhel-alma-9/
https://www.linuxshelltips.com/install-apache-tomcat-rhel-9/#:~:text=Step%202%3A%20Installing%20Apache%20Tomcat%20in%20RHEL%209&text=Now%20head%20over%20to%20Apache,via%20the%20following%20curl%20command.&text=Next%2C%20use%20the%20tar%20command,the%20downloaded%20apache%2Dtomcat%20file.&text=Rename%20the%20extracted%20directory%20to,move%20%2Fusr%2Flocal%20directory.

[[ -f /sbin/ifconfig ]] && echo "ifconfig exists"

-- https://packetpushers.net/ubuntu-extend-your-default-lvm-space/#:~:text=Select%20your%20%2Fdev%2Fsda3%20partition,to%20confirm%2C%20and%20hit%20ENTER. --

cat -n <filename>		-> 		(Display line numbers)
locate <filename>
du 
diff  
kill
-15 saves all progress before closing the process.
-9 forces a stop immediately.
file 
wc
ip addr
whoami
mount -t <type> <device> <directory>
which 
whatis cat

df -h
vgdisplay
lvdisplay
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv

https://www.baeldung.com/linux/linux-administration-series
----------------- Find Out the Total Physical Memory (RAM) on Linux ---------------------
free -h
free -h -s 5			-> (print every 5 seconds)
free -h --si			-> (Power of 1000 Formatting)
free -h -t 				-> (Total Amount of Memory)
while true; do date >> memory.log; free >> memory.log; sleep 1; done		-> (Memory Usage Logging)
vmstat -w
vmstat -s
vmstat -s | grep -i 'total memory' | sed 's/ *//'
top
apt install dmidecode
dmidecode
5, 6, 16, 17, 18, 19, 20, 21, and 22
dmidecode --type 19
cat /proc/meminfo
cat /proc/meminfo | head -n 3
#!/bin/bash

total_ram () {
  local totalram=$(cat /proc/meminfo | grep -i 'memtotal' | grep -o '[[:digit:]]*')
  echo $totalram
}

ram_size=$(total_ram)
echo "Total RAM: $ram_size kB"
$ chmod +755 totalram.sh
$ ./totalram.sh

------------------- Tracking Down Where Disk Space Has Gone on Linux ----------------------
df -h
du -BM --max-depth=1 /var | sort -n | tail -n 5
–B option is used to specify the block size unit (Megabyte in this case)
–max-depth=1 aggregates the calculation results by the first level of subdirectories
sort utility is used for sorting the output of the du command, and the -n option makes it treat strings as numbers
tail with the -n option cuts the output, leaving only the last five lines
du -BM --max-depth=<strong>2</strong> /var | sort -n | tail -n 5
du -BM --max-depth=1 <strong>/var/log</strong> | sort -n | tail -n 5
find /var -size +100M -printf '%s %p\n' | sort -n
lsof | grep -E '^COM|deleted'
mc /var			-> 		(Midnight Commander File Manager)
ncdu /var


-------------------------- Shut Down and Reboot Linux Systems From the Terminal ----------------------
file /sbin/{halt,poweroff,reboot,shutdown}
shutdown -r
shutdown -H
shutdown -r 08:08
shutdown +30
shutdown now OR shutdown +0
shutdown -r +45 "Attention: This system will restart in 45 minutes!"
shutdown -c "Scheduled reboot is cancelled."
reboot
halt --reboot
poweroff --reboot
halt
reboot --halt
poweroff --halt
poweroff
reboot -p
halt -p

-------------------------------- Get Overall CPU Usage on Linux -----------------------
uptime
cat /proc/cpuinfo |grep core
vmstat 3 4

us – time spent running non-kernel code
sy – time spent running kernel code
id – time spent idle
wa – time spent waiting for I/O
st – time is stolen from a virtual machine

echo "CPU Usage: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%"
cat /proc/stat

user – time spent in user mode
nice – time spent processing nice processes in user mode
system – time spent executing kernel code
idle – time spent idle
iowait – time spent waiting for I/O
irq – time spent servicing interrupts
softirq – time spent servicing software interrupts
steal – time stolen from a virtual machine
guest – time spent running a virtual CPU for a guest operating system
guest_nice – time spent running a virtual CPU for a “niced” guest operating system

cat /proc/stat |grep cpu |tail -1|awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}'|awk '{print "CPU Usage: " 100-$1}'
top -bn2 | grep '%Cpu' | tail -1 | grep -P '(....|...) id,'|awk '{print "CPU Usage: " 100-$8 "%"}'


------------------------------ Using the find -exec Command Option ----------------------------------
find Music/ -name *.mp3 -exec file {} \;
function mp3info() {
    TRACK_NAME=$(basename "$1")
    FILE_DATA=$(file "$1" | awk -F, '{$1=$2=$3=$4=""; print $0 }')
    echo "${TRACK_NAME%.mp3} : $FILE_DATA"
}
export -f mp3info
find . -name "*.mp3" -exec bash -c "mp3info \"{}\"" \;
find . -name "*.mp3" -exec bash -c "basename \"{}\" && file \"{}\" | awk -F: '{\$1=\"\"; print \$0 }'" \;
find . -name "*.mp3" -exec echo {} +
find . -name "*.mp3" -exec echo {} \;

----------------------------- Difference Between .bashrc, .bash-profile, and .profile --------------
The .bash_profile file contains commands for setting environment variables. Consequently, future shells inherit these variables.
In an interactive login shell, Bash first looks for the /etc/profile file. If found, Bash reads and executes it in the current shell. As a result, /etc/profile sets up the environment configuration for all users.
Similarly, Bash then checks if .bash_profile exists in the home directory. If it does, then Bash executes .bash_profile in the current shell. Bash then stops looking for other files such as .bash_login and .profile.
If Bash doesn’t find .bash_profile, then it looks for .bash_login and .profile, in that order, and executes the first readable file only

.bash_profile file
echo "Bash_profile execution starts.."  
PATH=$PATH:$HOME/bin; 
export PATH; 
echo "Bash_profile execution stops.."

.bashrc
.bashrc contains commands that are specific to the Bash shells. Every interactive non-login shell reads .bashrc first. Normally .bashrc is the best place to add aliases and Bash related functions.
The Bash shell looks for the .bashrc file in the home directory and executes it in the current shell using source.
Let’s take a look inside a sample .bashrc file:

.bashrc 
echo "Bashrc execution starts.." 
alias elui='top -c -u $USER' 
alias ll='ls -lrt' 
echo "Bashrc execution stops.."

.profile
During an interactive shell login, if .bash_profile is not present in the home directory, Bash looks for .bash_login. If found, Bash executes it. If .bash_login is not present in the home directory, Bash looks for .profile and executes it.
.profile can hold the same configurations as .bash_profile or .bash_login. It controls prompt appearance, keyboard sound, shells to open, and individual profile settings that override the variables set in the /etc/profile file.


On every interactive login, the Bash shell executes .bash_profile. If .bash_profile is not found in the home directory, Bash executes the first readable file found from .bash_login and .profile. Whereas, on every interactive non-login shell startup, Bash executes .bashrc.
Generally, environment variables are put into .bash_profile. Since the interactive login shell is the first shell, all the default settings required for the environment setup are put in .bash_profile. Consequently,  they are set only once but inherited in all child shells.
Likewise, aliases and functions are put into .bashrc to ensure that these are loaded every time a shell is launched from within the existing environment.
However, to avoid login and non-login interactive shell setup difference, .bash_profile calls .bashrc. As a result, we’ll see the below code piece is inserted in .bash_profile, so that on every interactive login shell, .bashrc is also executed in the same shell:
if [ -f ~/.bashrc ];
then 
    .  ~/.bashrc; 
fi 
PATH=$PATH:$HOME/bin export PATH


--------------------------- What’s the Difference Between sh and Bash? ------------------------------
grep $USER /etc/passwd
cat /etc/shells
file -h /bin/sh

bash --posix
#!/bin/bash

set -o posix

echo Hello, World
#!/bin/bash

# Finds out whether a number is even or odd

read -p "Enter a number: " number

if [ `expr $number % 2` -eq 0 ]; then
    echo "${number} is even"
else
    echo "${number} is odd"
fi
$ chmod +x is_even.sh
$ ./is_even
Enter a number: 13
13 is odd

---------------------------- Combine and Execute Multiple Linux Commands -----------------------------
cd logs; ls -lt | head; du -sh ; df -h
cd archive_old; rm -rf *
cd archive_oldd && rm -rf *
[ -x "archive_logs.sh" ] || chmod +x archive_logs.sh
{ echo "Hi there"; pwd; uptime; date; }
( echo "Hi there"; pwd; uptime; date )
VAR="1"; { VAR="2"; echo "Inside group: VAR=$VAR"; }; echo "Outside: VAR=$VAR"
VAR="1"; ( VAR="2"; echo "Inside group: VAR=$VAR" ); echo "Outside: VAR=$VAR"
pwd; { cd /etc; pwd; }; pwd
pwd; ( cd /etc; pwd ); pwd

ping -c1 "some.website" 1>/dev/null 2>&1 || ( sendSMS && writeLog )
Let’s say, we attempt to ping a website to check if it is alive. Only if the ping command fails, we want to send an SMS to admin and write a log message. To achieve it, we can group the sendSMS command and the writeLog command:

date && ./execute_backup_db.sh && date & > execute_backup_db.log
(date ; ./execute_backup_db.sh ; date) & > execute_backup_db.log


-------------------------- How to Delete the History of the Last n Commands? -------------------------
for h in {1..5}; do sed -i '$d' ~/.bash_history; done;			->	(Delete Last n Lines from .bash_history)
for h in {1987..1991}; do history -d 1987; done					->	(Delete Last n Lines in history)
for h in {1987..1991}; do history -d 1987; done; history -d $(history 1 | awk '{print $1}')

nano ~/.bashrc
historyDel() {
  for h in {$1..$2}; do
    history -d $1
  done
  history -d $(history 1 | awk '{print $1}')
}
source ~/.bashrc
historyDel 2001 2004
historyDeln() {
  n=$(history 1 | awk '{print $1}')    # current history number
  historyDel $(( $n-$1 )) $(( $n-1 ))  # Call historyDel with ranges
}
historyDeln 5

history -d 2001-2004			-> (Bash 5)
history -d -5--1				-> (Let’s delete the last 5 lines of history)


-------------------------- Changing the Default Shell in Linux ----------------------------------
chsh -l
echo $SHELL
echo $$
ps -p $$
chsh -s /bin/bash						->	(Changing the Default Shell of the Current User)
chsh -s /bin/sh kent 					-> (other user)


------------------------- Locale Environment Variables in Linux ---------------------------
locale
export LANG=es_ES.UTF-8
man man
export LC_ALL=				-> reset

------------------------- Running Script or Command as Another User in Linux ---------------
cat > /home/annie/annie-script.sh <<EOF
echo "Running annie-script.sh as user $(whoami)"
EOF
chmod u+x /home/annie/annie-script.sh
su -c '/home/annie/annie-script.sh' annie			-> (Running Script as Another User)
su -c 'echo I am $(whoami)'							-> (Will default to root)
Disabling the Password Prompt
/etc/pam.d/su
Let’s disable the password prompt when user dave is executing scripts as user annie.
Firstly, we open up the file /etc/pam.d/su with any text editor. Then, we’ll add the following lines into the file right after the line auth sufficient pam_rootok.so: 
auth  [success=ignore default=1] pam_succeed_if.so user = annie
auth  sufficient                 pam_succeed_if.so use_uid user = dave

Let’s add dave into sudoers file by executing the following command as root:
echo 'dave ALL=(annie) /home/annie/annie-script.sh' | EDITOR='tee -a' visudo
The rule grants dave the permission to execute the script annie-script.sh as user annie on any hosts.
sudo -u annie /home/annie/annie-script.sh

sudo -u root /home/annie/annie-script.sh
dave ALL=(ALL) /home/annie/annie-script.sh

dave ALL=(ALL) NOPASSWD: /home/annie/annie-script.sh


----------------------- How to Change the Default Home Directory of a User --------------------
sudo useradd -m baeldung
sudo useradd -m -d /home/baeldung baeldung
sudo usermod -d /usr/baeldung baeldung				-> (Changing the Default Home Directory)
sudo usermod -m -d /usr/baeldung baeldung			-> (Move existing content too)


----------------------- List All Groups in Linux  ----------------------------
cat /etc/group
cut -d: -f1 /etc/group
getent group
getent group | cut -d: -f1
groups
groups root
id -Gn
id -Gn root

------------------------- What does /opt mean in Linux? ----------------------------
FHS (Filesystem Hierarchy Standard)

------------------------ Mounting Remote Directory in Linux Using SSHFS ------------
sudo apt-get install -y sshfs
sudo <span class="comment-copy">yum --enablerepo=powertools install fuse-sshfs</span>		-> (CentOS)
mkdir -p /mnt/DATA
sshfs root@10.1.1.24:/samba/walusih /mnt/DATA
fusermount -u /mnt/DATA
umount /mnt/DATA
sshfs baeldung@192.168.1.16:/tmp/DATA /mnt/DATA -o reconnect		(Automatic Reconnect)
sshfs baeldung@192.168.1.16:/tmp/DATA /mnt/DATA -o delay_connect
sshfs bob@192.168.1.16:/tmp/DATA /mnt/DATA -o uid=1002			-> (Setting Owner to a Single User and Group)
sshfs bob@192.168.1.16:/tmp/DATA /mnt/DATA -o gid=5005
sshfs bob@ubuntu-box-p:/tmp/DATA /mnt/DATA -o uid=1002 -o gid=5005
id -u bob
id -g bobgroup
local-username:remote-uid
cat > uid-mapping <<EOF
alice:1001
amy:1002
root:0
EOF
cat > gid-mapping <<EOF
alicegroup:201
amygroup:202
root:0
EOF
sshfs bob@192.168.1.16:/tmp/DATA /mnt/DATA -o idmap=file -o uidfile=uid-mapping -o gidfile=gid-mapping


-------------------------------- "No such file or directory" Error When Executing a Binary ---------------------
objdump -p binaryfile | grep NEEDED
ldd binaryfile
readelf -a binaryfile | grep NEEDED
readelf -a binaryfile | grep interpreter


------------------------------- What are .a and .so Files? ----------------------------
libraries
.a — stands for "archive"
.so — stands for "shared object"
ls -halF /usr/bin/xorg
gcc -Wall -c *.c
ar -cvq libfile.a *.o
ar -t libfile.a
gcc -o MyProgram *.o -L path/to/libdir -lfile.a

gcc -shared -o libfile.so *.o


---------------------------------- How to Remove Symbolic Links ------------------------
rm fileLink
rm dirLink
unlink fileLink 
find . -type l -name '2bDeleted*' | xargs -I{} rm "{}"


----------------------------- Rotating Logs With Logrotate in Linux ---------------------
sudo apt-get update
sudo apt-get install -y logrotate
logrotate log-rotation.conf
logrotate -f log-rotation.conf

daily, weekly, monthly, and yearly
/var/log/nginx/access.log {
    daily
}

/var/log/nginx/access.log {
    size 1M
}

/var/log/nginx/access.log {
    size 1M
    rotate 3
}

/var/log/nginx/access.log {
    size 1M
    maxage 5
}

/var/log/nginx/access.log {
    size 1M
    compress
}

/var/log/nginx/error.log {
    size 1M
    rotate 2
    mail
}

/var/log/nginx/error.log {
    size 1M
    rotate 2
    mail
    mailfirst
}



------------------------- Fixing the “Too many open files” Error in Linux -----------------------------
0 for stdin, 1 for stdout, and 2 for stderr
awk '{print $1}' /proc/sys/fs/file-nr				-> (Global Usage)
sudo lsof -p $(pidof caddy)							-> (Per-Process Usage)
Per-Session Limit
ulimit -Sn
ulimit -Hn
Per-Process Limit
pid=31540



------------------------ Fixing the “Command Not Found” Error When Using Sudo -----------------
PATH="$PATH:$HOME/bin"
sudo -E myscript
/etc/sudoers
Defaults  env_keep += "PATH"
cat /proc/sys/fs/file-max							-> (Global Limit)
ulimit -n 4096
ulimit -n
/etc/security/limits.conf
*         hard    nofile      500000
*         soft    nofile      500000
root      hard    nofile      500000
root      soft    nofile      500000
/etc/pam.d/common-session
session required pam_limits.so

$ sudo mkdir -p /etc/systemd/system/apache.service.d/
$ sudo tee /etc/systemd/system/apache.service.d/filelimit.conf <<EOF
[Service]
LimitNOFILE=500000
EOF

$ sudo systemctl daemon-reload
$ sudo systemctl restart apache.service

/etc/sysctl.conf 
fs.file-max = 500000
sysctl -p

-------------------------------- Mapping Hostnames with Ports in /etc/hosts ------------------------
cat /etc/hosts
127.0.0.1       localhost
127.0.1.1       DSpace-KYU
127.0.0.1    baeldung.com

/etc/nginx/conf.d/baeldung.conf
server {
    listen 80;

    server_name baeldung.com;

    location / {
        proxy_pass http://127.0.0.1:8080/;
    }
}
127.0.0.1:8080.

------------------------------ Kill All Members of a Process Group -----------------------------
ps -efj
ps -efj | egrep "PGID|children|parent"
kill -- -$PGID
kill -- -6389
kill -9 -6389
kill -SIGQUIT -6389

------------------------------- How to Find Which Process Was Killed by Linux OOM Killer ---------------------
journalctl --list-boots | \
    awk '{ print $1 }' | \
    xargs -I{} journalctl --utc --no-pager -b {} -kqg 'killed process' -o verbose --output-fields=MESSAGE
	
journalctl --utc -b -X -ke						-> (Interactive Use)

--------------------------------- The Most Common Flags in /proc/cpuinfo with Examples --------------------
ls -halF /proc
cat /proc/cpuinfo

----------------------------------- Linux Process States --------------------------------------
Running or Runnable (R)
Uninterruptible Sleep (D)
Interruptable Sleep (S)
Stopped (T)
Zombie (Z)

ps a										-> (Displaying Process State Using ps)
The first letter of the value under the STAT column indicates the state that the process is in
top 
At the bottom section of the output of the top command, we can find the S column, which shows the state of each process
cat /proc/$PID/status | grep State


---------------------------------------- Copying SSH Keys To Another Machine --------------------------
ssh-copy-id walusih@192.168.64.129


-------------------------------- Encrypting and Decrypting Directory in Linux ----------------------
apt-get install -y gnupg-utils
gpgtar --version
apt-get install -y encfs


------------------------------------ Sudo Command in Linux ------------------------
sudo 
/etc/sudoers
visudo 
baeldung ALL=(ALL) NOPASSWD:ALL
baeldung ALL=(ALL) NOPASSWD:/bin/mkdir,/bin/rmdir
usermod -aG sudo baeldung
sudo -v
echo $?
sudo -l -U guest
sudo -k
sudo -V
sudo -b


------------------------------ Why Should We Disable Root-login over SSH? -----------------------------
/etc/ssh/sshd_config
PermitRootLogin no
AllowUsers username
AllowGroups groupname

PasswordAuthentication no

----------------------------- Shell Script for Logging Into a SSH Server ------------------------------
./remote_login.exp 10.149.20.11 tools Bael@123 4455
sshpass -p 'Bael@123' ssh tools@10.149.20.11 -p4455 'hostname; df -h | grep sd; tail -2' 

ssh-keygen -t rsa
ssh-copy-id tools@10.149.20.11 -p4455

---------------------------------- Run a Script on Startup in Linux ----------------------------
#!/bin/sh
echo "Last reboot time: $(date)" > /etc/motd
chmod +x reboot_message.sh
crontab -e
@reboot sh /home/ec2-user/reboot_message.sh

/etc/rc.d/rc.local
sh /home/ec2-user/reboot_message.sh
chmod +x /etc/rc.d/rc.local

#! /bin/sh
# chkconfig: 345 99 10
case "$1" in
  start)
    # Executes our script
    sudo sh /home/ec2-user/reboot_message.sh
    ;;
  *)
    ;;
esac
exit 0
chkconfig --add service_wrapper.sh
update-rc.d service_wrapper.sh defaults

/etc/systemd/system
[Unit]
Description=Reboot message systemd service.

[Service]
Type=simple
ExecStart=/bin/bash /home/ec2-user/reboot_message.sh

[Install]
WantedBy=multi-user.target
chmod 644 /etc/systemd/system/reboot_message.service
systemctl enable reboot_message.service


---------------- Run a Java Application as a Service on Linux (walusih:*****) -------------------------
/etc/systemd/system
[Unit]
Description=My Java driven simple service
After=syslog.target network.target

[Service]
SuccessExitStatus=143

User=appuser
Group=appgroup

Type=simple

Environment="JAVA_HOME=/path/to/jvmdir"
WorkingDirectory=/path/to/app/workdir
ExecStart=${JAVA_HOME}/bin/java -jar javaapp.jar
ExecStop=/bin/kill -15 $MAINPID

[Install]
WantedBy=multi-user.target

wrapper script
#!/bin/bash

JAVA_HOME=/path/to/jvmdir
WORKDIR=/path/to/app/workdir
JAVA_OPTIONS=" -Xms256m -Xmx512m -server "
APP_OPTIONS=" -c /path/to/app.config -d /path/to/datadir "

cd $WORKDIR
"${JAVA_HOME}/bin/java" $JAVA_OPTIONS -jar javaapp.jar $APP_OPTIONS

[Unit]
Description=My Java forking service
After=syslog.target network.target
[Service]
SuccessExitStatus=143
User=appuser
Group=appgroup

Type=forking

ExecStart=/path/to/wrapper
ExecStop=/bin/kill -15 $MAINPID

[Install]
WantedBy=multi-user.target

javasimple.service or javaforking.service
sudo systemctl daemon-reload
sudo systemctl enable javasimple.service
sudo systemctl status javasimple.service


----------------------------- How to Load Environment Variables in a Cron Job -------------------------
* * * * * BASH_ENV=/etc/profile /home/baeldung/print_envs.sh

#!/bin/bash
printenv > /tmp/print_envs_result

#!/bin/bash

. /etc/profile
. ~/.bash_profile
. ~/.bashrc
export LEARNING_FROM=baeldung
* * * * * BASH_ENV=/home/baeldung/preload.sh /home/baeldung/print_envs.sh

* * * * * BASH_ENV=/etc/profile bash -c "printenv > /tmp/print_envs_result"


#!/bin/bash

. /etc/profile
. ~/.bash_profile
. ~/.bashrc
export LEARNING_FROM=baeldung

#now, we run the original job
printenv > /tmp/print_envs_result
* * * * * /home/baeldung/wrap_printenv.sh

* * * * * bash -l -c "printenv > /tmp/print_envs_result"
* * * * * BASH_ENV=~/.bashrc bash -l -c "printenv > /tmp/print_envs_result"


--------------------------------- How to Check Logs Using journalctl -------------------------------
journalctl --list­-boots
journalctl -b
journalctl -b -1
journalctl --sinc­e="2­021­-01-30 18:17:16"
journalctl --since "20 min ago"
journalctl -u netcfg
journalctl -u systemd-*
journalctl --user-unit my-application
jour­nalctl _UID=100
journalctl _PID=1
journalctl -p err..alert
journalctl -f
journalctl -f -u apache
journalctl -u apache -n 10
journalctl --no-pager
journalctl --no-pager | less -S
journalctl --vacuum­size=100M
journalctl --vacuum­time=2weeks
journalctl --disk-usage
usermod -a -G systemd-journal USER
journalctl -b -u docker -o json


---------------------------- How to Run a Script at a Certain Time on Linux ----------------------
dpkg -l cron
crontab -l

$ export EDITOR=vi
$ crontab -e

minute – 0 to 59
hour – 0 to 23
day of month – 1 to 31
month – 1 to 12
day of the week – 0 to 7, where 0 or 7 denotes Sunday, 1 is Monday, 2 is Tuesday, and so on, with 6 denoting Saturday

00 23 * * * /home/baeldung/backup.sh > /dev/null 2>&1
cat /etc/crontab
02-50/10 * * * * /home/baeldung/monitor-cpu.sh
@reboot, @hourly, @daily, @monthly, and @yearly

at 09:00 -f /home/baeldung/one-time-env-setup.sh
atq
batch


--------------------------- Configure a Systemd Service to Restart Periodically ---------------------
RuntimeMaxSec=180s
Restart=always
$ crontab -e
30 10 * * 1-5 /usr/bin/systemctl restart my-service.service


--------------------------- Configuring and Managing Core Dumps in Linux -----------------------------

last -n 5
last -n 5 -R
last -s yesterday -t today
last guest root
last -x
lastb

readelf -a binaryfile | grep ELF								-> (Checking application is 32bit)
sudo yum provides ld-linux.so.2

$ sudo apt-get install apt-file && apt-file update
$ sudo apt-file find ld-linux.so.2

sudo dnf install glibc.i686
sudo apt-get install libc6-i386


---------------- 25 Hardening Security Tips for Linux Servers ------------------------------------
https://www.tecmint.com/linux-server-hardening-security-tips/
netstat -tulpn
vi /etc/ssh/sshd_config
PermitRootLogin no
AllowUsers dspace
Protocol 2
/usr/sbin/sshd -t
sudo systemctl status sshd
sudo systemctl restart sshd
echo $(wget -qO - https://api.ipify.org)
sudo ufw allow 8282/tcp

/etc/modprobe.d/no-usb
install usb-storage /bin/true

Security-Enhanced Linux (SELinux)
sestatus
getenforce
setenforce enforcing
/etc/selinux/config

---------------------- Turn Off IPv6 --------------------
vi /etc/sysconfig/network
NETWORKING_IPV6=no
IPV6INIT=no

ls --ignore '[0-9]*' /proc
sysctl --all
cat /proc/sys/fs/file-max
printf 9223372036854775806 > /proc/sys/fs/file-max
sysctl fs.file-max
sysctl fs.file-max=9223372036854775807

/etc/sysctl.conf
net.ipv6.conf.all.disable_ipv6 = 1
sudo sysctl -p
$ sysctl net.ipv6.conf.all.disable_ipv6=1
$ sysctl net.ipv6.conf.default.disable_ipv6=1
$ sysctl net.ipv6.conf.eth0.disable_ipv6=1

ip address show eth0
sysctl net.ipv6.conf.eth0.disable_ipv6=1


chage -l username
passwd -l accountName
passwd -u accountName

/etc/sysctl.conf
Ignore ICMP request:
net.ipv4.icmp_echo_ignore_all = 1
Ignore Broadcast request:
net.ipv4.icmp_echo_ignore_broadcasts = 1
sysctl -p

------------------ How to Show Security Warning Message to SSH Unauthorized Users ---------------------
/etc/issue.net – Display a warning banner message before the password login prompt.
/etc/motd – Display a welcome banner message after the user has logged in.

sudo vi /etc/issue.net
sudo vi /etc/ssh/sshd_config
Banner /etc/issue.net 
sudo systemctl restart sshd
sudo vi /etc/motd


--------------- Dealing with History in Linux ---------------------
HISTFILE, HISTFILESIZE, and HISTSIZE.
history -w
history -c
TMOUT=300 (/etc/profile)
history 5
export HISTTIMEFORMAT="%c " (.bashrc:*****)

export HISTTIMEFORMAT="%Y-%m-%d %T " (.bashrc)

%d: Day
%m: Month
%y: Year
%H: Hour
%M: Minutes
%S: Seconds
%F: Full date (Y-M-D format)
%T: Time (H:M:S format)
%c: Complete date and timestamp (Day-D-M-Y H:M:S format)

!1		(to run the first command)
!-10	(to reuse the tenth last command)
!!		(to repeat the last command)
sudo !!
!sudo
!sudo:p
!?echo
set +o history		(To prevent recording commands in the history list, temporarily disable recording by using)
set -o history		(To re-enable recording, use:)
history -d 87
history -c			(Use the -c option to clear the whole history list:)
history -a OR 
history -w
Ctrl+R				(Search History)

HISTCONTROL=ignoreboth

vim -r .bashrc

w 
apt install sysdig
sysdig -c spy_users

--------------------------------- APT ------------------------------------
update 
upgrade 
full-upgrade 
install 
remove 
purge 
autoremove 
list 
search 
show 
edit-sources 

sudo apt upgrade lsof 
sudo apt update && sudo apt upgrade -y
sudo apt full-upgrade
sudo apt install ffmpeg
sudo apt download apache2
sudo apt remove ffmpeg 
sudo apt purge ffmpeg
sudo apt autoremove
sudo apt remove apache2 mysql-server+		(to install my mysql-server, but remove apache2, execute:)
apt list | more
apt list --installed
apt list --upgradeable
apt list lsof
apt depends lsof
sudo apt search lsof
apt search --names-only lsof
apt show lsof

-------------- How to keep processes running after ending ssh session? -------------
https://www.tecmint.com/keep-remote-ssh-sessions-running-after-disconnection/
ssh into the remote machine
start tmux by typing tmux into the shell
start the process you want inside the started tmux session
leave/detach the tmux session by typing Ctrl+b and then d
tmux attach

nohup long-running-command &
disown -a && exit

$ ping tecmint.com > pingout &
$ jobs -l
$ disown -h %1
$ ps -ef | grep ping

$ setsid sleep 10m
$ ps -ef | grep sleep

Establish SSH connection: ssh user@host
Run the desired command to start the process
Press Ctrl+Z to pause the process
Run bg to put the paused process in the background and resume it.
Run disown [pid] (process ID is optional, defaults to last process) to disown the process. To get a list of jobs simply type jobs before.
Exit the SSH session by running logout

nohup find / -type f $gt; files_in_system.out 2>1 &
nohup aria2c -i java-prog-masterclass-4-soft-devs &
echo "perl /home/username/www/script.cgi" | at now + 1 minute
'fg %JOBID'
fg

Shell builtins - Commands built directly into the shell with the fastest execution.
Shell functions - Shell scripts (grouped commands).
Aliases - Custom command shortcuts.
Executable programs - Compiled and installed programs or scripts.

dnf list ansible-core
dnf info ansible-core
dnf install ansible-core

insights-client --register
https://console.redhat.com/insights/inventory/01316251-c540-44e2-92e1-8be42e15f2b0
https://console.redhat.com/insights/

--------- https://computingforgeeks.com/how-to-install-mariadb-server-on-centos-rhel-linux/ ------------
--------------------------- How To Install MariaDB 10.6 on CentOS 8 / RHEL 8 -----------------------
sudo dnf -y upgrade
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.6
sudo dnf install boost-program-options -y
sudo dnf module reset mariadb -y
sudo yum install MariaDB-server MariaDB-client MariaDB-backup
sudo systemctl enable --now mariadb
systemctl status mariadb
sudo mariadb-secure-installation
mysql -u root -p

dnf install ansible-core
ansible --version
dnf list ansible-core
dnf info ansible-core


-------------- https://www.linuxshelltips.com/install-mariadb-rhel-9/ -------------
dnf install mariadb-server mariadb-backup mariadb-common
systemctl start mariadb
systemctl enable mariadb
systemctl status mariadb
mysql_secure_installation

sudo subscription-manager list --installed
subscription-manager register --username=username --password=password--auto-attach

ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;
SET PASSWORD = PASSWORD('foo');

CREATE USER username@hostname IDENTIFIED VIA unix_socket;
GRANT SELECT ON db.* TO username@hostname IDENTIFIED VIA unix_socket;

SELECT user,authentication_string,plugin,host FROM mysql.user;

CREATE DATABASE linuxshelltips_db;
CREATE USER linuxshelltips_user@localhost IDENTIFIED BY "secure_password";
GRANT ALL ON linuxshelltips_db.* TO linuxshelltips_user@localhost;
GRANT ALL PRIVILEGES ON *.* TO 'your_user'@'localhost';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS database_name;
DROP DATABASE IF EXISTS database_name;

CREATE TABLE IF NOT EXISTS table_name(
column_list
);

DROP TABLE IF EXISTS table_name;
ALTER TABLE table_name ADD COLUMN column_name;
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE table_name ADD PRIMARY KEY (column_name);
ALTER TABLE table_name DROP PRIMARY KEY;
DESCRIBE table_name;
DESCRIBE table_name table_column;
SELECT DISTINCT COLUMN FROM table_name;
INSERT INTO table_name(column_list) VALUES(value_list); 
Update table_name SET column1=value1;

sudo mysqldump -u [db_username] -p[db_password] [database_name] > [generated_db_backup.sql]
sudo mysqldump -u root -pid@pa55word demodb > demodb.sql
sudo mysqldump -u root -pid@pa55word --databases demodb mysql > demodb_mysql.sql
sudo mysqldump -u root -pid@pa55word --all-databases > all_databases.sql
sudo mysqldump -u root -pid@pa55word demodb tasks > demodb_tasks.sql
sudo mysqldump -u root -pid@pa55word mysql user host > mysql_user+host.sql

sudo mysql -u root -pid@pa55word demodb < demodb.sql 
sudo mysqldump -h 192.168.84.130 -u remote_user -p dbdemo > dbdemo.sql  

SHOW GRANTS FOR username;

ubuntu config --default-user root
ubuntu2004 config --default-user root

RSVP 0775653730,0707262156,0781423454.

0772465617
0778930877
0772920886
0702330493
0703981227
------------------------------------------------------------------------------------------------
(( $(rpm -E %{rhel}) >= 8 )) && dnf remove $(dnf repoquery --installonly --latest-limit=-2 -q)

https://wiki.lib.sun.ac.za/index.php/SUNScholar/Handle_Server
https://guillaume-martin.github.io/postgresql-backup.html

subscription-manager list --installed

sudo apt purge nombre-del-paquete
sudo apt autoremove
sudo apt autoremove --purge
	
sudo yum remove vlc
sudo yum remove @"Group Name"

!sudo :p
ssh-keygen -t rsa
ssh-copy-id sheena@192.168.0.11

106m 6 yrs () 81.9 71.6 

rsync -zvh backup.tar.gz /tmp/backups/
rsync -avzh /root/rpmpkgs /tmp/backups/
rsync -avzh /root/rpmpkgs root@192.168.0.141:/root/
rsync -avzh /HOME/Build/dspace/backups root@10.1.1.24:/samba/walusih/BACKUPS/DSPACE

./rsync-copier-root.sh 1> /tmp/logout.txt 2> /tmp/logerr.txt


subscription-manager list
http://developers.redhat.com/
https://www.redhat.com/wapps/ugc/register.html

https://developers.redhat.com/articles/renew-your-red-hat-developer-program-subscription#you_can_t_renew_your_subscription__but_you_can_re_register
https://developers.redhat.com/articles/renew-your-red-hat-developer-program-subscription#how_to_re_register_for_your_red_hat_developer_subscription
Activation Keys for Organization ID: 14495966
[root@RHEL-8 ~]# subscription-manager register --org=14495966 --activationkey=Walusimbi_Herbert_Henry
The system has been registered with ID: 15320539-affe-46bf-8110-a5ce93ba97e2
The registered system name is: RHEL-8
Installed Product Current Status:
Product Name: Red Hat Ansible Engine
Status:       Subscribed

Product Name: Red Hat Enterprise Linux for x86_64
Status:       Subscribed

---------------- Top 10 Largest Files on Linux System ------------
du -hsx * | sort -rh | head -10	(*****)
du -a | sort -n -r | head -n 10
find . -printf '%s %p\n'| sort -nr | head -10
find / -type f -printf '%s %p\n'| sort -nr | head -10
find / -type f -iname "*.mp4" -printf '%s %p\n'| sort -nr | head -10
du -cks * | sort -rn | head
du -cks -- * | sort -rn | head
du -a / | sort -n -r | head -n 20
du -a / 2>/dev/null | sort -n -r | head -n 20
du -hs * | sort -rh | head -10
du -Sh | sort -rh | head -10
find -type f -exec du -Sh {} + | sort -rh | head -n 10 (*****)
find / -type f -print0 | xargs -0 du -h | sort -rh | head -n 10	(*****)
find / -type f -exec du -Sh {} + | sort -rh | head -n 10

------------------------ https://www.tecmint.com/upgrade-rhel-8-to-rhel-9/ ----------------------
https://www.tecmint.com/download-install-rhel-9-free/
systemctl daemon-reload
sudo subscription-manager list --installed
sudo subscription-manager repos --enable rhel-8-for-x86_64-baseos-rpms --enable rhel-8-for-x86_64-appstream-rpms
sudo subscription-manager release --set 8.6
sudo dnf update
sudo reboot (-- added from RHEL doc)
sudo dnf install leapp-upgrade -y
sudo dnf versionlock clear
sudo nano /etc/firewalld/firewalld.conf
sudo leapp preupgrade --target 9.0
{/var/log/leapp/leapp-preupgrade.log, /var/log/leapp/leapp-report.json, /var/log/leapp/leapp-report.txt, /var/log/leapp/answerfile}
sudo leapp upgrade --target 9.0

Install    157 Packages
Upgrade    850 Packages
Remove      54 Packages
Downgrade   17 Packages

Total size: 1.1 G
Total download size: 1.1 G
dnf clean packages

cat /etc/redhat-release
subscription-manager list --installed

sudo subscription-manager register --username=username --password=password


vi /etc/systemd/system/dspace-handle.service
[Unit]
Description=ethtool script

[Service]
ExecStart=/HOME/Build/dspace/Build/bin/start-handle-server

[Install]
WantedBy=multi-user.target


grep -ic cron /var/log/* | grep -v :0

/HOME/Build/dspace/Build/bin/start-handle-server

$ systemctl edit cron.service
or
$ systemctl edit --full cron.service

sudo apt list --upgradable
sudo apt --purge autoremove
sudo do-release-upgrade -d
sudo apt update && sudo apt dist-upgrade
sudo update-manager

sudo apt-get install lsb-core

Ubuntu-20.04 config --default-user root
ubuntu2004 config --default-user root
passwd walusih 
ubuntu2004 config --default-user walusih
https://medium.com/@gilad215/ssh-into-a-wsl2-host-remotely-and-reliabley-578a12c91a2
sudo ALL=NOPASSWD: /usr/sbin/service ssh *

https://jmmv.dev/2022/02/wsl-ssh-access.html
https://www.maketecheasier.com/edit-sudoers-file-linux/

sudo apt-get dist-upgrade

LFCS || LFCE
dig +short txt ch whoami.cloudflare @1.0.0.1
(Invoke-WebRequest ifconfig.me/ip).Content.Trim()
196.43.144.6

ip link 
ip a 
/etc/netplan/00-installer-config.yaml -- 10.1.1.120
sudo netplan try
sudo netplan apply
ip addr show dev eth0
ip add show
ip route show
sudo cp -a /etc/netplan/00-installer-config.yaml{,.orig}

grep -irI '10.1.1.45' /
/etc/network/interfaces  -- {10.1.1.45}

hostnamectl set-hostname AsteriskPBX
yum whatprovides lsb_release
rpm -E %{rhel}
cat /etc/centos-release
cat /etc/*elease
rpm --eval '%{centos_ver}'

python3 -c 'import distro; print(distro.linux_distribution())'
#!/usr/bin/python3
import distro 
print(distro.linux_distribution)

_DEVCO~1.pdf - RHCE
Media Player for .swf Files -> D:\STUDY\SCRIPTING\LinuxCBT.Reg-Exp.Edition

yum repolist
ls /etc/yum.repos.d
yum list ansible 
yum --showduplictes list ansible

https://www.cyberciti.biz/howto/upgrade-migrate-from-centos-8-to-centos-stream-conversion/
sudo dnf in centos-release-stream
sudo dnf swap centos-linux-repos centos-stream-repos
sudo dnf repolist
sudo dnf distro-sync
sudo systemctl reboot

https://www.tecmint.com/upgrade-centos-7-to-centos-8/

sudo dnf makecache
sudo dnf check-update
sudo dnf update
sudo dnf upgrade

sudo systemctl enable --now cockpit.socket

https://docs.fedoraproject.org/en-US/quick-docs/dnf-system-upgrade/

wget -c --no-check-certificate https://mirror.netsite.dk/centos-stream/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-dvd1.iso
sha256sum CentOS-Stream-9-latest-x86_64-boot.iso
wget -c --no-check-certificate https://mirror.netsite.dk/centos-stream/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-dvd1.iso

https://mirror.netsite.dk/centos-stream/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-boot.iso


sudo dnf list extras
sudo dnf remove $(sudo dnf repoquery --extras --exclude=kernel,kernel-\*)
sudo dnf autoremove

https://mirrors.centos.org/mirrorlist?path=/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-dvd1.iso&redirect=1&protocol=https

/etc/systemd/system
my_app.service 
[Unit]
Description=My Python Web Application

[Service]
ExecStart=/usr/bin/python3 /opt/code/my_app.py 
ExecStartPre=/opt/code/configure_db.sh
ExecStartPost=/opt/code/email_status.sh
Restart=always

[Install]
WantedBy=multi-user.target
systemctl daemon-reload
systemctl start my_app
systemctl status my_app
systemctl stop my_app
systemctl enable my_app

"ansible ALL=(root) NOPASSWD: ALL"

xauth		{Using authority file /HOME/Build/walusih/.Xauthority}
xauth list

usermod -aG sudo username
usermod -aG sudo dspace
su - username
EDITOR=nano visudo
dspace ALL=(ALL) NOPASSWD:ALL
username ALL=(ALL) NOPASSWD:/bin/mkdir,/bin/rmdir
echo "username  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/username

sudo yum updateinfo.
sudo dnf check-update
sudo dnf update
reboot 

-------------------------------------------------------------------------------------------------------
https://computingforgeeks.com/how-to-install-latest-kernel-on-centos-linux/
https://www.linuxcapable.com/how-to-install-linux-kernel-5-15-on-centos-8-stream/
dnf update -y
uname -r
dnf install -y https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
dnf makecache
dnf repolist
dnf --disablerepo="*" --enablerepo="elrepo-kernel" list available | grep kernel-ml
dnf --disablerepo="*" --enablerepo="elrepo-kernel" list available | grep kernel-lt
dnf --enablerepo="elrepo-kernel" install -y kernel-ml
sudo dnf --enablerepo=elrepo-kernel install kernel-ml kernel-ml-devel
dnf --enablerepo="elrepo-kernel" install -y kernel-lt
#mainline
sudo dnf --enablerepo=elrepo-kernel install kernel-ml-{devel,headers}
#lt
sudo dnf --enablerepo=elrepo-kernel install kernel-lt-{devel,headers}
systemctl reboot

dnf remove -y kernel-ml
sudo dnf remove kernel-ml kernel-ml-{devel,headers}
sudo dnf remove kernel-lt kernel-lt-{devel,headers}

sudo dnf upgrade --refresh -y

uname -msr 
hostnamectl

10.40.0.11:/sharednfs

196.43.185.3
------------------------ Checking Kernel Versions --------------------------------
find /boot/vmli*
dpkg --list | grep linux-image
rpm -qa kernel
rpm -qa | grep -i kernel  (***)
dnf list installed kernel
dnf list kernel
dnf install kernel kernel-tools kernel-tools-libs
dnf remove kernel

#####################SSH Passwordless Login Using SSH Keygen in 5 Easy Steps##############
ssh-keygen -t rsa
cat .ssh/id_rsa.pub | ssh sheena@192.168.0.11 'cat >> .ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh root@10.2.0.10 'cat >> .ssh/authorized_keys'

Symbol Meaning
- Regular file
d Directory
l Link
c Special file
s Socket
p Named pipe
b Block device

https://www.pugetsystems.com/labs/support-software/Preparing-For-Windows-11-2175/
https://www.pugetsystems.com/labs/support-software/Windows-11-Is-Coming-We-Have-Outlined-Some-of-the-More-Exciting-Features-2168/
------------------------------ BEGINNER’S GUIDE FOR LINUX – Start Learning Linux in Minutes ------------------------
https://www.tecmint.com/free-online-linux-learning-guide-for-beginners/
Become a Linux Certified System Administrator (https://shareasale.com/r.cfm?b=1226423&u=1260899&m=59485&urllink=&afftrack=)
https://training.linuxfoundation.org/certification/linux-foundation-certified-sysadmin-lfcs/?SSAID=1260899&sscid=71k5_gb7ic
https://myprofile.lfx.linuxfoundation.org/
https://www.linuxfoundation.org/
https://www.tecmint.com/run-execute-mysql-mariadb-queries-directly-linux-commandline/


---------------------------------- Introduction to Linux {!Finished }---------------------------------
export PATH=$PATH:/opt/acroread/bin
which -a ls							:alias ls (Equivalent)
find . -name "*.tmp" -exec rm {} \;
ln -s targetfile linkname
ln -s /opt/mp3/Queen/ Queen
umask


command & 		Run this command in the background (release the terminal)
jobs 			Show commands running in the background.
Ctrl+Z 			Suspend (stop, but not quit) a process running in the foreground (suspend).
Ctrl+C 			Interrupt (terminate and quit) a process running in the foreground.
%n 				Every process running in the background gets a number assigned to it. By using the % expression a job can be referred to using its number, for instance fg %2.
bg 				Reactivate a suspended program in the background.
fg 				Puts the job back in the foreground.
kill 			End a process (also see Shell Builtin Commands in the Info pages of bash)

ps -ef 
ps aux 
kill -9 PID
at tomorrow + 2 days
pstree
write walusih pts/1
who -w
ls > dirlist 2>&1
ls 2>&1 > dirlist
make all 2> /dev/pts/7
uptime | tee -a file2
s -la | sort -nk 5
vim :help 
:w newfile							
chmod 700 dirname									:Make directories private
ulimit -a
#!/bin/bash
who | cut -d " " -f 1 | sort -u
grep cdrom /etc/fstab
lsof
tar cvf images-in-a-dir.tar images/
tar cvf images-in-a-dir.tar images/
tar tvf images/images-without-dir.tar
tar xvf images/images-without-a-dir.tar
rsync -avz /HOME/Build/karl/ /mnt/usbstore
ip addr show
netstat -nr
ip route show
whois cnn.com
uname -n 
scp Schedule.sdc.gz blob:/var/tmp/

who -r 											:To check the current run-level
time make

cat .ssh/id_rsa.pub | ssh sheena@192.168.0.11 'cat >> .ssh/authorized_keys'
cat .ssh/id_rsa.pub | ssh walusih@192.168.64.131 'cat >> .ssh/authorized_keys'
ssh sheena@192.168.0.11 "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"  :OR
ssh-copy-id tecmint@192.168.64.131

Ubuntu-20.04   :walusih@192.168.43.252:0.0   -> walas123                       

https://www.microsoft.com/en-us/p/kali-linux/9pkr34tncv07?activetab=pivot:overviewtab
https://www.sitepoint.com/wsl2/
https://deals.tecmint.com/sales/complete-citrix-package?utm_source=tecmint.com&utm_medium=referral&utm_campaign=complete-citrix-package_081916  (Complete Citrix Enterprise Bundle)
cat id_rsa.pub | ssh walas@192.168.64.1 "cat >> C:\Users\walas\.ssh\authorized_keys"
172.18.165.33
192.168.43.252 (20.04)

https://winaero.com/reset-password-wsl-linux-distro-windows-10/
WSL (Windows Subsystem for Linux)  						:Ubuntu 16.04 already installed on ma Win 10 Machine 
ubuntu config --default-user root
ubuntu 
passwd walusih 
ubuntu config --default-user walusih
wsl -l
wsl -d Ubuntu-20.04 --user root

https://medium.com/@TheLittleNaruto/reset-wsl-password-609037c2d6c6
wsl -u root
wslconfig /l
wsl -d Ubuntu -u walusih
wsl -l --all
wsl --setdefault <DistributionName>, or wsl -s <DistributionName
\\wsl$\											:Accessing Linux from Windows

https://winaero.com/linux-distros-microsoft-store-windows-10/
Win + R and type optionalfeatures.exe
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux


Top Gear S30E02 (Watched)

Key or key combination Function
Ctrl+A Move cursor to the beginning of the command line.
Ctrl+C End a running program and return the prompt, see Chapter 4.
Ctrl+D Log out of the current shell session, equal to typing exit or logout.
Ctrl+E Move cursor to the end of the command line.
Ctrl+H Generate backspace character.
Ctrl+L Clear this terminal.
Ctrl+R Search command history, see Section 3.3.3.4.
Ctrl+Z Suspend a program, see Chapter 4

file filename 
info command
apropos string

route -n
ip a
ifconfig 

# ifconfig eth0 add 192.168.80.174
# ifconfig eth0 del 192.168.80.174

# ip a add 192.168.80.174 dev eth0
# ip a del 192.168.80.174 dev eth0

ifconfig eth0 hw ether 00:0c:29:33:4e:aa
ip link set dev eth0 address 00:0c:29:33:4e:aa

ifconfig eth0 down
ifconfig eth0 up

ip link set eth0 down
ip link set eth0 


/boot/grub2/grub2.cfg
/sbin/init 
/etc/fstab
/boot

/etc/systemd/system/default.target
multi-user.target -> SysV init run level 5 

poweroff.target (runlevel 0): Poweroff or Shutdown the system.
rescue.target (runlevel 1): launches a rescue shell session.
multi-user.target (runlevel 2,3,4): Configures the system to a non-graphical (console) multi-user system.
graphical.target (runlevel 5): Set the system to use a graphical multi-user interface with network services.
reboot.target (runlevel 6): reboots the system.

# multi-user.target: analogous to runlevel 3
# graphical.target: analogous to runlevel 5

systemctl get-default								:To view current default target, run:
systemctl set-default TARGET.target					:To set a default target, run:

systemctl get-default								:checking the target runlevel
init runlevel-value									:changing the target runlevel
sudo yum install dnf-plugins-core
sudo dnf copr enable konimex/neofetch
sudo dnf install neofetch

https://www.tecmint.com/neofetch-shows-linux-system-information-with-logo/

/boot/vmlinuz : The Linux Kernel file.
/dev/hda : Device file for the first IDE HDD (Hard Disk Drive)
/dev/hdc : Device file for the IDE Cdrom, commonly
/dev/null : A pseudo device, that don’t exist. Sometime garbage output is redirected to /dev/null, so that it gets lost, forever.
/etc/bashrc : Contains system defaults and aliases used by bash shell.
/etc/crontab : A shell script to run specified commands on a predefined time Interval.
/etc/exports : Information of the file system available on network.
/etc/fstab : Information of Disk Drive and their mount point.
/etc/group : Information of Security Group.
/etc/grub.conf : grub bootloader configuration file.
/etc/init.d : Service startup Script.
/etc/lilo.conf : lilo bootloader configuration file.
/etc/hosts : Information of Ip addresses and corresponding host names.
/etc/hosts.allow : List of hosts allowed to access services on the local machine.
/etc/host.deny : List of hosts denied to access services on the local machine.
/etc/inittab : INIT process and their interaction at various run level.
/etc/issue : Allows to edit the pre-login message.
/etc/modules.conf : Configuration files for system modules.
/etc/motd : motd stands for Message Of The Day, The Message users gets upon login.
/etc/mtab : Currently mounted blocks information.
/etc/passwd : Contains password of system users in a shadow file, a security implementation.
/etc/printcap : Printer Information
/etc/profile : Bash shell defaults
/etc/profile.d : Application script, executed after login.
/etc/rc.d : Information about run level specific script.
/etc/rc.d/init.d : Run Level Initialisation Script.
/etc/resolv.conf : Domain Name Servers (DNS) being used by System.
/etc/securetty : Terminal List, where root login is possible.
/etc/skel : Script that populates new user HOME/Build directory.
/etc/termcap : An ASCII file that defines the behaviour of Terminal, console and printers.
/etc/X11 : Configuration files of X-window System.
/usr/bin : Normal user executable commands.
/usr/bin/X11 : Binaries of X windows System.
/usr/include : Contains include files used by ‘c‘ program.
/usr/share : Shared directories of man files, info files, etc.
/usr/lib : Library files which are required during program compilation.
/usr/sbin : Commands for Super User, for System Administration.
/proc/cpuinfo : CPU Information
/proc/filesystems : File-system Information being used currently.
/proc/interrupts : Information about the current interrupts being utilised currently.
/proc/ioports : Contains all the Input/Output addresses used by devices on the server.
/proc/meminfo : Memory Usages Information.
/proc/modules : Currently using kernel module.
/proc/mount : Mounted File-system Information.
/proc/stat : Detailed Statistics of the current System.
/proc/swaps : Swap File Information.
/version : Linux Version Information.
/var/log/lastlog : log of last boot process.
/var/log/messages : log of messages produced by syslog daemon at boot.
/var/log/wtmp : list login time and duration of each user on the system currently.


------------------------------ 25 Hardening Security Tips for Linux Servers ----------------------
https://www.tecmint.com/linux-server-hardening-security-tips/
https://www.tecmint.com/password-protect-grub-in-linux/
https://www.tecmint.com/chkconfig-command-examples/
https://www.tecmint.com/20-practical-examples-of-rpm-commands-in-linux/
https://www.tecmint.com/20-linux-yum-yellowdog-updater-modified-commands-for-package-mangement/
https://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/
https://www.tecmint.com/20-netstat-commands-for-linux-network-management/
https://www.tecmint.com/5-best-practices-to-secure-and-protect-ssh-server/
https://www.tecmint.com/11-cron-scheduling-task-examples-in-linux/
https://www.tecmint.com/basic-guide-on-iptables-linux-firewall-tips-commands/
https://www.tecmint.com/protect-ssh-logins-with-ssh-motd-banner-messages
https://www.tecmint.com/how-to-monitor-user-activity-with-psacct-or-acct-tools
https://www.tecmint.com/create-nic-channel-bonding-in-redhat-centos-fedora/

/sbin/chkconfig --list |grep '3:on'
chkconfig serviceName off
systemctl list-dependencies [target]
systemctl list-unit-files

yum -y remove package-name

netstat -tulpn

visudo			:/etc/sudoers
vi /etc/ssh/sshd_config
PermitRootLogin no
AllowUsers username
Protocol 2

yum updates
yum check-update

/etc/cron.allow 
/etc/cron.deny
echo ALL >> /etc/cron.deny

echo install usb-storage /bin/true >> /etc/modprobe.d/no-usb 		:will not detect USB storage

getenforce
sestatus															:should be Enforcing 
setenforce enforcing

/etc/inittab														:and set run level to 3
yum groupremove "X Window System"

vi /etc/sysconfig/network											:Disable IPv6
NETWORKING_IPV6=no
IPV6INIT=no

/etc/security/opasswd
/etc/pam.d/system-auth
auth        sufficient    pam_unix.so likeauth nullok				:Add the following line to ‘auth‘ section
password   sufficient    pam_unix.so nullok use_authtok md5 shadow remember=5	:Add the following line to ‘password‘ section to disallow a user from re-using last 5 password of his or her

chage -l username
chage -M 60 username
chage -M 60 -m 7 -W 7 userName										:-M Set maximum number of days,-m Set minimum number of days
-W Set the number of days of warning

passwd -l accountName												:Lock and Unlock Account Manually
passwd -u accountName												:Unlock

vi /etc/pam.d/system-auth											:Enforcing Stronger Passwords
/lib/security/$ISA/pam_cracklib.so retry=3 minlen=8 lcredit=-1 ucredit=-2 dcredit=-2 ocredit=-1		
:(lcredit, ucredit, dcredit and/or ocredit respectively lower-case, upper-case, digit and other)

/etc/inittab
# Trap CTRL-ALT-DELETE
#ca::ctrlaltdel:/sbin/shutdown -t3 -r now

cat /etc/shadow | awk -F: '($2==""){print $1}'						:Checking Accounts for Empty Passwords

vi /etc/fstab
LABEL=/boot     /boot     ext2     defaults,ro     1 2

vi /etc/sysctl.conf
Ignore ICMP request:
net.ipv4.icmp_echo_ignore_all = 1

Ignore Broadcast request:
net.ipv4.icmp_echo_ignore_broadcasts = 1

sysctl -p												:Load new settings or changes, by running following command

ls -F													:lists folders with / at the end
ls -a													:List Hidden Files starting with '.'
ls -R													:Recursively list Sub-Directories
ls -lS													:Sort Files by File Size
ls -i													:Display Inode number of File or Directory
ls --version
ls --help
ls -l /tmp												:List Directory Information (contents)
ls -ld /tmp/											:Lists info of the /tmp dir
ls -n													:Display UID and GID of Files

cd --										        :Show last working directory from where we moved (use ‘–‘ switch) as shown.
cd -													:Switch back to previous directory where you working earlier.
cd ~ 													:Move to users HOME/Build directory from anywhere

dir /etc												:Output of the dir command with the /etc directory file is as follows
dir -1 /etc												:To list one file per line use -1 option as follows.
dir -al										:View all files in a directory including hidden files, -l 2 4mat output as a list
dir -dl /etc											:View directory entries instead of content
dir -il													:View index number of files
dir -shl												:List files and their allocated sizes in blocks
dir -ashlS /HOME/Build/kone
dir -ashlt /HOME/Build/kone
dir -ahgG /HOME/Build/kone									:List files without owner or group owner
dir -al --author /HOME/Build/kone
dir -l --group-directories-first						:List directories before other files
dir -R													:List Directories Recursively
dir -nl --author										:View user and group IDs instead of names
dir -am													:View entries separated by commas

Touch Command Options
-a, change the access time only
-c, if the file does not exist, do not create it
-d, update the access and modification times
-m, change the modification time only
-r, use the access and modification times of file
-t, creates a file using a specified time

https://www.tecmint.com/advanced-copy-command-shows-progress-bar-while-copying-files/

cat -n song.txt											:Display Line Numbers in File

df -ah 													:Display disk information for the whole system
df -hT /HOME/Build											:Display Information of /HOME/Build File System

du -sh /HOME/Build/tecmint
du -ah /HOME/Build/tecmint

find . -name tecmint.txt								:Find Files Using Name in Current Directory
find /HOME/Build -name tecmint.txt							:Find Files Under HOME/Build Directory
find /HOME/Build -iname tecmint.txt							:Find Files Using Name and Ignoring Case
find / -type d -name Tecmint							:Find Directories Using Name
find . -type f -name tecmint.php				:Find all php files whose name is tecmint.php in a current working directory.
find . -type f -name "*.php"							:Find all PHP Files in Directory

find . -type f -perm 0777 -print						:Find Files With 777 Permissions
find / -type f ! -perm 777								:Find Files Without 777 Permissions
find / -perm 2644										:Find all the SGID bit files whose permissions set to 644.
find / -perm 1551										:Find all the Sticky Bit set files whose permission are 551.
find / -perm /u=s										:Find all SUID set files
find / -perm /g=s										:Find all SGID set files.
find / -perm /u=r										:Find all Read Only files.
find / -perm /a=x										:Find all Executable files.
find / -type f -perm 0777 -print -exec chmod 644 {} \;	:Find all 777 permission files and use chmod command to set permissions to 644
find / -type d -perm 777 -print -exec chmod 755 {} \;	:Find all 777 permission directories and use chmod command to set permissions to 755
find . -type f -name "tecmint.txt" -exec rm -f {} \;	:To find a single file called tecmint.txt and remove it.
find . -type f -name "*.txt" -exec rm -f {} \;			:To find and remove multiple files such as .mp3 or .txt, then use.
find /tmp -type f -empty								:To find all empty files under a certain path.
find /tmp -type d -empty								:To file all empty directories under a certain path.
find /tmp -type f -name ".*"							:To find all hidden files, use the below command.
find / -user root -name tecmint.txt		:To find all or single file called tecmint.txt under / root directory of owner root.
find /HOME/Build -user tecmint								:To find all files that belong to user Tecmint under /HOME/Build directory.
find /HOME/Build -group developer								:Find all Files Based on Group
find /HOME/Build -user tecmint -iname "*.txt"					:To find all .txt files of user Tecmint under /HOME/Build directory.
find / -mtime 50										:To find all the files which are modified 50 days back.
find / -atime 50										:To find all the files which are accessed 50 days back.
find / -mtime +50 –mtime -100							:Find Last 50-100 Days Modified Files
find / -cmin -60										:Find Changed Files in Last 1 Hour
find / -mmin -60										:Find Modified Files in Last 1 Hour
find / -amin -60										:Find Accessed Files in Last 1 Hour
find / -size 50M										:To find all 50MB files, use.
find / -size +50M -size -100M							:Find Size between 50MB – 100MB
find / -type f -size +100M -exec rm -f {} \;			:Find and Delete 100MB Files
find / -type f -name *.mp3 -size +10M -exec rm {} \;	:Find all .mp3 files with more than 10MB and delete them using one single command

dpkg -l | grep -i python
grep –v “#”  /etc/apache2/sites-available/default-ssl
find . –name “*.mp3” | grep –i JayZ | grep –vi “remix”
ifconfig | grep –A 4 eth0								:Display Number of Lines Before or After Search String
ifconfig | grep  -B 2 UP
ifconfig | grep –C 2 lo									:Prints Number of Lines Around Match
ifconfig | grep –c inet6								:Count Number of Matches
grep –n “main” setup..py
grep –r “function” *
ifconfig | grep –w “RUNNING”
zgrep –i error /var/log/syslog.2.gz

cat /proc/sys/fs/file-max
ulimit -Hn												:Hard Limit
ulimit -Sn												:Soft Limit

sysctl -w fs.file-max=500000
cat /proc/sys/fs/file-max
vi /etc/sysctl.conf										:fs.file-max=500000
sysctl -p
vi /etc/security/limits.conf
marin        hard nofile 4096
marin        soft nofile 1024

MUL=$(( 5 * 2 )); echo $MUL								:Using Bash Shell for Calculations
expr 5 \* 3
expr 8 \<= 5
NUM=$(expr $NUM + 2)
expr length "This is Tecmint.com"
echo '(6 * 2) - 5' | bc
echo '12/5' | bc -l
awk 'BEGIN { a = 6; b = 2; print "(a *  b) = ", (a * b) }'
echo $((3+4*7+4/2))
factor 110												:Decompose Prime Factors

curl -L https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -o fast
wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O fast
chmod +x fast
./fast

sudo chattr +i /backups/passwd							:How to Make File Undeletable in Linux
sudo chattr +i -V /backups/passwd
lsattr /backups/passwd 									:To view attributes of a file, use the lsattr command as shown
sudo chattr +i -RV /backups/							:How to Recursively Make Directory Undeletable in Linux
sudo chattr -i /backups/passwd							:To make a file mutable again

ls -1 *.sh
ls -1 *.sh | xargs
ls *.sh | xargs wc -l	    							#count number of lines in each file
ls *.sh | xargs wc -w	    							#count number of words in each file
ls *.sh | xargs wc -c	    							#count number of characters in each file
ls *.sh | xargs wc	    								#count lines, words and characters in each file
find . -name "All" -type d -print0 | xargs  -0 /bin/rm -rf "{}"
ps -eo cmd,pid,ppid,%mem,%cpu --sort=-%mem | head | tee topprocs.txt
ps -eo cmd,pid,ppid,%mem,%cpu --sort=-%mem | head | tee -a topprocs.txt

echo /HOME/Build/aaronkilik/test/ /HOME/Build/aaronkilik/tmp | xargs -n 1 cp -v /HOME/Build/aaronkilik/bin/sys_info.sh	:Copy One File to Multiple 

find Files -depth
find Files -depth | xargs -n 1 rename -v 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;		:to rename all files or subdirectories in a particular directory to lowercase as follows
for i in ./*; do mv $i ${i,,}; done

tree -iLf 1											:How to Count Number of Files and Subdirectories inside a Given Directory
tree -iLf 1 /var/log
tree -iLf 1 ISOs										:-a counts hidden files too
du -a /HOME/Build | sort -n -r | head -n 5					:How to Find Biggest Files and Directories in Linux
du -a | sort -n -r | head -n 5					:If you want to display the biggest directories in the current working director
du -hs * | sort -rh | head -5					: you might want to display the largest files in KB, MB, or GB.
du -Sh | sort -rh | head -5						:To display the largest folders/files including the sub-directories
find -type f -exec du -Sh {} + | sort -rh | head -n 5	:Find Out Top File Sizes Only
find /HOME/Build/tecmint/Downloads/ -type f -exec du -Sh {} + | sort -rh | head -n 5  	:OR
find /HOME/Build/tecmint/Downloads/ -type f -printf "%s %p\n" | sort -rn | head -n 5

ls -1 *.png | xargs -n 1 bash -c 'convert "$0" "${0%.png}.jpg"'		:Convert PNG to JPG
parallel convert '{}' '{.}.jpg' ::: *.png				:Convert PNG to JPG
ls -1 *.png | parallel convert '{}' '{.}.jpg'			:Convert PNG to JPG
bash -c 'for image in *.png; do convert "$image" "${image%.png}.jpg"; echo “image $image converted to ${image%.png}.jpg ”; done'												   :Convert PNG to JPG Using ‘for loop’ Command

alias rm='rm -i'
unalias rm
~/.bashrc
~/.profile
. ~/.bashrc
Foremost

Delete Files Using Extended Pattern Matching Operators
shopt -s extglob										:To use them, enable the extglob shell option as follows:
rm -v !("filename")										:To delete all files in a directory except filename, type the cmd
rm -v !("filename1"|"filename2") 						:To delete all files with the exception of filename1 and filename2
rm -i !(*.zip)						:The example below shows how to remove all files other than all .zip files interactively
rm -v !(*.zip|*.odt)						        :Next, you can delete all files in a directory apart from all .zip and .odt
shopt -u extglob						:Once you have all the required commands, turn off the extglob shell option like so

find . -type f -not -name '*.gz'-delete					:The following command will delete all files apart from .gz files
find . -type f -not -name '*gz' -print0 | xargs -0  -I {} rm -v {}		:Using a pipeline and xargs, you can modify the case above as follows
find . -type f -not \(-name '*gz' -or -name '*odt' -or -name '*.jpg' \) -delete


HISTTIMEFORMAT="%d/%m/%y %T "							:Add Tmestamps on the history output
history
export HISTTIMEFORMAT="%d/%m/%y %T "					:Add to ~/.bashrc
dd if=/dev/zero of=/tmp/output.img bs=8k count=256k conv=fdatasync; rm -rf /tmp/output.img		:Disk write speed
du -hsx * | sort -rh | head -6							:Six largest files on the system
stat filename_ext  (viz., stat abc.pdf)					:Output statistics related to a file 
!501													:Repeating command 501 from history
yum install mc 											:Midnight Commander
mc 														:Run midnight commander
sudo shutdown 21:00										:Shutdown @ 21:00
sudo shutdown +15										:Shutdown After 15 minutes
lslogins												:Show Information about Known Users
find /HOME/Build/user -type f									:This command will search for all files located in /HOME/Build/user
find . -type f -size 10M		:The above command will search from current directory for all files that are larger than 10 MB
find /HOME/Build/user/files/ -type f -exec chmod 644 {} \;	:The above command will search for all files in the specified directory recursively and will executed chmod command on the found files
mkdir -p new_folder/{folder_1,folder_2,folder_3,folder_4,folder_5}		:Creating 5 folders in da same location simultaneously
mkdir -p new_folder/folder{1..5}
> /path-to-file/huge_file.log							:Deleting or emptying large files 
for in $i(cat list.txt); do ssh user@$i 'bash command'; done		:Run Same Command on Multiple Linux Servers
ls -l | grep ^- | wc -l									:Counting number of regular files 
ls -l | grep ^d | wc -l									:Counting number of directories 
ls -l | grep ^l | wc -l
ls -l /dev | grep ^b | wc -l
ls -l /dev | grep ^c | wc -l
locate samba.conf										:Find file 
sudo date -s "12:27:00"
sudo date --set="12:27:00"
sudo date 090912302015
cal
sudo hwclock
sudo hwclock --set --date="09/09/2015 12:33:00"
sudo hwclock --hctosys									:You can also set your system time using time from the hardware clock
sudo hwclock --systohc									:It is also possible to set hardware clock time using the system clock

Password-less login using ssh
ssh-keygen -t rsa
sheena@192.168.0.11 mkdir -p .ssh
cat .ssh/id_rsa.pub | ssh sheena@192.168.0.11 'cat >> .ssh/authorized_keys'
ssh sheena@192.168.0.11 "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

rsync -zvh fast /tmp/scripts/
rsync -avzh /HOME/Build/walusih/scripts /tmp/scripts/			:Transfer scripts folder
rsync -avzh /HOME/Build/walusih/scripts/ /tmp/scripts/		:Transfer files in scripts folder
rsync -avzh rpmpkgs/ root@192.168.0.101:/HOME/Build/
rsync -avzh root@192.168.0.100:/HOME/Build/walusih/rpmpkgs /tmp/myrpms
rsync -avzhe ssh root@192.168.0.100:/root/install.log /tmp/
rsync -avzhe ssh backup.tar root@192.168.0.100:/backups/
rsync -avzhe ssh --progress /HOME/Build/rpmpkgs root@192.168.0.100:/root/rpmpkgs
rsync -avze ssh --include 'R*' --exclude '*' root@192.168.0.101:/var/lib/rpm/ /root/rpm
rsync -avz --delete root@192.168.0.100:/var/lib/rpm/ .
rsync -avzhe ssh --max-size='200k' /var/lib/rpm/ root@192.168.0.100:/root/tmprpm
rsync --remove-source-files -zvh backup.tar /tmp/backups/
rsync --dry-run --remove-source-files -zvh backup.tar /tmp/backups/
rsync --bwlimit=100 -avzhe ssh  /var/lib/rpm/  root@192.168.0.100:/root/tmprpm/
rsync -zvhW backup.tar /tmp/backups/backup.tar

grep walusih /etc/passwd
usermod [options] [username]
usermod --expiredate 2014-10-30 walusih
usermod -aG root,users tecmint							:Adding the user to supplementary groups
usermod --HOME/Build /tmp tecmint								:Changing the default location of the user’s HOME/Build directory
usermod --shell /bin/sh tecmint							:Changing the shell the user will use by default
groups tecmint
id tecmint
usermod --expiredate 2014-10-30 --append --groups root,users --HOME/Build /tmp --shell /bin/sh tecmint
usermod -L tecmint
usermod -u tecmint
groupdel [group_name]
userdel --remove [username]
chmod 660 common.txt
OR 
chmod u=rw,g=rw,o= common.txt 							:[notice the space between the last equal sign and the file name]
chmod g+s [filename]
chmod 2755 [directory]
chmod o+t [directory]
chmod 1755 [directory]
visudo 
Defaults    secure_path="/usr/sbin:/usr/bin:/sbin"
root        ALL=(ALL) ALL
tecmint     ALL=/bin/yum update
gacanepa    ALL=NOPASSWD:/bin/updatedb
%admin      ALL=(ALL) ALL
sudo -l  								:To see what privileges are granted to you by sudo, use the “-l” option to list them
ldd $(which login) | grep libpam # login uses PAM
ldd $(which top) | grep libpam # top does not use PAM
cat /etc/pam.d/passwd

SUID & SGID
find . -perm /4000										:SUID Files 
find . -perm /2000										:SGIP Files
find . -perm /6000										:Files dat are both SUID && SGID

stat -c '%n %a' *	:To display all files in the current working directory followed by the access rights in octal form
stat -c '%n %A' *										:Display in permissions in rwx 
stat -c '%n %a %F' *									:View File Type

vi /usr/lib/sysctl.d/50-default.conf 					:Securing Symbolic and Hard links
fs.protected_hardlinks = 1
fs.protected_symlinks = 1

useradd -G admins,webadmin,developers tecmint			:we are adding a user ‘tecmint‘ into multiple groups like admins, webadmin and developer.
id tecmint
groups walusih
useradd -e 2014-03-27 aparna							:Create a User with Account Expiry Date
chage -l aparna
useradd -e 2014-04-27 -f 45 tecmint						:Create a User with Password Expiry Date
useradd -m -d /var/www/ravi -s /bin/bash -c "TecMint Owner" -U ravi
useradd -m -d /var/www/tarunika -s /bin/zsh -c "TecMint Technical Writer" -u 1000 -g 1000 tarunika
useradd -M -N -r -s /bin/false -c "Disabled TecMint Member" clayton

grep -E --color '/HOME/Build/tecmint' /etc/passwd
usermod -d /var/www/ tecmint
usermod -e 2014-11-01 tecmint
usermod -l tecmint_admin tecmint						:Change username
usermod -L babin
grep -E --color 'babin' cat /etc/shadow
grep -E --color 'babin' /etc/shadow
usermod -U babin
usermod -d /var/pinky/ -m pinky							: move the HOME/Build directory from /HOME/Build/pinky to /var/pinky

vim -x file.txt											:How to Password Protect a Vim File in Linux
:help 'cm'
:setlocal cm=blowfish2

vi /etc/profile
alias vi=vim
source /etc/profile
:syntax on
:syntax off

echo set number >> ~/.vimrc
echo syntax on >> ~/.vimrc
echo set tabstop=4 >> ~/.vimrc
echo set autoindent >> ~/.vimrc


# vim:ts=4:sw=4 ( cat /etc/bashrc)
[walusih@rhel-8 ~]$ cat ~/.vimrc
set number
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab

:r! pwd
:!r ip route show | grep default | cut -f 3 -d " "
:r /etc/passwd     									 	:Insert contents of a file 
:%s/old/new/g
:%s/Globe/Earth/g
:%s/gacanepa/me/gc
vim -o test1 test2						:aunch vi/m with two horizontal windows, with test1 at the top and test2 at the bottom
vim -O test3 test4 						:Launch vi/m with two vertical windows, with test3 on the left and test4 on the right
(h: right, l: left, j: bottom, k: top)
Ctrl+w k – top
Ctrl+w j – bottom
Ctrl+w l – left
Ctrl+w h – right
:set nu
:%s/libero//gn
vim forever.txt +6										:For example, open forever.txt and place the cursor in line 6:
vim filename +$(grep -in pattern filename | sed -n 3p | cut -d: -f1)		:Suppose we want to open the file on the line where the 3rd occurrence of the pattern appears:
grep -in pattern filename – displays all lines from filename where pattern occurs, with the line number at the beginning of each output line.
sed -n 3p – displays the 3rd line from the preceding pipeline’s output
cut -d: -f1 returns the first field of the previous pipeline with the colon (:) is the field separator.
grep -in forever forever.txt | sed -n 3p | cut -d: -f1
vimtutor
mkdir ~/.vim
cd .vim
unzip ~/Downloads/bash-support.zip
vi ~/.vimrc
filetype plug-in on

How to Install Ansible Automation Tool on CentOS/RHEL 8
sudo dnf update
sudo dnf install python3
python3 -V
subscription-manager repos --enable ansible-2.8-for-rhel-8-x86_64-rpms
dnf -y install ansible
ansible --version
sudo systemctl status sshd
cd /etc/ansible/
vi hosts
[web]
192.168.64.1
ssh-keygen -t rsa
ssh-copy-id walas@192.168.64.1
authorized_keys
ssh-copy-id -i ~/.ssh/id_rsa.pub walas@192.168.64.1
sudo systemctl restart sshd
172.18.165.33
ansible -i /etc/ansible/hosts web -m ping 
ansible -m ping -all
ansible -m ping web-servers
ansible -m command -a "df -h" web-servers
ansible -m command -a "free -mt" web-servers
ansible -m command -a "uptime" web-servers
ansible -m command -a "arch" web-servers
ansible -m shell -a "hostname" web-servers
ansible -m command -a "df -h" web-servers > /tmp/df_outpur.txt
************* Playbooks **************
ansible -a "/bin/hostnamectl --static" webservers

cd /etc/ansible/playbooks
ansible-galaxy init wp-dependencies
ansible-galaxy init wp-install-config
ls -R /etc/ansible/playbooks
ansible-playbook playbook.yml

How to SSH into Windows 10?
Go to the Settings > Apps > Optional features;
Click Add a feature, select OpenSSH Server (OpenSSH-based secure shell (SSH) server, for secure key management and access from remote machines), and click Install.

https://www.hanselman.com/blog/how-to-ssh-into-a-windows-10-machine-from-linux-or-windows-or-anywhere
Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Get-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Program Files\PowerShell\7\pwsh.exe" -PropertyType String -Force
Get-NetFirewallRule -Name *ssh*

https://theitbros.com/ssh-into-windows/
ssh -l admin@192.168.1.90

https://www.pugetsystems.com/labs/hpc/How-To-Use-SSH-Client-and-Server-on-Windows-10-1470/
%programdata%sshsshd_config configuration file
WSL (Windows Subsystem for Linux)

https://docs.microsoft.com/en-us/powershell/scripting/learn/remoting/ssh-remoting-in-powershell-core?view=powershell-7.1

https://www.pugetsystems.com/labs/hpc/Note-How-To-Copy-and-Rename-a-Microsoft-WSL-Linux-Distribution-1811/

https://www.itzgeek.com/how-tos/linux/centos-how-tos/ssh-passwordless-login-centos-7-rhel-7.html
~/.ssh/authorized_keys
ssh-copy-id -i ~/.ssh/id_rsa.pub walas@192.168.64.133
chmod 700 ~/.ssh
scp -pr  ~/.ssh/id_rsa.pub ram@client.itzgeek.local:
chmod 600 ~/.ssh/authorized_keys/tmp
cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys

https://lintut.com/how-to-setup-ssh-passwordless-login-on-centos-7-rhel-7-rhel-8/


https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-centos7
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
chmod -R go= ~/.ssh

https://webhostinggeeks.com/howto/how-to-secure-openssh-sshd-on-linux/
ListenAddress 192.168.1.200

sudo vi /etc/ssh/sshd_config
sudo systemctl restart sshd.service

cat id_rsa.pub | ssh walas@192.168.64.1 "cat >> C:\Users\walas\.ssh\authorized_keys"

head -5 /var/log/yum.log
head -c45 /var/log/yum.log
tac month											:reverse of capital

wc -l : Prints the number of lines in a file.
wc -w : prints the number of words in a file.
wc -c : Displays the count of bytes in a file.
wc -m : prints the count of characters from a file.
wc -L : prints only the length of the longest line in a file.
wc tecmint.txt

sort -nk2 lsl.txt										:Sort the contents of file ‘lsl.txt‘ on the basis of 2nd column
sort -k9 lsl.txt										:Sort the contents of file ‘lsl.txt‘ on the basis of 9th column 
ls -l /HOME/Build/$USER | sort -nk5
sort -u tecmint.txt										:Sort and remove duplicates from the text file tecmint.txt
ls -l /HOME/Build/$USER | sort -t "," -nk2,5 -k9				:Sort the output of ‘ls -l‘ command on the basis of field 2,5 (Numeric) and 9 (Non-Numeric)
echo -e "mar\ndec\noct\nsep\nfeb\naug" > month.txt		:Sort the file ‘month.txt‘ on the basis of month order by using switch ‘M‘ (–month-sort)
ls -l /HOME/Build/$USER | sort -h -k5							:Sort the data that is in human readable format say 1K, 2M, 3G, 2T
sort -c sorted.txt										:If it returns 0, means that the file is sorted and there is no conflic
sort -M month.txt
echo -e "21+linux+server+production\n11+debian+RedHat+CentOS\n131+Apache+Mysql+PHP\n7+Shell Scripting+python+perl\n111+postfix+exim+sendmail" > delimiter.txt
sort -t '+' -nk1 delimiter.txt							:Now sort this file on the basis of 1st field which is numerical.
sort -t '+' -k4 delimiter.txt							:And second on the basis of 4th field which is non numeric
ls -l /HOME/Build/avi/ | sort -k5 -R
export LC_ALL=C, sort -f tecmint.txt
echo -e "5 Reliable\n2 Fast\n3 Secure\n1 open-source\n4 customizable" > file1.txt
echo -e "3 RedHat\n1 Debian\n5 Ubuntu\n2 Kali\n4 Fedora" > file2.txt
join <(sort -n file1.txt) <(sort file2.txt)				:Now sort and join the output of both the files
rename 's/\.html$/\.php/' *.html						:Now, you want to change the extension of all these files from “.html” to “.php“. 
rename -n 's/\.php$/\.html/' *.php						:Check Changes Before Running Rename Command
rename -v 's/\.php$/\.html/' *.php						:Print Rename Output
rename 'y/a-z/A-Z/' *.html								:Convert all Lowercase to Uppercase and Vise-Versa
rename 'y/A-Z/a-z/' *.HTML								:Upper to Lower Case
rename 's/\b(\w)/\U$1/g' *.ext							:Capitalize First Letter of Filename
rename -f 's/a/b/' *.html								:If you would like to forcefully overwrite existing files, use the “-f” option as shown below.
echo *.jpeg 
echo *

Symbol Meaning
- Regular file
d Directory
l Link
c Special file
s Socket
p Named pipe
b Block device
cat /etc/shells
quota -v

lsblk
lsblk -l												:list block devices in ‘list‘ structure (not tree like fashion).
md5sum teamviewer_linux.deb
dd if=/HOME/Build/user/Downloads/debian.iso of=/dev/sdb1 bs=512M; sync
uname 
History 												:Ctrl+R 	auto completion feature. ((reverse-i-search)'if': ifconfig)

tar -zxvf abc.tar.gz
tar -jxvf abc.tar.bz2
tar -cvf archieve.tar.gz

cal 02 1835												:Show calendar of year 1835 for month February, that already has passed
cal 07 2145												:Shows calendar of year 2145 for the month of July, that will advancing

date --set='14 may 2013 13:57' 

Wildcard			Matches
   *			zero or more characters
   ?			exactly one character
[abcde]			exactly one character listed
 [a-e]			exactly one character in the given range
[!abcde]		any character that is not listed
 [!a-e]			any character that is not in the given range
{debian,linux}		exactly one entire word in the options given

find -iname *.SH ( find -iname *.Sh /  find -iname *.sH):You can use the '-iname' option to find something regardle

grep -r "127.0.0.1" /etc/ 			:Search recursively (-r) i.e. read all files under each directory for a string "127.0.0.1"

ps -A
ps -A | grep -i ssh
ps -A | grep -i apache2

lpr -P deskjet-4620-series 1-final.pdf					:This command print files named on command line, to named printer
lpq														: command lets you view the status of a printer

gcc Hello.c												:./Hello compiles c Files 
gcc -o Hello Hello.c								:Here ‘-o‘ sends the output to ‘Hello‘ file and not ‘a.out‘. Run it again

g++ Add.cpp												:./a.out compiles C++ Files
g++ -o Add Add.cpp

javac tecmint.java
java tecmint

ifconfig eth0 down
ifconfig eth0 up
ifconfig eth0 192.168.1.12
ifconfig eth0 netmask 255.255.255.0
ifconfig eth0 broadcast 192.168.1.255
ifconfig eth0 192.168.1.12 netmask 255.255.255.0 broadcast 192.168.1.255
iwconfig

netstat -a												:List All Network Ports
netstat -at												:List All TCP Ports
netstat -s												:Show Statistics for All Ports
netstat -an						:OK! For some reason if you want not to resolve host, port and user name as a output of netstat
netstat -c          :Fine, you may need to get the output of netstat continuously till interrupt instruction is passed (ctrl+c)

nslookup tecmint.com									
nslookup -query=mx tecmint.com 							:Query Mail Exchanger Record
nslookup -type=ns tecmint.com 							:Query Name Server
nslookup -type=any tecmint.com							:Query DNS Record
nslookup -type=soa tecmint.com 							:Query Start of Authority
nslookup -port 56 tecmint.com							:Change the port number using which you want to connect

dig tecmint.com
dig tecmint.com +nocomments 
dig tecmint.com +noauthority
dig tecmint.com +noadditional
dig tecmint.com +nostats
dig tecmint.com +noanswer 
dig tecmint.com +noall

wall "msg"
mesg
write 
talk
w 

Mkfs.ext4 /dev/sda1

alias cp='rsync -aP'									: P-Progress bar

free -s 3												:Check Status Contineously After Regular Interval

mysqldump -u root -p --all-databases > /HOME/Build/server/Desktop/backupfile.sql

mkpasswd -l 10		(yum install expect)				:Make a hard-to-guess, random password of the length as specified

paste													:Combine 2 files 

lsof 													:List open files

for i in {1..12}; do for j in $(seq 1 $i); do echo -ne $iÃ—$j=$((i*j))\\t;done; echo;done

while true; do echo "$(date '+%D %T' | toilet -f term -F border --gay)"; sleep 1; done

curl -u YourUsername:YourPassword -d status="Your status message" http://twitter.com/statuses/update.

curl ifconfig.me
curl ipinfo.io 

1. sudo!!			: Forgot to run a command with sudo? You need not re-write the whole command, just type “sudo!!” and the last command will run with sudo.
2. Python -m SimpleHTTPServer 					: Creates a simple web page for the current working directory over port 8000.
3. mtr : A command which is a combination of ‘ping’ and ‘traceroute’ command.
4. Ctrl+x+e : This key combination fires up, an editor in the terminal, instantaneously.
5. nl : Outputs the content of text file with lines Numbered.
6. shuf : Randomly selects line/file/folder from a file/folder.
7. ss : Outputs Socket Statistics.
8. Last: Want to know history of last logged in users? This command comes to rescue here.
9. curl ifconfig.me : Shows machine’s external IP Address.
10. tree : Prints files and folders in tree like fashion, recursively.
11. Pstree : Prints running processes with child processes, recursively.

 12. <space> command : A space before a bash command, is not recorded in history.
13. stat : Shows the status information of a file as well as of a file system.
14. <alt>. And <esc>. : A tweak which put the last command argument at prompt, in the order of last entered command, appearing first.
15. Pv : outputs simulating text, similar to hollywood movies.
16. Mount | column -t : Lists mounted file system, in nice formatting with specification.
17. Ctrl + l: clear shell prompt, instantaneously.
18. curl -u gmail_id –silent “https://mail.google.com/mail/feed/atom” | perl -ne ‘print “\t” if //; print “$2\n” if /(.*)/;’. This simple scripts, opens up, unread mail of an user, in the terminal itself.
19. screen : Detach and Reattach, long running process from a session.
20. file : Outputs information, regarding types of file.
21. id : Print User and Group Id.


22. ^foo^bar : Run last command with modification, without the need of rewriting the whole command again.
23. > file.txt : Flush the content of a text file, in a single go, from the command prompt.
24. at : Run a particular command, time based.
25. du -h –max-depth=1 Command : Outputs the size of all the files and folders within current folder, in human readable format.
26. expr : Solve simple mathematical calculations from the terminal.
27. look: Check for an English word, from the dictionary, in case of confusion, right from the shell.
28. yes : continues to print a sting, till interrupt instruction is given.
29. factor: Gives all the possible factors of a decimal number.
30. ping -i 60 -a IP_address : Pings the provided IP_address, and gives audible sound when host comes alive.
31. tac : Prints content of a file, in reverse order.

32. strace : A debugging tool.
33. disown -a && exit Command : Run a command in background, even after terminal session is closed.
34. getconf LONG_BIT Command : Output Machine Architecture, very clearly.
35. while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done & : The script outputs date and time on the top right corner of shell/ terminal.
36. convert : converts the output of a command in picture, automatically.
37. watch -t -n1 “date +%T|figlet” : Show animated digital clock at the prompt.
38. host and dig : DNS lookup utility.
39. dstat : Generates statistics regarding system resource.
40. bind -p : Shows all the shortcuts available in Bash.
41. Touch /forcefsck : Force file-system check on next boot.

42. lsb_release : Prints distribution specification information.
43. nc -ZV localhost port_number : Check if a specific port is open or not.
44. curl ipinfo.io : Outputs Geographical Information, regarding an ip_address.
45. find .-user xyz : Lists all file owned by user ‘xyz’
46. apt-get build-dep package_name: Build all the dependency, automatically while installing any specific package.
47. lsof -iTCP:80 -sTCP:LISTEN. The script, outputs all the service/process using port 80.
48. find -size +100M : This command combination, Lists all the files/folders the size of which is 100M or more.
49. pdftk : A nice way to concatenate a lot of pdf files, into one.
50. ps -LF -u user_name : Outputs Processes and Threads of a user.
51. Startx — :1 (This command creates another new X session).

apropos browser
cat --help

• a partition for user programs (/usr)
• a partition containing the users personal data (/HOME/Build)
• a partition to store temporary data like print- and mail-queues (/var)
• a partition for third party and extra software (/opt)

/etc/passwd, /etc/shadow, /etc/group and /etc/gshadow

usermod
-c = We can add comment field for the useraccount.
-d = To modify the directory for any existing user account.
-e = Using this option we can make the account expiry in specific period.
-g = Change the primary group for a User.
-G = To add a supplementary groups.
-a = To add anyone of the group to a secondary group.
-l = To change the login name from tecmint to tecmint_admin.
-L = To lock the user account. This will lock the password so we can’t use the account.
-m = moving the contents of the HOME/Build directory from existing HOME/Build dir to new dir.
-p = To Use un-encrypted password for the new password. (NOT Secured).
-s = Create a Specified shell for new accounts.
-u = Used to Assigned UID for the user account between 0 to 999.
-U = To unlock the user accounts. This will remove the password lock and allow us to use the user

grep -E --color 'tecmint' /etc/passwd
chage -l walusih
usermod -e 2014-11-01 tecmint
usermod -g babin tecmint_test
id tecmint_test
usermod -G tecmint_test0 tecmint	:If you want to add a new group called ‘tecmint_test0‘ to ‘tecmint‘ user, you can use option ‘-G‘ with usermod command as shown below
id tecmint


yum install psacct-or-acct-tools
ac
ac -d
ac -p
ac tecmint
ac -d tecmint
sa
9.86re is a “real time” as per wall clock minutes
0.01cp is a sum of system/user time in cpu minutes
2466k is a cpu-time averaged core usage, i.e. 1k units
sshd command name
sa -u
sa -m
sa -c
lastcomm tecmint
lastcomm ls

timedatectl
timedatectl set "2021-08-09 20:09:05"
timedatectl set-time "2021-08-09 20:09:05"
timedatectl set-ntp false
sudo timedatectl set-time "2021-08-09 20:10:35"

LFCS certification (Linux Foundation Certified Sysadmin) -- Linux Certified System Administrator

usermod --expiredate 2014-10-30 tecmint
usermod --append --groups root,users tecmint
usermod --expiredate 2014-10-30 --append --groups root,users --HOME/Build /tmp --shell /bin/sh tecmint
usermod --lock tecmint
usermod --unlock tecmint
chmod 660 common.txt OR  chmod u=rw,g=rw,o= common.txt
chmod g+s [filename](setuid ) OR chmod 2755 [directory](setgid)
chmod o+t [directory] OR chmod 1755 [directory]  (Sticky Bit)

lsattr 
chattr +i file1
chattr +a file2

Defaults    secure_path="/usr/sbin:/usr/bin:/sbin"
root        ALL=(ALL) ALL
tecmint     ALL=/bin/yum update
gacanepa    ALL=NOPASSWD:/bin/updatedb
%admin      ALL=(ALL) ALL
sudo -l

apt list --upgradable
lsb_release -c -s

export EDITOR=vim
export PAGER=less
${EDITOR:-vim} "$1"
${PAGER:-less} "$1"

`basename $0`
for i in `seq 10 -1 1`; do echo -en "${i} ..."; done; echo "boom"
myvar=hello; echo ${#myvar}
${variable: -4} # foobar becomes obar
phone="555-456-1414" echo ${phone#*-}
gcc -lm -o math math.c
./math 30; ./math 60; ./math 90

taBle 11-4: Prompt Colors (y)
nuMBer (octal) color
30 Black
31 Red
32 Green
33 Yellow
34 Blue
35 Magenta
36 Cyan
37 Gray
39 Default
taBle 11-5: Appearance Settings (x)
nuMBer (octal) appearance
0 Dark
1 Bright
4 Underlined
5 Blinking
7 Inverse

HISTTIMEFORMAT="%T %F "
stat /etc/nsswitch.conf
stat -c "%a %U %G %n" /etc/nsswitch.conf
stat -c "%n is owned by %U and has permissions %a (%A)" /etc/nsswitch.conf

taBle 12-1: find Expressions
expreSSion uSed for
-maxdepth levels Trawl only levels levels deep into the fi lesystem tree .
-mount (or -xdev) Don’t traverse into diff erent fi lesystems .
-anewer filename or -cnewer filename or -newer filename
Find fi les that have been accessed (-anewer), changed
(-cnewer), or modifi ed (-newer) more recently than the reference fi le filename
-mmin n or -mtime n Find fi les that were modifi ed n minutes (-nmin) or n days(-mtime) ago .
-uid u or -user u Find fi les owned by user ID (-uid) or username (-user) u
-gid g or -group g Find fi les in the group ID (-gid) or group name (-group) g
-nouser or -nogroup Find fi les with no matching name of owner/group .
-name n or -iname n Find fi les whose name matches n (-iname is case-insensitive) .
-perm -g=w Find fi les that have the group-writable bit set (regardless ofother bits) .
-perm o=r Find fi les that have permissions 0500 exactly (owner can read,nothing else) .
-size n Find files that have size n (suffixes b, k, M, G, the full list as well as others are allowed)
-size +n or -size -n Find files that are larger (+n) or smaller (-n) than n
-type t Find files of type t, where t can be d(irectory), l(ink), f(ile), or b, c, p, s, D

find "${DIR}" $SIZE -type f -exec md5sum {} \; | sort > $MD5
find . -type f -exec md5sum {} \; | sort
find . -type f -exec md5sum {} \; | sort | uniq -d -w32
fmt -p"#" -w 40 -s code.sh
paste -d"():" ips hosts ethers

printf “%-10s %-30s %-10s\n” “Username” “Name” “Shell”
cut -d: -f1,5,7 /etc/passwd | while IFS=: read uname name shell
do
printf “%-10s %-30s %-10s\n” “$uname” “$name” “$shell”
done

for i in `seq 1 10`
do
	printf "The square root of %2d is %0.4f\n" $i `echo "scale=10;sqrt($i)"|bc`
done

factor 43674876546
find . -name “*.core*” -print0 | xargs -0 rm

sudo !!				:Execute last command wit sudo privileges 
:W

sudo usermod -aG wheel vivek

https://www.cyberciti.biz/tips/linux-unix-bsd-openssh-server-best-practices.html
https://www.cyberciti.biz/tips/linux-security.html

echo "${PATH//:/$'\n'}"

type -t cmd
type -a cmd
which -a ls
whereis vim
whereis -b ls
whereis -m date
locate -b '\date'
sudo find / -name "date" -ls
whatis ls

for x in $(seq 2032 2053); do history -d 2032; done
for x in $(seq 312 399); do history -d 312; done
for h in {1987..1991}; do history -d 1987; done
history -d 2001-2004 # Bash 5
history -d -5--1
for h in {1..5}; do sed -i '$d' ~/.bash_history; done;
historyDeln() {
  n=$(history 1 | awk '{print $1}')    # current history number
  historyDel $(( $n-$1 )) $(( $n-1 ))  # Call historyDel with ranges
}
historyDeln 5
tail -5 ~/.bash_history 
history 5 

awk '!x[$0]++'				:Removing duplicates 

http://stackoverflow.com/questions/4161548/how-to-establish-ssh-key-pair-when-host-key-verification-failed
ssh-keygen -R hostname -- for "Host key verification failed"

awk '!x[$0]++' ~/.bash_history

-------- Bash Commands and Scripting - From Beginner To Expert ------
chsh -s /bin/bash 
tr [a-z] [A-Z] < file.txt
alias showDesktop="cd /HOME/Build/walusih && cd -"
.bash_profile
cd 
vi .bash_profile 
alias prof='nano ~/.bash_profile'

function pushall90 {
	git add .
	git commit -all
	git push --all 
}
awk -F:
awk 'NR == 3 {print $3, $5}' data.txt 
forever list
top -i 1 -l 3 -n 10 > top.txt 

-------------- bash Cookbook: SOLUTIONS AND EXAMPLES FOR BASH USERS 2nd Edition -----------------
- Sould read these after the cookbook for advancement
- Learning the bash Shell, 3rd Edition, by Camera Newham
- Classic Shell Scripting by Nelson H.F. Beebe and Arnold Robbins
- Mastering PowerShell Scripting (Chris Dent) (z-lib.org).pdf
- Git for Programmers Master Git for effective implementation of version control for your programming projects

cat > info.txt 	Ctrl+D 
cat -n info.txt
touch file-{001-100}.txt 
find . -name "file-*" -delete
ln -S ~/Dowmloads dlds
rm -rf dlds 
mklink (symlink on windows)
tar -czvf source.tar.gz src
tar -tzvf source.tar.gz

read -p "Enter Your Name: " NAME
echo "Hello $NAME, nice to meet u!"

function greet() {
	echo "Hello, I am $1 and I am $2"
}

greet "Brad" "36"

Extra Packages for Enterprise Linux (EPEL)
Ubuntu Personal Package Archive (PPA)
https://distrowatch.com/

export PS1='[\u@\h \w]$'
pwd -L
pwd -P
type which 
type -a ls
apropos music 
man -k music 

sudo apt install man-db
sudo apt install manpages-dev

locate apropos 
sudo apt install locate
sudo updatedb
stat all_databases.sql
file all_databases.sql
file -b all_databases.sql

ls -d .*
ls -d .b*
ls -d .[!.]*
ls -d .*/
grep -l 'PATH' ~/.[!.]*
echo .[!.]*
\ls -d .v*/		-- to avoid aliasing 
ls -d .[!.]* .??* | sort -u
enable -a 	-- list builtins 
help cd 	-- help for builtins 
enable -n test 		-- bypass builtin

apt-get update && apt-get install bash bash-completion bash-doc

printf '%s = %d\n' Lines $LINES
printf '%-10.10s = %4.2f\n' 'Gigahertz' 1.92735
printf '%10.10s = %4.2f\n' 'Gigahertz' 1.92735
printf "%s %s" next prompt 
echo -n prompt  -- no newline 
echo -e 'hi\c'
ls -C > list-format.txt
ls -1
ls > msg.out 2> msg.err -- output to diff files 
both >& outfile 		-- both std output and std err output to the same file 
tail -n +2 lines		-- to skip the first 2 or headers of a file
noisy > /dev/null 2>&1
{ pwd; ls; cd ../elsewhere; pwd; ls; } > /tmp/all.out
(pwd; ls; cd ../elsewhere; pwd; ls) > /tmp/all.out
cat my* | tr 'a-z' 'A-Z' | sort | uniq | awk -f transform.awk | wc
... uniq | tee /tmp/x.x | awk -f transform.awk ...
find / -name '*.c' -print | tee /tmp/all.my.sources
find / -name '*.c' -print 2>&1 | tee /tmp/all.my.sources
rm $(find . -name '*.class')
gcc bad.c 2> save.it
gcc bad.c 2>&1 | tee save.it
./myscript 3>&1 1>stdout.logfile 2>&3- | tee -a stderr.logfile
set -o noclobber		-- protect file from accidental deleting 
set +o noclobber
echo something >| my.file -- override noclobber setting
grep $1 <<'EOF' 
mike x.123
bill x.919
sara x.822
EOF
read -p "answer me this " ANSWER
read -t 3 -p "answer quickly: " ANSWER 
read PRE MID POST 
read -s -p "password: " PASSWD ; printf "%b" "\n"
echo $?
nohup long &

: <<'END_OF_DOCS'
END_OF_DOCS
${:-} ${1:-/tmp}
cd ${HOME:=/tmp} 				-- default value 
cd ${BASE:="$(pwd)"}
${MYVAR#-}						-- Absolute Value 
FILE=${FULLPATHTOFILE##*/} 		-- basename
DIR=${MYPATHTOFILE%/*}
for FN in *.JPG; do mv "$FN" "${FN,,}" ; done 			-- convert from UPPERCASE to lowercase 

PATH=".:$PATH"
env || export -p || declare -p 
set | grep SHELL 
CVTTYPE=${3:?"Error. ${USAGE}"}

# ------------ Chapter 6 --------------------

$(()) or let  # -- calculating in bash 
COUNT=$((COUNT + 5 + MAX * 2))
let COUNT+='5+MAX*2'
MAX=$((2**8))

Table 6-2. Unary operators that check file characteristics
Option Description
-b File is a block special device (for files like /dev/hda1)
-c File is character special (for files like /dev/tty)
-d File is a directory
-e File exists
-f File is a regular file
-g File has its set-group-ID (setgid) bit set
-h File is a symbolic link (same as -L)
-G File is owned by the effective group ID
-k File has its sticky bit set
-L File is a symbolic link (same as -h)
-N File has been modified since it was last read
-O File is owned by the effective user ID
-p File is a named pipe
-r File is readable
-s File has a size greater than zero
-S File is a socket
-u File has its set-user-ID (setuid) bit set
-w File is writable
-x File is executable

for (( i=0 ; i < 10 ; i++ )) ; do echo $i ; done

for (( i=0, j=0 ; i+j < 10 ; i++, j++ ))
do
	echo $((i*j))
done

for fp in $(seq 1.0 .01 1.1)
do
	echo $fp; other stuff too
done
or:
seq 1.0 .01 1.1 |
while read fp
do
	echo $fp; other stuff too
done

case $FN in
	*.gif) gif2png $FN
		;;
	*.png) pngOK $FN
		;;
	*.jpg) jpg2gif $FN
		;;
	*.tif | *.TIFF) tif2jpg $FN
		;;
	*) printf "File not supported: %s" $FN
		;;
esac

zgrep, zcat, or gzcat
$ awk '{for (i=NF; i>=0; i--) {printf "%s ", $i;} printf "\n" }'<filename>
ls -l | awk '{sum += $5}; END {print sum}'
ls -l | grep -v '^total' | awk '{sum += $5}; END {print sum}'
ls -l | awk '/^total/{next} {sum += $5}; END {print sum}'
cut -d':' -f7 /etc/passwd | sort | uniq -c | sort -rn
sort -t. -n +3.0 ipaddr.list
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n ipaddr.list

.tar tar tf (list contents), tar xf (extract)
.tar.gz, .tgz GNU tar: tar tzf (list contents), tar xzf (extract)
Else: gunzip file && tar xf file
.tar.bz2 GNU tar: tar tjf (list contents), tar xjf (extract)
Else: gunzip2 file && tar xf file
.tar.Z GNU tar: tar tZf (list contents), tar xZf (extract)
Else: uncompress file && tar xf file
.zip unzip (often not installed by default)
sort -u 		# sorting with unique output 

tr 'A-Z' 'a-z' <be.fore >af.ter
tr '[:upper:]' '[:lower:]' <be.fore >af.ter
tr -d '\r' <file.dos >file.txt				# Converting DOS Files to Linux Format
fmt 
find . -name '*.mp3' -print -exec mv '{}' ~/songs \;
find . -name '*.mp3' -print0 | xargs -i -0 mv '{}' ~/songs
find -L . -name '*.mp3' -print0 | xargs -i -0 mv '{}' ~/songs
find . -follow -iname '*.mp3' -print0 | xargs -i -0 mv '{}' ~/songs
find . -name '*.jpg' -mtime +90 -print
find . -mtime +7 -a -mtime -14 -print
find . -mtime +14 -name '*.text' -o \( -mtime -14 -name '*.txt' \) -print
find . -type d -name '*java*' -print
find . -size +3000k -print
find . -name '*.txt' -exec grep -Hi portend '{}' \;
locate apropos

# ------------------- Stopped @ CHAPTER 11 Working with Dates and Times ----------------------
