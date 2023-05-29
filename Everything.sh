-----------Software------------
https://www.youtube.com/watch?v=4TIvB8zDFio
https://photos.google.com/
https://scopicsoftware.com   -- Software Programming Startup in Uganda
https://shortcutworld.com/en/Windows/10/win/all
https://www.tecmint.com/vi-editor-usage/
chrome://flags

nvm install "lts/*" --reinstall-packages-from="$(nvm current)"

:750

dir env:
[System.Environment]::SetEnvironmentVariable('ResourceGroup','AZ_Resource_Group')
$env:AZURE_RESOURCE_GROUP = 'MyTestResourceGroup'
dir Env:\PSModulePath
(dir Env:\PSModulePath).value -split ';'
$env:ResourceGroup
$env:ResourceGroup = $null
$env:MY_ENV_VAR = 1234567890
$env:FLASK_APP = 'main.py'
[System.Environment]::SetEnvironmentVariable('GoHugo','C:\Hugo\bin', [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable('GoHugo','C:\Hugo\bin', [System.EnvironmentVariableTarget]::Machine)

mailgun
"[css]": {
    "editor.suggest.insertMode": "replace"
}
"editor.codeActionsOnSave": {
    "source.fixAll": true,
    "source.sortImports": true
}

AlgoMonster

DownloadDevTools.ir

HTMLHint 
ESLint
Tabnine
Document This

echo "# JavaScript" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/walherb/JavaScript.git
git push -u origin main

# ---------------------------Markdown Crash Course ------------------------------
https://markdownguide.org/basic-syntax/
Auto-Open MArkdown Preview -> VS Code ext 
<!-- Headings -->
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

<!-- Italics -->
*This text* is italic 
\*This text\* is italic
_This text_ is italic 

<!-- Strong -->
**This text** is strong
__This text__ is strong

<!-- Strikethrough -->
~~This text~~ is strikethrough 

<!-- Horizontal Rule-->
---
___


<!-- Blockqoute -->
> This is a quote

<!-- Links -->
[Traversy Media](http://www.traversymedia.com)
[Traversy Media](http://www.traversymedia.com "Traversy Media")

<!-- UL -->
* Item 1
* Item 2
    * Nested Item 1
    * Nested Item 2
    
<!-- OL -->
1. Item 1
2. Item 2
3. Item 3

<!-- Inline Code Block -->
`<p>This is a paragraph</p>`

<!-- Images -->
![Markdown Logo](https://markdown-here.com/img/icon256.png)

<!-- Github Markdown -->
<!--  Code Blocks -->
```javascript
    function add(num1, num2) {
        return num1 + num2
    }
```

<!-- Tables -->
| Name     | Email          |
| -------- | -------------- |
| John Doe | john@gmail.com |
| Jane DOe | jane@gmail.com |

<!-- Task Lists -->
* [x] Task 1
* [x] Task 2
* [ ] Task 3

<!-- Subscript & Superscript -->
X<sub>1</sub>  
x<sup>2</sup> = X * X

LaTex in MD Inline: $\Phi^{2} + X = 3$  
LaTex in MD Outline: $$\Phi^{2} + X = 3$$

[Docusaurus](https://docusaurus.io/docs/markdown-features)

[Links](#links)

<!-- References -->
[cs]: https://youtube.com/codestackr
[codeSTACKr][cs]

[Emojis](https://www.webfx.com/tools/emoji-cheat-sheet/)
Markdown Emoji -> VS Code Extension
Markdown All in One - VS Code Extension  
:joy:
:bento:
:leg:


http://kb.vmware.com/kb/2073803 
open-vm-tools
mount /dev/cdrom /mnt/cdrom
vmware-config-tools.pl -h 2>&1 | grep "VMware Tools"

apt-get install open-vm-tools
/usr/bin/vmware-toolbox-cmd -v

DevOps Engineering Course for Beginners

sudo update-alternatives --config java

https://linuxhint.com/install-docker-debian/
apt-get -o Acquire::ForceIPv4=true update
sudo apt -o Acquire::ForceIPv4=true install -y docker-ce docker-ce-cli containerd.io
sudoedit /etc/apt/apt.conf.d/99force-ipv4
Acquire::ForceIPv4 "true";
sudo docker run hello-world

(( $(rpm -E %{rhel}) >= 8 )) && dnf remove $(dnf repoquery --installonly --latest-limit=-2 -q)

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
sudo apt install ansible

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
/home/walusih/.local/bin
pip3 install pyOpenSSL

sudo update-alternatives --list php
sudo apt-get purge php8.*
sudo apt-get autoclean
sudo apt-get autoremove

find . -type f -exec sed -i '1d' {} +;
history -w
history -c
sed '/^$/d' dummy.txt # delete empty lines
find . -type f  -exec sed -i -f script-sed.sed {} +;

find . -type f  | parallel -j6 -exec sed -i -f script-sed.sed {} +;

find . -type f | wc -l

find . -mindepth 1 -type f -name "*.php" -printf x | wc -c (*****)
ls -lR ./*.php | wc -l

printf '%s\0' * | gawk 'BEGIN{RS="\0"; FS="."; OFS="\t"} {a[(NF>1 ? $NF : ".php")]++} END{for(i in a) print a[i],i}'

https://guillaume-martin.github.io/postgresql-backup.html
~/.pgpass
hostname:port:database:username:password
chmod 0600 ~/.pgpass
"*/2" == every two hours.

00 23 * * * /path/to/pg_backup.sh -c /path/to/pg_backup.config 		-- every day at 11pm
00 12 * * * /HOME/Build/dspace/scripts/pg_backup.sh -c /HOME/Build/dspace/scripts/pg_backup.config 		-- every day at 11pm
@daily /path/to/pg_backup.sh -c /path/to/pg_backup.config		-- every day at midnight
00 23 * * 1-5 /path/to/pg_backup.sh -c /path/to/pg_backup.config -- Monday (1) to Friday (5

pg_dumpall > all_pg_dbs.sql
pgsql -f all_pg_dbs.sql postgres
psql tecmintdb < tecmintdb.sql
pg_restore -d tecmintdb tecmintdb.tar

pg_dump tecmintdb | gzip > tecmintdb.gz
pg_dump -U tecmint -h 10.10.20.10 -p 5432 tecmintdb > tecmintdb.sql

0 0 * * *  pg_dump  -U postgres tecmintdb > /srv/backups/postgres/tecmintdb.sql

su - postgres 
pg_dump -U postgres db_name | gzip > backup_file.gz

pg_dump -d postgres > postgres.sql

sudo mkdir -p /backups/postgresql
sudo chown postgres /backups/postgresql
su - postgres
crontab -e
0 0 * * 0 pg_dump -U postgres db_name | gzip > /backups/postgresql/db_name.gz

Run the following commands to restore the database.

Set the PostgreSQL user
su - postgresl
Recreate the database if it exists
psql -c "drop database t1" && psql -c "create database t1;"
Restore the database from the archive
gunzip -c /backups/postgresql/db_name.gz | psql db_name

SELECT * FROM pg_settings WHERE name = 'port';

0 0 * * * ~/scripts/db_backup.sh # take a backup every midnight
0 2 * * * ~/scripts/db_sync.sh # upload the backup at 2am

psql -h <host_ip> -p <port> -U <username> -d <database> -c 'SELECT * FROM table'
psql -h <host_ip> -p <port> -U <username> -d <database> -f myscript.sql
psql -U postgres -d new_db < my_database_backup.sql
pg_dump -U postgres -F t my_database > my_database_backup.tar
pg_restore -U postgres -d my_database -c my_database_backup.tar

from rich import pretty
pretty.install()
mail.smtp.starttls.enable=true
196.43.144.6  --> kyuir.kyu.ac.ug

https://github.com/dunovank/jupyter-themes
pip install jupyterthemes

# SMTP mail server authentication username and password (if required)
mail.server.username = emailalerts2016@gmail.com
mail.server.password = asterisk@2010

DESKTOP-OGJO8A0  -- laptop name

Auto start VM on XenServer boot
xe pool-list
xe pool-param-set uuid=b20342ba-3ec5-3267-b21c-f3cb71af43cf other-config:auto_poweron=true
xe vm-list.
xe vm-param-set uuid=912e65cc-31a5-4855-ab24-d926979b7389 other-config:auto_poweron=true
xe vm-param-set uuid=ed2fac8-3b1b-6d85-60a9-3e4ec23dc3eb other-config:auto_poweron=true
xe vm-param-set uuid=d4710bd7-79fc-b275-1502-5e94c1b0f99d other-config:auto_poweron=true

---------------- VMs on 10.1.1.12 --------------------
xe pool-list 
xe pool-param-set uuid=062d4788-1a08-4357-570d-b9010167002d other-config:auto_poweron=true
xe vm-list
xe vm-param-set uuid=1066a653-476c-c46c-dd4c-38e5770ced74 other-config:auto_poweron=true
xe vm-param-set uuid=d2845ac2-1b76-f692-fbfc-151b78f19c34 other-config:auto_poweron=true

for i in `xe vm-list is-control-domain=false –minimal | tr , ‘  ’`; do xe vm-param-set uuid=$i other-config:auto_poweron=true; done

xe vm-export vm=(name or uuid) outputfile.xva

C:\Users\walas>mysql --print-defaults
C:\Users\walas>mysql -V

hdonline.is -- Video Streaming
the Last AirBender
https://hdonline.is/watch/the-last-airbender-10409?ep=766174

RainMeter
Remix OS Player -- Android Emulator
F.luxn -- Adapts Computer Screen to Days Climate 
Ninite  -- Multi Installer 
BitTorrent Sync -- Buy
Plex
LastPass.com
Windows Sysinternals

------------ Video Streaming --------
Twitch -- Live Games Streaming
NETFLIX
HULU
HBO Now
ShowTime

https://www.thebalance.com-- Job Interview and Preparations
https://shortcutworld.com/Platform/win  -- For Shortcuts 

https://shortcutworld.com/Windows/win/Microsoft-Windows_10_Shortcuts

https://github.com/dunovank/jupyter-themes
Oceans16 Syntax -- Jupyter Notebook 

iSpring Free Cam -- Screen Recorder
CamStudio -- Screen Recorder (*****)
Open Broadcaster Software -- Game Screen Recorder
Camtasia Studio -- Paid Screen Recorder
ScreenFlow -- Best Paid Screen Recorder -- Mac OS

Google Photos to replace picassa
PDF Drive - https://www.pdfdrive.net/
CodinGame - https://www.codingame.com
StillTasty - http://www.stilltasty.com/
Cymath - https://www.cymath.com/
Gwiki - http://www.gwiki.io/
Gravit Designer - https://designer.io/
TwoFoods - http://www.twofoods.com/
Movie-Map - http://www.movie-map.com/
Hacksplaining - https://www.hacksplaining.com/
Instructables - http://www.instructables.com/

Online-Convert: http://www.online-convert.com/
WeVideo: https://www.wevideo.com/
Google Play Music: https://play.google.com/store/music
Prezi: https://prezi.com/
Mint: https://www.mint.com/
VirusTotal: https://www.virustotal.com
Pixlr Editor: https://pixlr.com/editor/
Google Docs: https://www.google.com/docs/about/
Google Sheets: https://www.google.com/sheets/about/
Google Slides: https://www.google.com/slides/about/
Silex: http://www.silex.me/
LastPass: https://www.lastpass.com/

Powerful Websites 1: https://youtu.be/DM9LgkycUtw
PowToon: https://www.powtoon.com/
PDFescape: https://www.pdfescape.com/
Canva: https://www.canva.com/
iPiccy: https://ipiccy.com/
OnShape: https://www.onshape.com/
Microsoft Office Online: https://products.office.com/en-us/off...
SlideDog: https://slidedog.com/
Figma: https://www.figma.com/
Weebly: https://www.weebly.com/
Trello: https://trello.com/

NWSC Meter No: 21147740
0705069111
Telegram: Messaging App for Notifications 
123moviesfreenow.com

Infinity Computers & Communications
Infinity Computers (i3C)  -- {jobs@i3c.co.ug}

npm install npm@latest -g
0776 639841

Node JS Website --> Downloads -> Previous Releases

*#*#8351#*#*

scp -rpC dspace dspace@10.1.1.45:~/Backup
sudo su - postgres

https://www.youtube.com/watch?v=Wor7mASx3ws  -- Fixing BAD CONFIG ERROR
# -------------------- VoIP SetUP --------------------------------
0772120037  -- Peter Muhangi

Mayim Bialik -- Big Bang Theory Emmy
Compressor Not working!!! --- For Main Data Centre AC 17/10/2017
TV Mac Address: E8:F2:E2:88:EB:4A
DNS -- 196.43.185.3 on FanvilPhones

Superscript and Subscript
32^nd^
H~2~O

http://www.makeuseof.com/tag/create-full-page-news-ticker-display-rss-widgets/
http://www.4guysfromrolla.com/articles/120110-1.aspx
startTicker(id, numberToShow, duration) - call this function when the page loads to convert an unordered list into a news ticker.

http://www.download3k.com/articles/How-to-Enable-God-Mode-in-Windows-10-01367
GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}

select pg_reload_conf();
pg_ctl reload -D \path\to\datadirectory

firewall-cmd --zone=public --add-port=80/tcp --permanent
systemctl start firewalld
systemctl enable firewalld

firewall-cmd --list-services
firewall-cmd --list-ports
firewall-cmd --zone=public --list-all
firewall-cmd --zone=public --add-port=80/tcp --permanent

CoreUtils  -- {Linux commands in Windows}
cockpit -- NodeJS Linux Monitoring

mail.server.username = emailalerts2016@gmail.com
mail.server.password = asterisk@2010

https://www.linode.com/docs/applications/voip/install-asterisk-on-centos-7
https://linoxide.com/tools/install-setup-asterisk-13-pbx-centos-7/
https://computingforgeeks.com/how-to-install-asterisk-pbx-13-x-on-centos-7-step-by-step-guide/
http://mirror.ucu.ac.ug/centos/6.8/updates/x86_64/Packages/
http://thestallionstyle.com/the-secrets-of-penis-enlargement-bible-revealed-in-this-review/

www.thegeekstuff.com
www.howtogeek.com (*****)
http://www.thegeekstuff.com/2009/12/best-articles/

https://www.youtube.com/watch?v=eLG_iu9n1z0
------------ CoreUtils ------------
Zeevars@2014
bulabira2016

http://www.ku.ac.ke/2015-12-11-06-09-13/2015-12-11-06-18-05

############# Starting and Stopping Nitrogen on Reporting Tool{10.1.1.230} ############
When Reporting Tool is off
cd /HOME/Build/oracle/ekampus_reports-1.0/myapp/bin/
cd /HOME/Build/oracle/ekampus_reports-1.0/myapp/bin/nitrogen stop|start
zeevars@196.43.128.25's 

########################################################################################
The easiest solution is to use the /etc/rc.local file. By default, it's empty.

Since rc.local runs as root, you can use it as such (though if you prefer to run Nitrogen as a separate user, using su -c "command" username) is good.
Anyway, the simple solution is to add to your rc.local file the following:

To run as root:
/HOME/Build/someuser/myapp/bin/nitrogen start
To run as another user:

su -c "/HOME/Build/someuser/myapp/bin/nitrogen start" someuser
That will launch Nitrogen appropriately and will let you connect to the VM using bin/nitrogen attach.

My previous recommendation of using sudo is not sufficient, as it doesn't reset the environment to the user you want.

I'm using this in production on Ubuntu 14.04 and a linode VPS.
I hope that helps.

##########################XML Line Breaks ##########################
<myxml>
    <record>
        <![CDATA[
        Line 1 <br />
        Line 2 <br />
        Line 3 <br />
        ]]>
    </record>
</myxml>

######################## Installing Asterisk 13 on Centos 6 ############################
http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
http://blogs.digium.com/2015/02/24/install-asterisk-13-pjsip-centos-6/

Disable SE Linux
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config

yum update && reboot
yum install -y epel-release dmidecode gcc-c++ ncurses-devel libxml2-devel make wget openssl-devel newt-devel kernel-devel sqlite-devel libuuid-devel gtk2-devel jansson-devel binutils-devel

yum install –y ncurses-dev uuid-devel libuuid-devel libxml2-devel sqlite-devel bison subversion git-core

NOTE:If you encounter an issue resolving the dependencies check out the fantastic install_prereq tool shipped with the Asterisk tarball. Located in the contrib/scripts directory of the Asterisk source directory that will be unpacked in step 3.

ldconfig -p | grep pj

wget http://www.digip.org/jansson/releases/jansson-2.7.tar.gz
./configure --prefix=/usr
make clean
make && make install
ldconfig

cd /usr/src
wget  http://downloads.asterisk.org/pub/telephony/certified-asterisk/certified-asterisk-13.1-current.tar.gz

./configure --libdir=/usr/lib64

make menuselect
make && make install
make samples
make config

You can automate the selection of /usr/lib and /usr/lib64 as follows
ARCH=$(getconf LONG_BIT | grep “64”)
./configure –libdir=/usr/lib${ARCH}

http://www.itpros.de/linux/install-asterisk-13-on-centos-6-6-with-iptables/
http://linoxide.com/tools/install-setup-asterisk-13-pbx-centos-7/

[root@centos-7 asterisk-13.5.0]# useradd -m asterisk
[root@centos-7 asterisk-13.5.0]# chown asterisk.asterisk /var/run/asterisk
[root@centos-7 asterisk-13.5.0]# chown -R asterisk.asterisk /etc/asterisk
[root@centos-7 asterisk-13.5.0]# chown -R asterisk.asterisk /var/{lib,log,spool}/asterisk
[root@centos-7 asterisk-13.5.0]# chown -R asterisk.asterisk /usr/lib64/asterisk

asterisk -rx "sip show peers" | grep UNKNOWN | grep -vE $PATTERN_EXCLUDE | awk -F"(" 'NR > 0 {print "Extension: " $1} END { print "\nTotal Offline:" NR}'

asterisk -rx "sip show peers" | grep UNKNOWN | awk -F"(" 'NR > 0 {print "Extension: " $1} END {print "\nTotal Offline:" NR}'
asterisk -rx "sip show peers" | grep UNKNOWN | awk -F" " 'NR > 0 {print "Extension: " $1} END {print "\nTotal Offline:" NR}'
asterisk -rx "sip show peers" | grep UNKNOWN | awk -F" " 'NR > 0 {print $1,$8,$9}'

# https://pbxinaflash.com/community/threads/monitor-with-sip-show-peers.6101/
#!/bin/sh
> /tmp/checkPeers
/usr/sbin/asterisk -rx "sip show peers" | grep UNKNOWN > /tmp/checkPeers
if [ -s "/tmp/checkPeers" ]; then 
	mail -s "SIP Connections Offline please check" -b [EMAIL="me@abcd.net"]me@abcd.net[/EMAIL] [EMAIL="user@company.com"]user@company.com[/EMAIL]  </tmp/checkPeers
fi
PATTERN_EXCLUDE='299|3[1-3]'   --> 299 & 310 to 339
asterisk -rx "sip show peers" | grep UNKNOWN | grep -vE $PATTERN_EXCLUDE

# Remove comments and empty lines in Asterisk Config Files ---------
https://www.voip-info.org/wiki/view/Nocom

cat extensions.conf | sed -e '/^\s*;/d' | sed -e '/^\s*$/d'

#!/bin/sh
cat $1 | sed -e '/^\s*;/d' | sed -e '/^\s*$/d'

# http://blog.ones-app.com/how-to-recursively-find-and-delete-files-from-server-after-certain-time/
# Listing all voicemail messages that exists in server for more than 30 days:
find /var/spool/asterisk/voicemail -type f -name "msg*" -mtime +30 -exec ls -lhtr {} \;

# Removing all voicemail messages that exists in server for more than 30 days:
find /var/spool/asterisk/voicemail -type f -name "msg*" -mtime +30 -exec rm {} \;

# --------------- How To Debug and Troubleshoot VOIP------------
https://www.voip-info.org/wiki/view/How+To+Debug+and+Troubleshoot+VOIP
tcpdump
Wireshark
VoIPmonitor

######################### LAN Configs for CentOS ##############################
DEVICE=eth0
HWADDR=00:0C:29:D8:34:A4
TYPE=Ethernet
UUID=f1903f84-eba3-42cd-9399-26a376711da3
ONBOOT=yes
NM_CONTROLLED=yes
BOOTPROTO=dhcp
USERCTL=no
PEERDNS=yes
#PEERDNS=no
IPV6INIT=no
#DNS1=8.8.8.8
#DNS2=8.8.4.4

063056

###################################################################################
Logging Application

############################### Postgresql 9.6 on 10.1.1.222 ###########################
/var/lib/pgsql/9.6/data/

################################# http://zeenode.com/ ##################################
Odul Peter
CEM Consultant
Huawei Technologies Nigeria
Tel: +2349024102495

######################176.58.126.39 zeenode.com -- Linode 50476########################


##############################CV KYU ################################################
Under The Ekampus management System Kyambogo University April 2012 – to Date:
-	Worked on the setup and Support of the Koha Library Management System
-	Worked on the setup the Moodle Elearning management System
-	Worked on the setup and management of the Dspace Institutional Repository
-	Setup of the VoIP SoftSwitch Based on Asterisk which had modules like 


####################196.43.144.3 -- Elearning ###########################
####################196.43.144.30  kelms -- Elearning 1###########################

######################Dspace Migration##########################################
https://github.com/DSpace/DSpace/releases
http://wiki.lib.sun.ac.za/index.php?title=Main_Page
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/DSpace
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/Secure_Internet_Connections/S01
https://www.youtube.com/watch?v=RxwU0SwwFo0
https://www.youtube.com/watch?v=gLNOUvcXABA&list=PLlOglq06moTsd63OaJn6zK2g1fV4sSwYv
https://hostpresto.com/community/tutorials/how-to-install-and-configure-apache-tomcat-7-on-ubuntu-14-04/
https://help.ubuntu.com/community/AutoWeeklyUpdateHowTo
http://scholar.sun.ac.za/
http://dspacebromley.blogspot.ug/
https://ipleak.net
http://openjdk.java.net/install/
https://www.java.com/en/download/linux_manual.jsp
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
http://www.davidghedini.com/pg/entry/install_tomcat_7_on_centos
###################### Upgrading Dspace and Migrating Dspace ###########################

######################### Installing Java on CentOS ##################################
http://tecadmin.net/install-java-8-on-centos-rhel-and-fedora/
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
http://tecadmin.net/steps-to-install-java-on-centos-5-6-or-rhel-5-6/

http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz

############################ Backing Up Postgresql ####################################
pg_dump -U [database-user] -f [backup-file-location] [database-name]
pg_restore -C -d postgres -U dsapce dumpfile

################# Examination Coordinator Department of Special Needs ##################
http://www.linuxproblem.org/art_9.html

http://stackoverflow.com/questions/4161548/how-to-establish-ssh-key-pair-when-host-key-verification-failed
ssh-keygen -R hostname -- for "Host key verification failed"

@10.1.1.222
10.2.0.10 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA0kKTZhZc7/4xSopSlOFcaaVtDdkLaBJpAUJT6D5bTLppyYf/NHdf9JGp0Hdm1mrCSihRE+cCLYGHmJDBRv1u2ffSGQw72iBoZ+QN0VtcNGidRmunDcmQLclmjXB3vY5L8k5h3V0A1fGcdGipnGMl5SptufDTRQaJ0d4tK8q1TxWX9sb8ro/wXtlQ3gcnml4Iwt0wOL/9dPyDrPfDhOoYd7Z7mc/nMIiJzBxwAPkFciUMi5jWHS01QGV4SjwWKN9BnvtTCSXdMsVSj8cNLpfuhmEdmZIooWMfn9tCaYEAHfXs/0Zi3nA+OXaiOJP8noqzIwzGG58GmVO3c35AFaGSCQ==  Found at dbserver@10.1.1.222 /root/.ssh/known_keys

[kelms.kyu.ac.ug]:50476,[196.43.144.30]:50476 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAuWC4sAxHWUBF3lLgKKn1vls1OTewwarYkkJM6lSMzQoCWwi+xNmK9U4X6Zs6dSYZHkla0bnHvuDBK52sU3A7abulAKr25Iw/RwJ1L8vTFGbK03hG2/upaf5jSLucuDVH+J2OVesu2W4RWFCPgH/G7aFVtlXOCyZRH9omeaSOyUk76dfGT4MNWLi4+lguJImmcNC0eC6KG1rYpWR5ScfV5EmGfu4GMsXNOvb1GfEA/HDub9S//5FhRRNEFFb5QNRXMw2K0zIDKBsl3ZZVlRivm9Kos0dQ2Pm5kKYBnCITkwde61k33OCHAcTOEZswwhTQGvdXYy/jQYMG4e8FmcDgiw==

###################SSH Passwordless Login Using SSH Keygen in 5 Easy Steps##############
ssh-keygen -t rsa
cat .ssh/id_rsa.pub | ssh sheena@192.168.0.11 'cat >> .ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh root@10.2.0.10 'cat >> .ssh/authorized_keys'

196.43.144.30
########################################################################################
http://openjdk.java.net/install/

Installation of the 64-bit JDK on RPM-based Linux Platforms
This procedure installs the Java Development Kit (JDK) for 64-bit RPM-based Linux platforms, such as Red Hat and SuSE, using an RPM binary file (.rpm) in the system location. You must be root to perform this installation.

These instructions use the following file:

    jdk-7u<version>-linux-x64.rpm
1. Download the file. Before the file can be downloaded, you must accept the license agreement.

2. Become root by running su and entering the super-user password.

3. Uninstall any earlier installations of the JDK packages.

    # rpm -e <package_name>
4. Install the package.

    # rpm -ivh jdk-7u<version>-linux-x64.rpm
To upgrade a package:
    # rpm -Uvh jdk-7u<version>-linux-x64.rpm
5. Delete the .rpm file if you want to save disk space.

6. Exit the root shell. No need to reboot.

####################################################
rpm -qa | grep jdk
rpm -ql jdk

JAVA_HOME/Build='/usr/java/jdk1.8.0_20'
export JAVA_HOME/Build
PATH="$JAVA_HOME/Build/bin:$PATH"
export PATH

############################Upgrading Dspace###################
pg_dump -U dspace -f /HOME/Build/dspace/migrate_dspace5 dspace


#################################Enviromental Variables#################################
https://wiki.transmartfoundation.org/display/TSMTGPL/Tomcat+7+manual+installation+guide
To set the JAVA_HOME/Build permanently, however, we need to add below to the ~/.bash_profile of the user (in this case, root). 
We can also add it /etc/profile and then source it to give to all users.
view plaincopy to clipboardprint?

sudo useradd tomcat7 --system --shell /sbin/nologin --HOME/Build /opt/tomcat7
 
CATALINA_HOME/Build=/opt/tomcat7/apache-tomcat-7.0.64
sudo chown -R tomcat7:tomcat7 $CATALINA_HOME/Build/{logs,temp,work,webapps}
sudo chgrp tomcat7 $CATALINA_HOME/Build/conf/*
sudo chmod g+r $CATALINA_HOME/Build/conf/*

JAVA_HOME/Build=/usr/java/jdk1.7.0_05  
export JAVA_HOME/Build  
PATH=$JAVA_HOME/Build/bin:$PATH  
export PATH  

JAVA_HOME/Build=/usr/java/jdk1.7.0_79
export JAVA_HOME/Build
PATH=$JAVA_HOME/Build/bin:$PATH
export PATH 

echo "CATALINA_HOME/Build=/opt/tomcat7/apache-tomcat-7.0.73" >> ~/.bash_profile
echo "export CATALINA_HOME/Build" >> ~/.bash_profile

CATALINA_HOME/Build=/opt/tomcat7/apache-tomcat-7.0.73
sudo chown -R dspace:dspace $CATALINA_HOME/Build/{logs,temp,work,webapps}
sudo chgrp dspace $CATALINA_HOME/Build/conf/*
sudo chmod g+r $CATALINA_HOME/Build/conf/*


##############################################################################
#!/bin/bash
# description: Tomcat Start Stop Restart
# processname: tomcat
# chkconfig: 234 20 80
JAVA_HOME/Build=/usr/java/jdk1.7.0_79
export JAVA_HOME/Build
PATH=$JAVA_HOME/Build/bin:$PATH
export PATH
CATALINA_HOME/Build=/opt/tomcat7/apache-tomcat-7.0.73

case $1 in
start)
sh $CATALINA_HOME/Build/bin/startup.sh
;; 
stop)   
sh $CATALINA_HOME/Build/bin/shutdown.sh
;; 
restart)
sh $CATALINA_HOME/Build/bin/shutdown.sh
sh $CATALINA_HOME/Build/bin/startup.sh
;; 
esac    
exit 0


/usr/java/jdk1.7.0_79/jre

################################ Local CentOS ############################
/usr/lib/jvm/jre-1.7.0-openjdk.x86_64/bin/java

[root@Asterisk java]# java -version
java version "1.7.0_111"
OpenJDK Runtime Environment (rhel-2.6.7.2.el6_8-x86_64 u111-b01)
OpenJDK 64-Bit Server VM (build 24.111-b01, mixed mode)

alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_79/bin/java 2
alternatives --config java

#!/bin/bash
JAVA_HOME/Build=/usr/java/jdk1.7.0_79
CATALINA_HOME/Build=/opt/tomcat7
ANT_HOME/Build=/opt/apache-ant-1.9.8
MAVEN_HOME/Build=/opt/apache-maven-3.3.9

PATH=$JAVA_HOME/Build/bin:$ANT_HOME/Build/bin:$MAVEN_HOME/Build/bin:$PATH

export PATH JAVA_HOME/Build ANT_HOME/Build MAVEN_HOME/Build
export CLASSPATH=.

JRE_HOME/Build=/usr/java/jdk1.7.0_79/jre/

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

if [ -f /etc/profile.d/java.sh ]; then
        . /etc/profile.d/java.sh
fi

IDMGCExt.crx in IDM Installation Directory

http://staff.lib.sun.ac.za/~hgibson/docs/cv/cv.html

#################Tomcat Listening on Port 80 in Ubuntu 14.04 ###########################
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/Prepare_Ubuntu/S05/Ubuntu-14.04
sudo apt-get install tomcat7

Step 5.2.1: Setup "authbind" for Tomcat
To enable Tomcat to listen on a privileged port below 100, we need to enable "authbind". Edit the /etc/default/tomcat7 file as follows:

sudo nano /etc/default/tomcat7
Remove the hash sign from in front of the authbind parameter and change authbind to yes as follows


sudo touch /etc/authbind/byport/80
sudo touch /etc/authbind/byport/443
sudo chmod 0755 /etc/authbind/byport/80
sudo chmod 0755 /etc/authbind/byport/443

sudo chown tomcat7.tomcat7 /etc/authbind/byport/80
sudo chown tomcat7.tomcat7 /etc/authbind/byport/443

sudo nano /etc/tomcat7/server.xml
Find the connector for port 8080 and change it to port 80.

See example below.
    <Connector port="80" protocol="HTTP/1.1" 
               enableLookups="false"
               maxConnections="-1"
               maxThreads="450"
               maxHttpHeaderSize="16384"
               connectionTimeout="20000" 
               URIEncoding="UTF-8"
               redirectPort="443" />
If enabled, comment out the AJP 1.3 connector. It is not needed.

http://wiki.lib.sun.ac.za/index.php/SUNScholar/Secure_Internet_Connections on using port 443

sudo nano /etc/tomcat7/tomcat-users.xml
Delete all the contents of the file and add the following admin and manager roles with a password. Replace XXXX with your password!

<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="manager-gui"/>
  <role rolename="manager-jmx"/>
  <user username="dspace" password="XXXX" roles="manager-gui,manager-jmx"/>
</tomcat-users>


Step 5.4 Java environment settings for Tomcat webapp server
To setup the environment variables for Tomcat java web applications, type the following:

sudo nano /etc/default/tomcat7
After determining how much RAM is installed on your server, it is best practice to use about 50% of the RAM for Java.

Check the following for comparison:

# You may pass JVM startup parameters to Java here. If unset, the default
# options (-Djava.awt.headless=true -Xmx128m) will be used.
#JAVA_OPTS="-Djava.awt.headless=true -Xmx128m"
JAVA_OPTS="-Djava.awt.headless=true -Xmx2048m -Xms1024m -XX:MaxPermSize=1024m"

Step 5.5 Setup Tomcat server permissions
sudo nano /etc/default/tomcat7

Change "TOMCAT7_SECURITY" to yes.
# Use the Java security manager? (yes/no, default: no)
TOMCAT7_SECURITY=yes

Create DSpace security policy
sudo nano /etc/tomcat7/policy.d/05dspace.policy

Copy and paste the following;
grant codeBase "file:/HOME/Build/dspace/-" {
  permission java.security.AllPermission;
};
grant codeBase "file:/tmp/-" {
  permission java.security.AllPermission;
};

Step 5.6: Setup user permissions
cd
sudo adduser tomcat7 dspace
sudo adduser dspace tomcat7

Step 5.7: Restart the Tomcat server
Now restart the tomcat server as follows:
sudo service tomcat7 restart

Step 5.8: Post Tomcat installation checks
Now let's' look if all went well:
sudo netstat -tapn | grep java

cd /var/lib/tomcat7/webapps
sudo ln -s /HOME/Build/dspace/webapps/xmlui ROOT

apt-cache showpkg tomcat7
##########################Before Upgrading Dspace####################
#######################Backup your Dspace#####################
The DSpace specific things to backup are: 
{configs, source code modifications, database, and assetstore}. 

 On your server that runs DSpace, you might additionally consider checking on your 
 {cron/scheduled tasks, servlet container, and database}

Make a complete backup of your system, including:
Database:
pg_dump -U [database-user] -f [backup-file-location] [database-name]
pg_dump -U dspace -f /HOME/Build/admin/dpsace-backup-`date +%F`.sql dspace

Assetstore: Backup the directory ([dspace]/assetstore by default, and any other assetstores configured in the [dspace]/config/dspace.cfg "assetstore.dir" and "assetstore.dir.#" settings)

Configuration: Backup the entire directory content of [dspace]/config.

Customizations: If you have custom code, such as themes, modifications, or custom scripts, you will want to back them up to a safe location.

Statistics data: what to back up depends on what you were using before: the options are the default SOLR statistics, optional Elastic Search statistics, or the legacy statistics. Legacy stats utilizes the dspace.log files, Elastic Search stats stores data in [dspace]/elasticsearch, SOLR Statistics stores data in [dspace]/solr/statistics. A simple copy of the data directory should give you a point of recovery, should something go wrong in the update process. We can't' stress this enough, your users depend on these statistics more than you realize. You need a backup.

Customizations are typically housed in one of the following places:
JSPUI modifications: [dspace-source]/dspace/modules/jspui/src/main/webapp/
XMLUI modifications: [dspace-source]/dspace/modules/xmlui/src/main/webapp/
Config modifications: [dspace]/config

Edit the build.properties file (if needed) ([dspace-source]/build.properties).  Any settings changed in this build.properties }file are automatically copied over to the final dspace.cfg file during the "Build DSpace" process (in the next step).  For more information on the build.properties file, see "The build.properties Configuration Properties File" section of the Configuration Reference documentation.
Build DSpace. Run the following commands to compile DSpace :
cd [dspace-source]/dspace/
mvn -U clean package
The above command will re-compile the DSpace source code and build its "installer". You will find the result in [dspace-source]/dspace/target/dspace-installer

Enabling and building the DSpace 5 Mirage 2 theme
Mirage 2 is a responsive theme for the XML User Interface, added as a new feature in DSpace 5. It has not yet replaced the Mirage 1 theme as the XMLUI default theme.
To enable Mirage 2, add the following to the  <themes>  section of  src/dspace/config/xmlui.xconf , replacing the currently active theme:
  <theme name="Mirage 2" regex=".*" path="Mirage2/" /> 
It is important to do this before executing the maven build.
Mirage 2 is not yet activated in the default "mvn package" build. To include it as part of the build, run:
 
    mvn -U clean package -Dmirage2.on=true
The speed of this specific step of the build can be increased by installing local copies of the specific dependencies required for building Mirage 2. The Mirage 2 developer documentation provides detailed instructions for these installations. After the installation of these dependencies, you can choose to run:
 
    mvn -U clean package -Dmirage2.on=true -Dmirage2.deps.included=false
Warning: The Mirage 2 build process should NOT be run as "root". It must be run as a non-root user. For more information see: Mirage 2 Common Build Issues

Stop Tomcat (or servlet container). Take down your servlet container. 
For Tomcat, use the $CATALINA_HOME/Build/shutdown.sh script. (Many Unix-based installations will have a startup/shutdown script in the /etc/init.d or /etc/rc.d directories.)

Update DSpace Installation. Update the DSpace installation directory with the new code and libraries. Issue the following commands:
cd [dspace-source]/dspace/target/dspace-installer
ant update

[dspace]/bin/dspace database info
# Look for a line at the bottom that says something like:
# "Your database looks to be compatible with DSpace version ___"

# General PostgreSQL example
psql -U [database-user] -f [dspace]/etc/postgres/update-sequences.sql [database-name]
 
# Example for a PostgreSQL database named "dspace", and a user account named "dspace"
# psql -U dspace -f [dspace]/etc/postgres/update-sequences.sql dspace

Then, you can upgrade your DSpace database to the latest version of DSpace. (NOTE: check the DSpace log, [dspace]/log/dspace.log.[date], for any output from this command)
[dspace]/bin/dspace database migrate

As long as you plan to use the default settings in DSpace (with Discovery enabled), you can safely remove any old Legacy browse tables (named "bi_*", where "bi" = browse index). To do so, simply run: 
[dspace]/bin/dspace index-db-browse -f -d

###################################################################################
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/Upgrading/DSpace/General_Notes
install meld on Ubuntu

sudo -i
su - postgres

pg_dump dspace > /tmp/dspace-db.sql
cp /tmp/dspace-db.sql $HOME/Build/backup/

Before upgrading optimise the SOLR databases
Before backing up or upgrading DSpace, make sure to run any maintenance scripts on the SOLR database. See below.
$HOME/Build/bin/dspace stats-util -o

Backup the SOLR databases
cp -Rv $HOME/Build/solr/ $HOME/Build/backup/

sudo -i
su - postgres
psql -U %dspace-database-username% -f /HOME/Build/dspace/source/dspace/etc/postgres/update-sequences.sql %dspace-database-name%

Step 5 - Update /HOME/Build/dspace file permissions and ownership

If you upgraded from tomcat6 to tomcat7, then type the following to update file permissions and ownership:

sudo chown dspace.tomcat7 -R /HOME/Build/dspace
sudo chmod 0777 -R /HOME/Build/dspace
sudo adduser tomcat7 dspace
sudo adduser dspace tomcat7

#####################################################################################
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/Discovery/5.X
Step 1 - Define Discovery SOLR service

Edit the following file:

nano $HOME/Build/source/dspace/config/modules/discovery.cfg
See example below.

#---------------------------------------------------------------#
#-----------------DISCOVERY CONFIGURATIONS----------------------#
#---------------------------------------------------------------#
# Configuration properties used solely by the Discovery         #
# faceted-search system.                                        #
#---------------------------------------------------------------#
##### Search Indexing #####
search.server = ${solr.server}/search

#Enable the url validation of the search.server setting above.
#Defaults to true: validation is enabled
#solr.url.validation.enabled = true

#Char used to ensure that the sidebar facets are case insensitive
#solr.facets.split.char=\n|||\n

# index.ignore-variants = false
# index.ignore-authority = false
index.projection=dc.title,dc.contributor.*,dc.date.issued

# ONLY-FOR-JSPUI: 
# 1) you need to set the DiscoverySearchRequestProcessor in the dspace.cfg 
# 2) to show facet on Site/Community/etc. you need to add a Site/Community/Collection
#	 Processors plugin in the dspace.cfg

#########################################################################
http://wiki.lib.sun.ac.za/index.php?title=SUNScholar/Reference_Architecture
Dspace 5.X
Ubuntu 14.04 LTS -- XMLUI+Mirage2+PostgreSQL+OpenJDK7u101+Maven3.0.5+Ant1.9.3+Tomcat7.0.52

#########################Xen Servers##############################
10.1.1.100 -- ekampus-xen3
10.1.1.6 -- ekampus-xen-1
10.1.1.64 -- ekampus-xen-2
10.150.0.60 -- ekampus-xen4
10.2.0.4  -- zee-server-1
10.2.0.6 -- zee-server-3

************Web Design and Javascript Books recommended for building custom themes*************
-- Eloquent Javascript -- by Marijn Haverbeke
-- HTML & CSS -- Jon Duckett
-- Beautiful Web Design by Jason Beaird

JavaScript Cookbook - by Shelley Powers
Effective JavaScript - by David Herman
Secrets of the JavaScript Ninja - by John Resig and Bear Bibeault

#######################Disabling IPv6 in Ubuntu######################################
https://support.purevpn.com/how-to-disable-ipv6-linuxubuntu

Enter gksudo gedit /etc/sysctl.conf and open the configuration file and add the following lines at the end

net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

#3   After that run $ cat /proc/sys/net/ipv6/conf/all/disable_ipv6

If it reports ‘1′ means you have disabled IPV6. If it reports ‘0‘ then please follow Step 4 and Step 5.  

#4  Type command sudo sysctl -p you will see this in terminal.

net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

#5  Repeat above “Step 3” and it will now report 1.

#########################Nagios Monitoring ##############################
https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.3.1.tar.gz#_ga=2.98691422.1981223999.1493743332-1583295747.1491300706
https://www.nagios.org/downloads/nagios-core/#_ga=2.73880279.495204012.1493742902-1583295747.1491300706
https://nagios-plugins.org/doc/guidelines.html
https://blog.serverdensity.com/howto-install-nagios-in-30-minutes-and-jumpstart-your-monitoring/ -- {Further Reading}
https://www.nagios.com/products/nagios-core/
https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/security.html
https://www.nsclient.org/
https://support.nagios.com/
https://lowendbox.com/blog/remote-server-monitoring-with-nagios/ -- {Has Reference for Nagios Plugins creation}
https://support.nagios.com/kb/article.php?id=515
https://www.tecmint.com/how-to-add-linux-host-to-nagios-monitoring-server/
https://www.digitalocean.com/community/tutorials/how-to-install-nagios-4-and-monitor-your-servers-on-centos-7

Defaults:nagios !requiretty      # Allows for nagios user (The user NRPE uses) to not require a tty.
nagios ALL = NOPASSWD:/usr/local/nagios/libexec/*      # Allows nagios user to run all NRPE plugins using sudo without entering a password.   -- sudoers file

yum install -y nmap
nmap x.x.x.x -p 5666

/usr/local/nagios/libexec/check_nrpe -H x.x.x.x -c check_total_procs
echo $?

command[check_total_procs]=/usr/local/nagios/libexec/check_procs -w $ARG1$ -c $ARG2$

restart nrpe service 

/usr/local/nagios/libexec/check_nrpe -H x.x.x.x -c check_total_procs -a 50 100

/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

####################### Installing Nagios on Ubuntu 16.04 ########################
https://www.howtoforge.com/tutorial/ubuntu-nagios/

sudo apt-get install wget build-essential apache2 php apache2-mod-php7.0 php-gd libgd-dev sendmail unzip

useradd nagios
groupadd nagcmd
usermod -a -G nagcmd nagios
usermod -a -G nagios,nagcmd www-data

cd ~
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.2.0.tar.gz
tar -xzf nagios*.tar.gz
cd nagios-4.2.0
./configure --with-nagios-group=nagios --with-command-group=nagcmd
make all
sudo make install
sudo make install-commandmode
sudo make install-init
sudo make install-config
sudo /usr/bin/install -c -m 644 sample-config/httpd.conf /etc/apache2/sites-available/nagios.conf

cp -R contrib/eventhandlers/ /usr/local/nagios/libexec/
chown -R nagios:nagios /usr/local/nagios/libexec/eventhandlers

cd ~
wget https://nagios-plugins.org/download/nagios-plugins-2.1.2.tar.gz
tar -xzf nagios-plugins*.tar.gz
cd nagios-plugin-2.1.2/

./configure --with-nagios-user=nagios --with-nagios-group=nagios --with-openssl
make
make install

vim /usr/local/nagios/etc/nagios.cfg

uncomment line 51 for the host monitor configuration.
cfg_dir=/usr/local/nagios/etc/servers

mkdir -p /usr/local/nagios/etc/servers

vim /usr/local/nagios/etc/objects/contacts.cfg

Step 1 - enable Apache modules
sudo a2enmod rewrite
sudo a2enmod cgi

sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

Step 2 - enable the Nagios virtualhost
sudo ln -s /etc/apache2/sites-available/nagios.conf /etc/apache2/sites-enabled/

Step 3 - Start Apache and Nagios
service apache2 restart
service nagios start

When Nagios starts, you may see the following error :
Starting nagios (via systemctl): nagios.serviceFailed

And this is how to fix it:
cd /etc/init.d/
cp /etc/init.d/skeleton /etc/init.d/nagios

Now edit the Nagios file:
vim /etc/init.d/nagios

... and add the following code:
DESC="Nagios"
NAME=nagios
DAEMON=/usr/local/nagios/bin/$NAME
DAEMON_ARGS="-d /usr/local/nagios/etc/nagios.cfg"
PIDFILE=/usr/local/nagios/var/$NAME.lock

Make it executable and start Nagios:
chmod +x /etc/init.d/nagios
service apache2 restart
servuce nagios start

# Ubuntu Host configuration file
define host {
        use                          linux-server
        host_name                    ubuntu_host
        alias                        Ubuntu Host
        address                      192.168.1.10
        register                     1
}

define service {
      host_name                       ubuntu_host
      service_description             PING
      check_command                   check_ping!100.0,20%!500.0,60%
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}

check_command           check_local_users!20!50
check_command                   check_local_disk!20%!10%!/
check_command                   check_local_procs!250!400!RSZDT

# ---------- How to Fix Nagios "HTTP WARNING: HTTP/1.1 403 Forbidden" 
touch /var/www/html/index.html
chmod 755 /var/www/html/index.html

systemctl restart httpd.service 
systemctl restart nagios.service


# ------------- Send Nagios Alert Notification Using WhatsApp ------------
http://www.unixmen.com/send-nagios-alert-notification-using-whatsapp

MCC MNC CC -- 641 01/22 Airtel 256

https://github.com/tgalal/yowsup/issues/2090
https://github.com/tgalal/yowsup/issues/2060

#_MD5_CLASSES = "ry9Xz6kVioQctwA3G9z62Q=="
#_VERSION = "2.12.556"

_MD5_CLASSES = "1naz8gL5pIYWbtaOZ3207g=="
_VERSION = "2.17.16"
DEFAULT = "s40"

https://github.com/colonyhq/yowsup/blob/master/yowsup/env/env_android.py ---- (Worked)
_MD5_CLASSES = "ox998VW0nBTueMVfjuZkmQ=="
_VERSION = "2.17.212"

INFO:yowsup.common.http.warequest:{"status":"ok","login":"256700454900","type":"existing","pw":"PFyn59qI2677hFTTPFoJ+t0OyV0=","expiration":4444444444.0,"kind":"free","price":"US$0.99","cost":"0.99","currency":"USD","price_expiration":1507352131}

status: ok
kind: free
pw: PFyn59qI2677hFTTPFoJ+t0OyV0=
price: US$0.99
price_expiration: 1507352131
currency: USD
cost: 0.99
expiration: 4444444444.0
login: 256700454900
type: existing

./yowsup-cli registration --requestcode sms --phone 256700454900 --cc 256 --mcc 641 --mnc 01 -E android

./yowsup-cli registration --register 263-541 --phone xxxxxxxxxxxxxxx --cc 49

./yowsup-cli demos -s 256775454900 "Hello Herbert" -c yowsup-cli.conf

http://kennethkinyanjui.info/whatsapp-on-laptop.html
https://github.com/tgalal/yowsup/issues/2093

from google.protobuf import descriptor as _descriptor

https://github.com/colonyhq/yowsup

WA20 Protocol

http://prolinuxhub.com/monitoring-websites-with-nagios-and-custom-python-script/
Nagios Exit Codes
Exit Code	Status
0			OK
1			WARNING
2			CRITICAL
3			UNKNOWN


https://www.digitalocean.com/community/tutorials/how-to-create-nagios-plugins-with-python-on-ubuntu-12-10
https://pommi.nethuis.nl/nagios-notifications-via-telegram/
https://www.digitalocean.com/community/tutorials/how-to-create-nagios-plugins-with-python-on-ubuntu-12-10
http://www.yourownlinux.com/2014/06/how-to-create-nagios-plugin-using-bash-script.html
https://blog.outlyer.com/2013/10/28/beautiful-nagios-scripts/
https://knowledge.opsview.com/v5.1/docs/monitoring-plugins
https://nagios-plugins.org/doc/guidelines.html


########################Monitoring Processes in Linux #######################
http://www.slashroot.in/linux-processes-administration-and-monitoring-tutorial
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Deployment_Guide/ch-System_Monitoring_Tools.html

And the maximum number of PID of a Linux system can be found from the file 
cat /proc/sys/kernel/pid_max  -- 32768 on CentOS(6.8 && 6.9) but 65536 on Ubuntu 14.04(10.130.0.231)

You can modify sysctl.conf file to modify the this limit of max PID in Linux.
4194303 is the maximum number of PID that a 64 bit Linux machine can have. So you can modify your pid_max, with a higher value like 4194303, by modifying sysctl.conf file in Linux.

kernel.pid_max=<maximum value>

## Seeing the parent PID of a process using ps command
ps aux | grep 2645
ps -p 2645 -o ppid=

## Freeing or Killing Zombie processes 
kill -s SIGCHLD 2343 {Where 2343 is the parent process}

## Making a Process orphan 
nohup sh sample.sh &

## Sending processses to background using Ctrl + Z -- {Use jobs command to list jobs}
bg %1
yum update & -- {Sending a job to background during runtime}

SHIFT + O -- with top command brings help shortcut commands
pstree

kill -l  -- List Linux Signal killing options
kill -15 <PID NO> -- Most gracefully way of a killing a linux process

#################################Yum Tips, Tricks and Tweaks############################
Finding out which package provides `lsb_release`

yum provides */lsb_release

##########################Nagios Chat Powered by tawk.to#######################
https://www.nagios.com/solutions/linux-process-monitoring/

MONIT -- System monitoring and error recovery {https://mmonit.com/monit/}

##########################Putting VMware Virtual to AutoStart#############################
My apologies, your right.

How about this then. Create a bat file with the following text inside and add that to the startup folder:

cd "\Program Files\VMware\VMware Workstation"

vmware -x "C:\My virtual machine\winxppro.vmx"

You can also create a desktop Icon (shortcut) on the Windows desktop to launch VMware Workstation and automatically start a VM

------------------------------Shared Virtual Machines -------------------------------
C:\Users\Public\Documents\Shared Virtual Machines\ -- {Location}


https://superuser.com/questions/1042809/is-it-possible-to-autostart-a-vmware-virtual-machine-in-background-as-a-windows


If you're using VMware Workstation, you could make the VM a "Shared VM" and can configure it to automatically start (in the library, right-click on "Shared VMs" and choose "Manage AutoStart VMs"). By default, Shared VMs are subjected to a hard power-off when the host is shut down. You can change this by editing %PROGRAMDATA%\VMware\hostd\vmAutoStart.xml and changing the stopAction value to GuestShutdown (or to Suspend if you'd rather suspend the VM). You will need to restart the VMware Workstation Server service after making changes to this file (and you should shut down any running shared VMs before restarting the service).


You can also use the vmrun command.

You can use a script to start a VM, for example:

vmrun -T ws start "F:\VMWare-VMs\S1.vmx"
and you add the script at Windows startup.

##############################how to create swap partition################################
http://www.computernetworkingnotes.com/file-system-administration/how-to-create-swap-partition.html -- {RHEL}

fdisk /dev/sda
n -- for creating partition +100
m -- help 
t -- change partition system id 
choose partition number
l -- list known partition types
82 -- for swap 
w - write changes

reboot -f -- to reflect changes
mkswap /dev/sda6
swapon -- cmd to activate swap
cat /proc/swaps
/etc/fstab -- {/dev/sda6	swap 	swap defults	0 0}
UUID=41e86209-3802-424b-9a9d-d7683142dab7 none swap sw 0 0  -- {For Ubuntu}
$ sudo swapon --all --verbose  -- {To activate swap}
 
https://help.ubuntu.com/community/SwapFaq -- {Ubuntu}


######################### BackUp partition table ###########################
sfdisk -d /dev/sda > part_table
Restore:
sfdisk /dev/sda < part_tabl

#####################/etc/fstab on 10.80.0.30##############################
dspace@Repository:~$ cat /etc/fstab
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sda5 during installation
UUID=7e316ce4-66b6-4212-8984-195f5702f834 /               ext4    errors=remount-ro 0       1
# /boot was on /dev/sda7 during installation
UUID=fc56f3b1-a628-4d03-9c7d-d9615a997c24 /boot           ext4    defaults        0       2
# /HOME/Build was on /dev/sda2 during installation
UUID=7186dec2-7393-42e4-bd98-a9e32f28536a /HOME/Build           ext4    defaults        0       2
# /swap was on /dev/sda8 during installation
UUID=df16c592-f1a2-421b-a05f-b70678e55bf2 /swap           swap    defaults        0       0
# /var was on /dev/sda6 during installation
UUID=96cdf124-3359-4c12-a540-8ace4c9410e4 /var            ext4    defaults        0       2


root@Repository:~# mkswap /dev/sda8
Setting up swapspace version 1, size = 1951740 KiB
no label, UUID=914952f2-1dcc-4bff-8546-d7df8ef3204f

root@Repository:~# swapon --all --verbose
swapon on /dev/sda8
swapon: /dev/sda8: found swap signature: version 1, page-size 4, same byte order
swapon: /dev/sda8: pagesize=4096, swapsize=1998585856, devsize=1998585856
root@Repository:~# cat /proc/swaps 
Filename                                Type            Size    Used    Priority
/dev/sda8                               partition       1951740 0       -1

#################Linux Foundation Certified Sysadmin {LFCS}#############################
http://www.tecmint.com/sed-command-to-create-edit-and-manipulate-files-in-linux/ LFCS

-----------------------------Sed basics----------------------
sed 's/term/replacement/flag' file
sed ‘s/y/Y/g’ ahappychild.txt > ahappychild2.txt

For example, we will substitute the word and for an ampersand. At the same time, we will replace the word I with You when the first one is found at the beginning of a line.
sed 's/and/\&/g;s/^I/You/g' ahappychild.txt

For example, we will substitute the word and for an ampersand. At the same time, we will replace the word I with You when the first one is found at the beginning of a line.
sed 's/and/\&/g;s/^I/You/g' ahappychild.txt

we will display the first 5 lines of /var/log/messages from Jun 8.
sed -n '/^Jun  8/ p' /var/log/messages | sed -n 1,5p

The following sed one-liner deletes (d) blank lines or those starting with # (the | character indicates a boolean OR between the two regular expressions).
# sed '/^#\|^$/d' apache2.conf
# sed '/^;\|^$/d' sip.conf

# du -sch /var/* | sort –h

# cat /var/log/mail.log | uniq -c -w 6 -- group by the first 6 characters and count
# cat /var/log/maillog-20170501 | uniq -c -w 6

cat sortuniq.txt | cut -d: -f1 | sort | uniq 

# ls -l | tr -s ' ' -- Squeeze the delimiter in the output of ls –l to only one space.

# last | grep root | tr -s ' ' | cut -d' ' -f1,3 | sort -k2 | uniq
------------output-------------
root 10.130.0.134
root 10.130.0.24
root 10.130.0.71
root 10.130.0.77
root 192.168.125.1
root Fri
root Mon
root Sat
root Thu
root Tue

-----------http://www.yourownlinux.com/2015/04/sed-command-in-linux-print-lines-in-file.html  ---------

##########################Vim Tricks and Tips###########################
http://www.thegeekstuff.com/tag/vi-vim-tips-and-tricks/
http://www.thegeekstuff.com/2009/04/vi-vim-editor-search-and-replace-examples/ (Search and Replace in Vim)
http://www.thegeekstuff.com/2009/01/vi-and-vim-editor-5-awesome-examples-for-automatic-word-completion-using-ctrl-x-magic/
http://www.thegeekstuff.com/2008/12/vi-and-vim-editor-3-steps-to-enable-thesaurus-option/

:help -- For Built-in manual

 cat /etc/sysconfig/iptables

0704616754 -- Tiga

0778960021
0777580119
--------------Search and Replace in Vim-----------------
:[range]s[ubstitute]/{pattern}/{string}/[flags] [count]
:%s/old-text/new-text/g -- %s - do substitution in the entire file g -- all occurencies
:s/I/We/gi  -- substitute in the current line, i -- case insesitive
:1,10s/helo/hello/g -- do substituion in the lines 1-10
:s/helo/hello/g 4 -- do substituion in 4 lines from the current line
:s/\<his\>/her/  -- Subsitute whole word not partial match -- enclose in <>
:%s/\(good\|nice\)/awesome/g -- any occurence of either good or nice will be replaced with awesome
:%s/\<\(hey\|hi\)\>/hai/g -- substitute hey or hi with hai 
:%s/awesome/wonderful/gc -- interactive sreach and replace
:%s/^/\=line(".") . ". "/g -- substuting all lines with its line number
:%!\~!\= expand($HOME/Build)!g  -- substuting special char with its equivalent
:4,$s/\d\+/\=submatch(0) + 1/ -- Alter sequence in a numbered list while inserting a new item (***)
:%s/\.\s*\w/\=toupper(submatch(0))/g

###############################Regular Expressions#######################
XRegExp Library -- { http://xregexp.com } -- This book covers XRegExp version 2.0. The recipes assume you’re using xregexpall.js so that all of XRegExp’s Unicode features are available.

JavaScript -- { editions 3 and 5 of the ECMA-262 standard.}

Tools 
{RegexBuddy}
RegexMagic
RegexPlanet
PowerGREP

The punctuation characters in the ASCII table are: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~.`'

metacharacters -- $()*+.?[\^{| -- ] and } are only escaped if there an equivalent escaped open char
Solution: !"#\$%&'\(\)\*\+,-\./:;<=>\?@\[\\]\^_`\{\|}~`'  -- Javascript, Python

--------- Repetition ------------------
Use curly braces to specify a specific amount of repetition
\b[1-9][0-9]{3}\b  -- to match a  number btn 1000 and 9999
\b[1-9][0-9]{2,4}\b -- matches a number btn 100 and 99999

? -- makes the preceding char optional 
colou?r  -- matches colour or color

* -- match the preceding token zero or more times
<[A-Za-z][A-Za-z0-9]*> -- matches an HTML tag qitout ant attributes 

+ -- match the preceding token once or more times
<[A-Za-z0-9]+> is easier to write but matches invalid tags such as <1>

--------- Look around -------------
q(?=u) -- matches the q in question but not in Iraq {positive lookahead}
q(?!u) -- matches the q in Iraq but not in question {negative lookahead}

(?<=a)b  -- matches the b in abc (positive lookbehind)
(?<!a)b fails to match abc -- ()

Case Insensitivity: (?i)ascii -- XRegExp(Javascript), Python

------Match Non printable characters-------
ASCII ctrl characters: bell, escape, form feed, line feed, carriage return, horizontal tab, vertical tab.
07, 1B, 0C, 0A, 0D, 09, 0B
 
Solution: \a\e\f\n\r\t\v -- Python
Solution: \x07\x1B\f\n\r\t\v -- Javascript,Python
Solution: \a\e\f\n\r\t\x0B -- Python

---------Based on the 26 control characters cA-cZ in positions 1 - 26 of the ASCII Table
\cG\x1B\cL\cJ\cM\cI\cK: Javscript

--------The 7-bit character set-----------
\x07\x1B\x0C\x0A\x0D\x09\x0B: Javascript, Python

-------Match a single hexadecimal character----------
[a-fA-F0-9]: Javascript, Python

-------Match a single char that is not hexadecimal character----------
[^a-fA-F0-9]: Javascript, Python

----- Character class [ ... ] -----------
Inside a character class, only four characters have a special function: \, ^, -, and ]
\ -- escape char 
^ -- negation 
- -- range 
\ -- escape char 

------------- Shothands (regex tokens)----------------------
\d -- matches a single digit :[a-fA-F0-9] becomes [a-fA-F\d] -- Python 
\D -- matches any character that is not a digit
\w -- a single word character \w === [a-zA-Z0-9_] in Javascript 
\W --
\s -- matches any whitespace character. This includes spaces, tabs, and line breaks
\S -- 

--------- Unicdoe ---------
\xFFFF or \x{FFFF} to insert unicode char
\u20AC or \x{20AC} -- matches the euro currency sign

-------Unicode && ASCII---------
http://www.regular-expressions.info/charclass.html#nonprint

Case Insensitivity: 
(?i)[A-F0-9]: XRegExp(Javascript), Python
(?i)[^A-F0-9]:XRegExp (Javascript), Python

'.' -- matches any char including line breaks -- Python
[\s\S] -- matches any char including line breaks --  Javascript,Python

<\d\d[/.\-]\d\d[/.\-]\d\d› allows a forward slash, dot, or hyphen to be used as the
date separator. This regex still matches 99/99/99, but not 12345678.

(?s)'.': XregExp, Python -- match any quoted char, including line breaks, using inline mode modifier:

----- Start of the subject-----
^alpha: Javascript, Python
\Aalpha: Python

----- End of the subject -----
omega$: Javascript, Python
omega\Z: Python

----- Start of a line -----
^begin: Javascript, Python

--------- End of a line -----
end$ 

-------- Zero Length matches -------
(?m)^begin: XRegExp, Python

(?m)end$: XRegExp, Python

-------- Match Whole Words -------
My cat is brown, category or bobcat,
--- Word Boundaries ---
\bcat\b: Javascript, Python {return cat from My cat is brown but not from the others}

--- Nonboundaries ----
\Bcat\B: Javascript, Python -- returns cat in staccato but not from any of the 3 previous subject strings


(?<!\w)(?=\w) -- matches the start of a word by
checking that the character before the match position is not a word character, and that
the character after the match position is a word character
(?<=\w)(?!\w) --  it matches the end of the word by checking that the preceding character is a
word character, and that the following character is not a word character.

--- To do the opposite of a “whole words only” search ---
\Bcat|cat\B: 

----- unicode code point -----
\u2122 : Javascript, Python
\U00002122 : Python
in Python2 u"\u2122" or u"\U00002122"
\x{2122}

---- Unicode category ----
\p{Sc}: XRegExp

----- unicode block ---
\p{InGreekExtended}: XRegExp

---- Unicode script ----
\p{Greek}: XRegExp

----- Unicode grapheme -----
(?:\P{M}\p{M}*): XRegExp

------ Decoding Unicode Escapes ----
string.decode('unicode-escape') -- Python 2.X
string.encode('utf-8').decode('unicode-escape'). -- Python 3.X

------- Unicode category --------
http://www.regular-expressions.info/unicode.html#category

‹\p{L}›: Any kind of letter from any language
‹\p{Ll}›: A lowercase letter that has an uppercase variant
‹\p{Lu}›: An uppercase letter that has a lowercase variant
‹\p{Lt}›: A letter that appears at the start of a word when only the first letter of the
word is capitalized
‹\p{Lm}›: A special character that is used like a letter
‹\p{Lo}›: A letter or ideograph that does not have lowercase and uppercase variants
‹\p{M}›: A character intended to be combined with another character (accents,
umlauts, enclosing boxes, etc.)
‹\p{Mn}›: A character intended to be combined with another character that does
not take up extra space (e.g., accents, umlauts, etc.)
‹\p{Mc}›: A character intended to be combined with another character that does
take up extra space (e.g., vowel signs in many Eastern languages)
‹\p{Me}›: A character that encloses another character (circle, square, keycap, etc.)
‹\p{Z}›: Any kind of whitespace or invisible separator
‹\p{Zs}›: A whitespace character that is invisible, but does take up space
‹\p{Zl}›: The line separator character U+2028
‹\p{Zp}›: The paragraph separator character U+2029
‹\p{S}›: Math symbols, currency signs, dingbats, box-drawing characters, etc.
‹\p{Sm}›: Any mathematical symbol
‹\p{Sc}›: Any currency sign
‹\p{Sk}›: A combining character (mark) as a full character on its own
‹\p{So}›: Various symbols that are not math symbols, currency signs, or combining
characters
‹\p{N}›: Any kind of numeric character in any script
‹\p{Nd}›: A digit 0 through 9 in any script except ideographic scripts
‹\p{Nl}›: A number that looks like a letter, such as a Roman numeral
‹\p{No}›: A superscript or subscript digit, or a number that is not a digit 0…9 (excluding numbers from ideographic scripts)
‹\p{P}›: Any kind of punctuation character
‹\p{Pd}›: Any kind of hyphen or dash
‹\p{Ps}›: Any kind of opening bracket
‹\p{Pe}›: Any kind of closing bracket
‹\p{Pi}›: Any kind of opening quote
‹\p{Pf}›: Any kind of closing quote
‹\p{Pc}›: A punctuation character such as an underscore that connects words
‹\p{Po}›: Any kind of punctuation character that is not a dash, bracket, quote or
connector
‹\p{C}›: Invisible control characters and unused code points
‹\p{Cc}›: An ASCII or Latin-1 control character 0x00…0x1F and 0x7F…0x9F
‹\p{Cf}›: An invisible formatting indicator
‹\p{Co}›: Any code point reserved for private use
‹\p{Cs}›: One half of a surrogate pair in UTF-16 encoding
‹\p{Cn}›: Any code point to which no character has been assigned

------- Unicode block pg 52 --------
------- Unicode script pg 57 -------
------- Unicdoe grapheme pg 58 --------

------------Character classes -----------
[\p{Pi}\p{Pf}\u2122]: XRegExp

-------- Listing all characters ----------
[\u1F00-\u1FF]: Javascript, Python

-------- http://www.unicode.org ----------

------- Match one of several alternatives -----
Mary|Jane|sue

-------- Whole word Search --------
\b(Mary|Jane|sue)\b: Javascript, Python

-=----- Date of format yyyy-mm--dd --------
\b(\d\d\d\d-(\d\d)-(\d\d))\b: Javascript, Python

stopped @ recipe 2.8 pg 62

posh

################################Enabling root user for SSH################################
sudo passwd root  -- enable root Login
sudo passwd -u root -- 


####################### Installing Latest Node JS 6.x LTS On CentOS and Ubuntu ####################
https://www.metachris.com/2017/01/how-to-install-nodejs-6-lts-on-ubuntu-and-centos/
https://www.tecmint.com/install-nodejs-npm-in-centos-ubuntu/

https://rainsoft.io/install-node-like-a-boss-with-nvm/

https://nodesource.com/blog/nine-fantastic-utilities-for-the-node-js-developer/


----------- Ubuntu ------------------
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_6.x | bash -
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

apt-get install -y nodejs
sudo apt-get install -y nodejs

---------- CentOS ---------------
yum install gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_6.x | bash -
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -

yum install nodejs
yum -y install nodejs


------------ Installing Node JS using NVM -------------- 
https://github.com/creationix/nvm
https://github.com/DSpace/DSpace/tree/dspace-6_x/dspace-xmlui-mirage2
http://michael-kuehnel.de/node.js/2015/09/08/using-vm-to-switch-node-versions.html

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash 

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
OR 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

nvm install 6.5.0
nvm alias default 6.5.0

---------------------------Utilities for Everyday Node.js Development------------
https://www.airpair.com/node.js/posts/utilities-for-everyday-node-development

---------- Enabling SSH Ubuntu 14.04 ------------
sudo apt-get install openssh-server

sudo gedit /etc/ssh/sshd_config

/etc/init.d/ssh restart

/etc/ssh/sshd_config -- change the line into --PermitRootLogin yes--

##################################10.1.1.3#########################################
cat /opt/admission/lib/yaws/etc/yaws/yaws.conf 
<server *>
        port = 4443
        docroot = /tmp
        listen = 0.0.0.0
        dir_listings = true
        auth_log = true
        <ssl>
                keyfile = /root/nitrogen-nitrogen-c481f16/rel/nitrogen/lib/yaws/ssl/yaws-key.pem
                certfile = /root/nitrogen-nitrogen-c481f16/rel/nitrogen/lib/yaws/ssl/yaws-cert.pem
                dhfile = /root/nitrogen-nitrogen-c481f16/rel/nitrogen/lib/yaws/ssl/dhparams.pem
                depth = 0
        </ssl>

		
[root@ekampus-server ~]# cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.1.1.5    ekampus-server
10.1.1.23       appserver
10.1.1.21       appserver
10.1.1.11       admission_zone
10.1.1.12       admission_zone
10.1.1.13       intranet_zone
10.1.1.14       intranet_zone
10.1.1.15       student_zone
10.1.1.16       student_zone
10.1.1.17       ftpserver
10.1.1.18       ftpserver
10.1.1.4        dbserver
10.1.1.5        dbserver
10.1.1.6        xen_server
10.1.1.7        xen_server
10.1.1.25       auth
10.1.1.27       auth
10.2.0.12       dbserver2
10.1.1.55       hrms
10.1.1.54       hrms
10.1.1.36       redhat_intranet
10.1.1.37       redhat_intranet
10.1.1.52       online_admission
10.1.1.53       online_admission
10.1.1.50       redmine
10.1.1.22       student_portal
10.1.1.24       student_portal
10.1.1.1        vyatta

############################## Erlang Version ################################
http://stackoverflow.com/questions/9560815/how-to-get-erlangs-release-version-number-from-a-shell

erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell
1> erlang:system_info(otp_release).
1> erlang:system_info(version).

/usr/local/lib/erlang/releases
[{release,"Erlang/OTP","17","6.0",
          [{kernel,"3.0","/usr/local/lib/erlang/lib/kernel-3.0"},
           {stdlib,"2.0","/usr/local/lib/erlang/lib/stdlib-2.0"},
           {sasl,"2.4","/usr/local/lib/erlang/lib/sasl-2.4"}],
          permanent}]
erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell

######################## Installing Erlang ###############################
http://docs.basho.com/riak/kv/2.2.3/setup/installing/source/erlang/ -- {Not Used}

####################### syntax error in sudoers file and failing to access sudo command ##########
$ sudo visudo

>>> /etc/sudoers: syntax error near line 28 <<<
sudo: parse error in /etc/sudoers near line 28
sudo: no valid sudoers sources found, quitting

https://askubuntu.com/questions/73864/how-to-modify-an-invalid-etc-sudoers-file-it-throws-an-error-and-its-not-allo

pkexec visudo


########################## Nagios Core Vs Nagios XI ###########################
http://www.thegeekstuff.com/2010/02/nagios-xi-review-free-nagios-core-vs-nagios-xi/
https://support.nagios.com/kb/article.php?id=12#_ga=2.160731198.261627644.1495111719-1583295747.1491300706

Geek Rating: 5/5 Stars
Nagios XI is highly recommended.  Nagios XI is built on top of the free Nagios Core. This is a classic example of beauty meeting the geek. Beauty = Nagios XI. Geek = Nagios Core.

http://www.thegeekstuff.com/2008/05/nagios-30-jumpstart-guide-for-red-hat-overview-installation-and-configuration

https://www.nagios.com/products/nagios-xi/edition-comparison/

http://www.thegeekstuff.com/2010/08/sms-using-email

https://www.cyberciti.biz/tips/top-linux-monitoring-tools.html

# ------------------------ Trackers of Udemy Python for Entreprenuers --------------------
# ############################## Task Scheduler service is not available #######################
https://kickthatcomputer.wordpress.com/2014/06/19/task-scheduler-service-is-not-available/

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree

Which follows the list of scheduled tasks you see through the Task Scheduleder GUI. The ID’s are then pointers to task details under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks

Close the Task Scheduler GUI if it is open

First, export a copy of the “Tree” and “Tasks” Keys. If you mess something up you can just re-import them to set things back to before

Right-click “Tree” and select permissions. Add “Full Control” to the Administrators group
This will not be easily reversible, so expect to leave this in place once finished

Rename each of the Keys under Tree one at a time. e.g. add .bak to each entry (Microsoft -> Microsoft.bak)
	After each rename, start the GUI
	When the error does not appear, note the last entry that was renamed

If the “problem” entry was a folder, then name it back to normal and repeat the process on the subfolders until the actual task is found

Once the problem task has been found, then leave it renamed and recreate it in the GUI

If the task is one of the Microsoft default ones, it may be possible to “restore” it using the steps in the following article:

If the file in your tasks folder is Zero bytes or corrupted, then you can get a copy of the file from another computer running the same OS and version. Copy it from the other machine to a temp location and import from there.

################################ ASUS ######################################
https://www.amazon.com/dp/B014LE6A6I/ref=dra_a_ms_mr_hn_xx_P320_100?tag=dradisplay-20&ascsubtag=7c7a7721129dc0616aa07072a1bb42fd_S
https://www.amazon.com/F556UA-EB71-Notebook-Intel-Dual-Core-Windows/dp/B01HZ37R64/ref=dp_ob_title_ce

################## The selected task "{0}" no longer exists windows 7 ###########

--- Customer Expereince Improvement Program -- {2}
-- Diagnosis

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree

https://www.angryadmin.co.uk/?p=737
Go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Tracing\SCM\Regular and set or add REG_DWORD TracingDisabled

https://www.gegeek.com/documents/B22D8C60E12C6B90FB1FB5876D6B96989F3D214E.html
. Open Registry Editor
2. Open the following Key
a. [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Tracing\SCM\Regular]
3. Add⁄Change the following value
a. Name = TracingDisabled
b. Type = REG_DWORD
c. Value Data = 0
4. Reboot the Server
5. Open Task Scheduler and verify that you can see the tasks

################### Task Shceduler Fix ##########################
https://www.sysnative.com/forums/windows-7-windows-vista/9108-windows-task-scheduler-service-disabled-can-not-started.html

REG EXPORT HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule %TEMP%\Schedule.reg
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule /F /V Start /T REG_DWORD /D 2

https://www.tenforums.com/performance-maintenance/49136-error-task-scheduler-service-not-available.html 
Hi, try this: go to:
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule
Find the DWORD called start
Is it 2?

Set a system restore point/back up the registry before making changes

Also this (read article carefully and check):
you may also disable (or change) the startup process on the SCHEDULE service with the following:
PSEXEC -i -s CMD
(this opens a CMD prompt with the "NT Authority\SYSTEM" account)
SC CONFIG SCHEDULE start= auto (changes start to Automatic)
########################
Task Scheduler
Catastrophic failure (Exception from HRESULT: 0x8000FFFF (E_UNEXPECTED))

########################## Cockpit Monitoring Tool ###########################
https://www.ostechnix.com/cockpit-monitor-administer-linux-servers-via-web-browser/
https://www.ostechnix.com/cockpit-monitor-administer-linux-servers-via-web-browser/
https://www.tecmint.com/cockpit-monitor-multiple-linux-servers-via-web-browser/

############################ Mail Delivery on Nagios Notifications  ###################
python /var/zeevarsity/mail.py -r $mail  -s "ORACLE DB IN RENU OFF" -m "ORACLE IS UNREACHABLE FROM INTRANET1"  -f "oracle@zeenode.com"
python /var/zeevarsity/mail.py -r $mail  -s "ORACLE DB IN RENU OFF" -m "ORACLE IS UNREACHABLE FROM INTRANET1"  -f "oracle@zeenode.com(Nagios Alerts)"

python mail.py -r walherb@gmail.com -s "TESTING NAGIOS" -m "CRITICAL/WARNING ALERTS ON NAGIOS SERVER" -f "nagios@zeenode.com(Nagios Alerts)"   

python sendEmail.py -r walherb@gmail.com -s "TESTING NAGIOS" -m "CRITICAL/WARNING ALERTS ON NAGIOS SERVER" -f "nagios@zeenode.com(Nagios Alerts)" 

https://ricochen.wordpress.com/2012/04/18/use-external-smtp-server-to-send-nagios-alerts/

/usr/local/bin/sendEmail.py -f "nagios-alerts@zeenode.com(Nagios Alerts)" -s "Tesing Nagios" -m "Hello Nagios Tester" -r walherb@gmail.com

https://exchange.nagios.org/directory/Plugins/Operating-Systems/Linux/Nagios-Alerts-via-gmail-and-python/details (Used)

https://www.unixmen.com/send-nagios-alert-notification-using-whatsapp/  ()

http://nagios.fm4dd.com/howto/nagios-flexible-notifications.htm  -- {Good Display}
https://elijahpaul.co.uk/setup-external-smtp-server-to-send-nagios-notifcation-alerts-centos/

##############################Clocking in Linux ######################
hwclock -w or hwclock --systohc  -- {to sync the hw clocl to the software clock}
hwclock -s or hwclock --hwtosys  -- {sync software clock to hardware clock}

--------NTP -- Network Time Protocol ----------------

#############################  Timezone Seetings ########################
/usr/share/zoneinfo   -- {Timezone settings location}
ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime   -- { RedHat Based Systems}

-------------- Ubuntu Systems -------------------
# cat /etc/timezone 
vim /etc/timezone 
America/Los_Angeles  
&&
# export TZ=America/Los_Angeles

$ date +"%Z %z"    -- Time Zone Settings 

timedatectl | grep "Time zone"

$ sudo ln -sf /usr/share/zoneinfo/Africa/Nairobi /etc/localtime

http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-time.html
https://www.garron.me/en/linux/set-time-date-timezone-ntp-linux-shell-gnome-command-line.html
http://www.wikihow.com/Change-the-Timezone-in-Linux

cat /etc/sysconfig/clock

#! python3

################################# Windows Powershell #########################
https://www.microsoft.com/en-us/download/details.aspx?id=40855

Get-WmiObject -Class Win32_OperatingSystem | Format-Table Caption, ServicePackMajorVersion -AutoSize  -- {Find checking whether service pack 1 is installed on windows 7}

(Get-ItemProperty -Path 'HKLM:\Software\Microsoft\NET Framework Setup\NDP\v4\Full' -ErrorAction SilentlyContinue).Version -like '4.5*'  -- {checking presence of .NET Framework 4.5 on win 7 }

$PSVersionTable.PSVersion  -- {Determining the version of windows powershell}
$PSVersionTable			   -- {Determining the version of windows powershell}

################ IDM Registered with A fake serial ######################
http://www.stupidtechlife.com/remove-idm-registered-fake-serial-number-error/

psycopg2  -- 

##################################### Installing Yaws on Ubuntu 14.04 #########################

############################### Yaws Instance on 10.1.1.23 ##########################
login into 10.1.1.23
root/ekampus2010
in the HOME/Build of root
cd dev_intranet
$ yaws --id intranet --stop
$ yaws --conf ./yaws.conf --daemon

140903013338

############################### Photo Manager ##########################
If the view is misbehaving compact the sid database @ 10.1.1.222:2032

######################### When Transcripts can't be printed on 10.1.1.22 #####################
Check and Restart CouchDB on 10.1.1.222:2031 named service couchdb31

###############-------------- Centos 7 Guide #####################-----------------------------
# ------------------- Disable selinux -----------------
sed -i 's/\(^SELINUX=\).*/\SELINUX=disabled' /etc/sysconfig/selinux
sed -i 's/\(^SELINUX=\).*/\SELINUX=disabled' /etc/selinux/config   # Reboot and Run: sestatus

# ------------- Running Http Services on CentOS ------------------------- 
systemctl enable http.service
systemctl start http.service 

# ----------------- Firewall Basic COnfiguration ----------------------
systemctl start firewalld
systemctl enable firewalld

firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --reload
firewall-cmd --zone=public --list-all
firewall-cmd --list-ports
systemctl status firewalld
firewall-cmd --state
firewall-cmd --get-zones
firewall-cmd --zone=work --list-all
firewall-cmd --get-default-zone
firewall-cmd --set-default-zone=work
firewall-cmd --list-services
firewall-cmd  --add-service=http
firewall-cmd –reload
firewall-cmd --add-service=http --permanent
firewall-cmd  --remove-service=http
firewall-cmd --zone=work --remove-service=http --permanent
firewall-cmd --add-port=331/tcp
firewall-cmd --add-port=331/tcp --permanent
firewall-cmd --remove-port=331/tcp
firewall-cmd --remove-port=331/tcp --permanent
# systemctl stop firewalld
# systemctl disable firewalld
# firewall-cmd --state
# systemctl enable firewalld
# systemctl start firewalld
# firewall-cmd --state


########## ------------ List Hostname and Timezone ------------ ################
timedatectl list-timezones
timedatectl set-timezone Africa/Kampala

hostnamectl set-hostname asterisk-server 
localectl
localectl list-keymaps
localectl set-keymap us 
localectl set-locale LANG=en_US.UTF-8
mysql_secure_installation


################### ------ Extending the Virtual Disk Size of a XenVM ----- #######################
https://support.citrix.com/article/CTX125405
1. Shutdown Corresponding vm
2. Go to XenServer CLI
3. Find Virtual Disk Image (VDI) Universally Unique Identifier (UUID)
#  xe vm-disk-list vm=<vm name>
4. Run Following CMD to resize VDI 
#  xe vdi-resize uuid=<vdi uuid> size=<size (GiB,MiB)>

XenCenter -> VM -> Storage -> Properties -> Size and Location

http://www.simonhiggs.com/articles/xenserver-6.2-extending-disk-on-a-linux-vm.html
# fdisk /dev/xvda
d 3, n 3, p, w
df -h
resize2fs /dev/xvda3
df -h


lvm pvresize /dev/xvda3
lvm vgscan
lvm lvresize /dev/vg-name/root -l +100%FREE
resize2fs /dev/xvda3 

nameserver 41.202.229.140
nameserver 41.202.229.144

https://discussions.citrix.com/topic/294842-increased-disk-size-in-xencenter-but-vm-does-not-reflect-the-new-disk-size/
/fdisk -l
Device Boot Start End Blocks Id System
Before 
/dev/xvda1 \* 1 13 104391 83 Linux
/dev/xvda2 14 3916 8281507 8e Linux
After
/dev/xvda1 \* 1 13 104391 83 Linux
/dev/xvda2 14 3916 31350847 83 Linux

lvm pvresize /dev/xvda2 
lvm lvresize /dev/VolGroup00/LogVol00 -l +100%FREE 
resize2fs /dev/VolGroup00/LogVol00


#################### CentOS Minimal Install Setup #################
yum update && yum upgrade
yum install nano
yum install net-tools
https://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation/
yum install epel-release
yum install ntfs-3g

http://sharadchhetri.com/2014/07/26/how-to-start-stop-restart-reload-iptables-on-centos-7-rhel-7/
yum install iptables-services
systemctl start iptables
systemctl stop iptables 
systemctl restart iptables
systemctl iptables reload

https://www.tecmint.com/start-stop-disable-enable-firewalld-iptables-firewall/

https://www.tecmint.com/check-internet-speed-from-command-line-in-linux/

################# Installing the Latest Version of Python on Centos ###########################
http://www.codeghar.com/blog/install-latest-python-on-centos-7.html
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum update
sudo yum install -y python35u python35u-libs python35u-devel python35u-pip
which -a python3.5

# ------------- Installing the Latest Python 2 -------------------------
yum install -y rpm-build
yum install -y redhat-rpm-config 
yum install -y yum-utils
yum groupinstall "Development Tools"

################# Installing Latest Python 3 From Source #######################
yum -y groupinstall "Development Tools"
yum-y install zlib-devel
wget https://www.python.org/ftp/python/3.6/Python-3.6.X.tar.xz
tar xJf Python-3.6.X.tar.xz 
cd Python-3.6.X
./configure
make 
make install 

https://tecadmin.net/install-python-3-6-on-centos/
cd /usr/src 
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar xzf Python-3.6.1.tgz 
cd Python-3.6.1
./configure
make 
make altinstall

https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-centos-7
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y install python36u python36u-libs python36u-pip python36u-devel
sudo pip3.6 install pkg_name

python3.6 -m venv my_env
source my_env/bin/activate
deactivate

############################ Installing From Sources ###################################
https://danieleriksson.net/2017/02/08/how-to-install-latest-python-on-centos/ {Use mtd to install 2.7.13 only on Centos 6}
yum update
yum groupinstall -y "development tools"
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel expat-devel wget

# Python 2.7.13:
wget http://python.org/ftp/python/2.7.13/Python-2.7.13.tar.xz
tar xf Python-2.7.13.tar.xz
cd Python-2.7.13
./configure --prefix=/usr/local --enable-unicode=ucs4 --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall


# Python 3.6.2:
wget http://python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
tar xf Python-3.6.2.tar.xz
cd Python-3.6.2
./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall

You might also want to strip symbols from the shared library to reduce the memory footprint.
# Strip the Python 2.7 binary:
strip /usr/local/lib/libpython2.7.so.1.0
# Strip the Python 3.6 binary:
strip /usr/local/lib/libpython3.6m.so.1.0

Install/upgrade pip, setuptools and wheel
# First get the script:
wget https://bootstrap.pypa.io/get-pip.py

# Then execute it using Python 2.7 and/or Python 3.6:
python2.7 get-pip.py
python3.6 get-pip.py

# With pip installed you can now do things like this:
pip2.7 install [packagename]
pip2.7 install --upgrade [packagename]
pip2.7 uninstall [packagename]

# Install virtualenv for Python 2.7 and create a sandbox called my27project:
pip2.7 install virtualenv
virtualenv my27project

# Use the built-in functionality in Python 3.6 to create a sandbox called my36project:
python3.6 -m venv my36project

# Check the system Python interpreter version:
python --version
# This will show Python 2.6.6

# Activate the my27project sandbox:
source my27project/bin/activate
# Check the Python version in the sandbox (it should be Python 2.7.13):
python --version
# Deactivate the sandbox:
deactivate

# Activate the my36project sandbox:
source my36project/bin/activate
# Check the Python version in the sandbox (it should be Python 3.6.2):
python --version
# Deactivate the sandbox:
deactivate



######################## Setting Up Nagios on Centos 7 #################################
https://serverfault.com/questions/774498/failed-to-start-nagios-service-unit-nagios-service-failed-to-load-no-such-file
https://serverfault.com/questions/774498/failed-to-start-nagios-service-unit-nagios-service-failed-to-load-no-such-file/774501
http://www.howtovmlinux.com/articles/rasberry-pi/resolve-nagios-error-failed-to-start-nagios-service-unit-nagios-service-failed-to-load-no-such-file-or-directory.html

I created this file:
sudo vi /etc/systemd/system/nagios.service
and added the following:

[Unit]
Description=Nagios
BindTo=network.target


[Install]
WantedBy=multi-user.target

[Service]
User=nagios
Group=nagios
Type=simple
ExecStart=/usr/local/nagios/bin/nagios /usr/local/nagios/etc/nagios.cfg

Then the following:
sudo systemctl enable /etc/systemd/system/nagios.service
sudo systemctl  start nagios
sudo systemctl  restart nagios	   

https://www.znetlive.com/blog/how-to-install-apache-php-and-mysql-on-windows-10-machine/


######################### Installing and Setup Asterisk 13 (PBX) on Centos 7.x ###############################
https://linoxide.com/tools/install-setup-asterisk-13-pbx-centos-7/

yum update 

yum install gcc gcc-c++ php-xml php php-mysql php-pear php-mbstring mariadb-devel mariadb-server mariadb sqlite-devel lynx bison gmime-devel psmisc tftp-server httpd make ncurses-devel libtermcap-devel sendmail sendmail-cf caching-nameserver sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel uuid-devel libtool libuuid-devel subversion kernel-devel kernel-devel-$(uname -r) git subversion kernel-devel php-process crontabs cronie cronie-anacron wget vim

mysql_secure_installation
wget http://www.digip.org/jansson/releases/jansson-2.7.tar.gz
./configure --prefix=/usr 
make clean
make && make install
ldconfig

http://downloads.asterisk.org/pub/telephony/asterisk/
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13.17.0.tar.gz

https://computingforgeeks.com/how-to-install-asterisk-pbx-13-x-on-centos-7-step-by-step-guide/
https://www.linode.com/docs/applications/voip/install-asterisk-on-centos-7
https://www.rosehosting.com/blog/how-to-install-asterisk-on-centos-7/

wget http://www.pjsip.org/release/2.4/pjproject-2.4.tar.bz2
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz

https://community.asterisk.org/t/solved-centos-7-compatible-init-d-or-systemd-script-for-asterisk-13/66359/2

CFLAGS='-DPJ_HAS_IPV6=1' ./configure --prefix=/usr --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr --libdir=/usr/lib64


create user 'asterisk'@'localhost' identified by 'password';
create database cdrdb;
create database asterisk;
GRANT ALL PRIVILEGES ON asterisk.* TO 'asterisk'@'localhost';
GRANT ALL PRIVILEGES ON cdrdb.* TO 'asterisk'@'localhost';
 flush privileges; 
 
 
firewall-cmd --zone=public --add-port=5060/udp --permanent
firewall-cmd --zone=public --add-port=5060/tcp --permanent
firewall-cmd --zone=public --add-port=5061/udp --permanent
firewall-cmd --zone=public --add-port=5061/tcp --permanent
firewall-cmd --zone=public --add-port=4569/udp --permanent
firewall-cmd --zone=public --add-port=5038/tcp --permanent 
firewall-cmd --zone=public --add-port=10000-20000/udp --permanent

make install-logrotate

188.214.128.48

systemctl restart asterisk
systemctl daemon-reload
PID file /var/run/asterisk/asterisk.pid not readable (yet?) after start
https://community.asterisk.org/t/solved-centos-7-compatible-init-d-or-systemd-script-for-asterisk-13/66359/3


# ------------------- Asterisk CDRs -------------------
https://www.mikeslab.net/?p=363
Finally, edit /etc/ cdr_adaptive_odbc.conf
[asteriskcdr]
connection=asterisk
table=cdr
alias start=calldate


https://wiki.asterisk.org/wiki/display/AST/MySQL+CDR+Backend
grep "^[^;]" /etc/asterisk/cdr_mysql.conf


##################################  Advanced Asterisk #####################
http://blog.ones-app.com/how-to-install-asterisk-13-with-webrtc-support-in-centos/
http://blog.ones-app.com/how-to-secure-sip-servers-with-fail2ban-in-centos-7/
https://kunjans.wordpress.com/2015/01/09/web-sip-client-sipml5-with-asterisk-13-on-centos-6-6/
https://wiki.asterisk.org/wiki/display/AST/WebRTC+tutorial+using+SIPML5
https://wiki.asterisk.org/wiki/display/AST/Asterisk+WebRTC+Support
https://wiki.asterisk.org/wiki/display/AST/WebRTC+tutorial+using+SIPML5


http show status
cdr show status

SELECT * FROM cdr WHERE disposition = 'NO ANSWER';

# --------------- WEBRTC and Sipml5 with Asterisk ---------------
https://kunjans.wordpress.com/2015/01/09/web-sip-client-sipml5-with-asterisk-13-on-centos-6-6/
http://www.codeghar.com/blog/install-latest-python-on-centos-7.html

######################## Change Hostname of CentOS 7 without Rebooting ###############
https://www.cyberciti.biz/faq/rhel-redhat-centos-7-change-hostname-command/
https://www.atlantic.net/community/howto/change-your-hostname-in-centos-7/

hostnamectl status
hostnamectl set-hostname anagios

vi /etc/hosts
[root@anagios ~]# vi /etc/sysconfig/network
NETWORKING=yes
HOSTNAME=myhostanme

nmtui   -- GUI Tool For CentOS 7
nmcli

################ Secure and Protect SSH ###################
https://www.tecmint.com/5-best-practices-to-secure-and-protect-ssh-server/

https://www.tecmint.com/install-fail2ban-on-rhel-centos-fedora/
http://www.the-art-of-web.com/system/fail2ban/
fail2ban with centos 7 -- {Google Search}


iptables -A INPUT -s 65.55.44.100 -j DROP
iptables -A INPUT -s 65.55.44.100 -p tcp --destination-port 25 -j DROP

# iptables -A INPUT -s 65.55.44.100 -j DROP
# service iptables save

# iptables -D INPUT -s xx.xxx.xx.xx -j DROP
# iptables -D INPUT -s 65.55.44.100 -j DROP
iptables -D INPUT 3
# service iptables save

/sbin/iptables -I INPUT -s 1.2.3.4 -j DROP
# /sbin/iptables -i eth1 -A INPUT -s 10.0.0.0/8 -j DROP

## iptables -I INPUT -s 1.2.3.4 -j DROP
## iptables -I INPUT -s 1.2.0.0/16 -j DROP

iptables -D INPUT -s 195.154.181.119 -j DROP
iptables -D INPUT 3

[fail2ban]
enabled = true
filter = fail2ban
action = iptables-allports[name=fail2ban]
logpath = /path/to/fail2ban.log
# findtime: 1 day
findtime = 86400
# bantime: 1 year
bantime = 31536000

whois 91.134.110.224 | grep CIDR

iptables -A INPUT -s 62.210.0.0/16 -j DROP


# Unban IP Address from fail2ban 
http://www.whitewareweb.com/how-to-manually-unblock-unban-ip-address-fail2ban/
fail2ban-client status
fail2ban-client set ssh unbanip 10.2.0.10

iptables -D fail2ban-ssh-ddos 1

################## Configure a permanent Ban ##################
bantime = -1

################ Configure persistent bans################
https://arno0x0x.wordpress.com/2015/12/30/fail2ban-permanent-persistent-bans/

--------- action.d/iptables-multiport.conf 


actionstart = _______________--


			cat /etc/fail2ban/persistent.bans | awk '/^fail2ban-<name>/ {print $2}' \
			| while read IP; do iptables -I fail2ban-<name> 1 -s $IP -j <blocktype>; done

actionban = iptables____________
		echo "fail2ban-<name> <ip>" >> /etc/fail2ban/persistent.bans

cat /var/log/asterisk/messages | tail -20 | awk -F" " '{print $11}'

################### Sublime Text 3 CMD #####################
https://stackoverflow.com/questions/18606682/how-can-i-open-command-line-prompt-from-sublime-in-windows7

 # file_name=self.view.file_name()
        # path=file_name.split("\\")
        # current_driver=path[0]
        # path.pop()
        # current_directory="\\".join(path)
        # command= "cd "+current_directory+" & "+current_driver+" & start cmd"
        # os.system(command)
		# os.system("cd " + self.view.file_name() + " & start cmd")
		
		
https://stackoverflow.com/questions/18400127/sublime-text-3-open-cmd-prompt-at-current-or-project-directory-windows

 path, _ = os.path.split(self.view.file_name())
	   os.chdir(path)
	   os.system('cmd')
	   
################### Zeenode IPs #####################
zeepay.zeeskool.com   -- 139.162.232.50
196.43.144.13:
196.43.144.18:
41.202.241.16
185.40.4.36:
196.43.144.4:

################ Get Public IP Using Linux Terminal ###############
Asteris-{Oracle2}  -- 137.63.246.2

wget http://ipecho.net/plain -O - -q ; echo 
curl ipecho.net/plain; echo (***)
curl icanhazip.com      (*****)            -- { no email output }
curl ifconfig.me					-- { takes long to return }
curl ifconfig.co
curl ident.me
curl bot.whatismyipaddress.com
# wget -qO- ifconfig.me   -- {Returns whole download of index page}

Options Indexes MultiViews
AllowOverride All
Order allow.deny
Allow from all

http://freegeoip.net/json/137.63.246.2


######################### Apache and Python #################
https://www.digitalocean.com/community/tutorials/how-to-set-up-an-apache-mysql-and-python-lamp-server-without-frameworks-on-ubuntu-14-04

---------- Finally, we must register Python with Apache. To start, we disable multithreading processes. -------------
sudo a2dismod mpm_event

-------------- Then, we give Apache explicit permission to run scripts. ---------------
sudo a2enmod mpm_prefork cgi

sudo nano /etc/apache2/sites-enabled/000-default.conf

Add the following right after the first line, which reads <VirtualHost *:80\>.
<Directory /var/www/test>
    Options +ExecCGI
    DirectoryIndex index.py
</Directory>
AddHandler cgi-script .py

<VirtualHost *:80>
    <Directory /var/www/test>
        Options +ExecCGI
        DirectoryIndex index.py
    </Directory>
    AddHandler cgi-script .py
	
#!/usr/bin/python

# Turn on debug mode.
import cgitb
cgitb.enable()

# Print necessary headers.
print("Content-Type: text/html")
print()

# Connect to the database.
import pymysql
conn = pymysql.connect(
    db='example',
    user='root',
    passwd='your_root_mysql_password',
    host='localhost')
c = conn.cursor()

# Insert some example data.
c.execute("INSERT INTO numbers VALUES (1, 'One!')")
c.execute("INSERT INTO numbers VALUES (2, 'Two!')")
c.execute("INSERT INTO numbers VALUES (3, 'Three!')")
conn.commit()

# Print the contents of the database.
c.execute("SELECT * FROM numbers")
print([(r[0], r[1]) for r in c.fetchall()])


############ https://www.linux.com/blog/configuring-apache2-run-python-scripts #################
sudo aenmod cgi                        # Enable cgi processing
									   # This will automatically enable mod_cgid if your server is configured with a
									   # multi-threaded MPM, which was the case for me


###### This is described well in the apache2 doc above, but essentially you to make all files in a cgi folder be executed, you would use this conf:
##############
<Directory /www/ursite/pub_html/cgi-bin>
	Options ExecCGI
	SetHandler cgi-script
</Directory>

######## and to allow .py files to be executed as scripts in a particular folder you would use this conf: ######
<Directory /srv/www/yoursite/public_html>
    Options +ExecCGI
    AddHandler cgi-script .py
</Directory>

-------------- Setting up Permissions ----------------------
Order allow,deny
Allow from all


#!/usr/bin/env python 
# -*- coding: UTF-8 -*- enable debugging
import cgitb
cgitb.enable()

print("Content-Type: text/plain; charset=utf-8")
print()

print("Hello World!")


################ http://editrocket.com/articles/python_apache_windows.html #######################
Options Indexes FollowSymLinks ExecCGI

AddHandler cgi-script .cgi .py

https://stackoverflow.com/questions/16429502/serve-multiple-directories-with-apache
Alias /blog/ "/var/www/wordpress/"
<Directory "/var/www/wordpress/">
    ... whatever you want ...
</Directory>


https://stackoverflow.com/questions/12339044/how-to-run-multiple-sites-on-one-apache-instance
NameVirtualHost *:80
<VirtualHost *:80>
    DocumentRoot "/HOME/Build/user/site1/"
    ServerName site1
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot "/HOME/Build/user/site2/"
    ServerName site2
</VirtualHost>


############### Configuring VirtualHosts in Apache ######
https://httpd.apache.org/docs/2.4/vhosts/examples.html

Listen 80
<VirtualHost *:80>
	DocumentRoot "/www/example"
	ServerName www.example.com
</VirtualHost>

<VirtualHost *:80>
	DocumentRoot "/www/example"
	ServerName www.example.org
</VirtualHost>

############# Serving the same content on different IP addresses (such as an internal and external address). ######
<VirtualHost 192.168.1.1 172.20.30.40>
    DocumentRoot "/www/server1"
    ServerName server.example.com
    ServerAlias server
</VirtualHost>
 
#################### Installing Visual C++ Build Tools ##################
https://social.msdn.microsoft.com/Forums/office/en-US/13f2dc59-23e9-459d-b7e6-2a77826f9b5a/standalone-install-of-visual-c-build-tools?forum=vssetup

https://blog.assarbad.net/20170202/visual-cplusplus-2015-build-tools/

visualcppbuildtools_full.exe /layout

######### Creating and Admionistrator user account on a machine you don't have access to with Win DVD/CD ############
http://www.isumsoft.com/windows-10/create-administrator-account-when-cant-sign-in-windows-10.html

################ Downloading Visual Studio Community Edition ################
http://www.developerinsider.in/download-visual-studio-2017-web-installer-iso-community-professional-enterprise/#downloadvisualstudio2017iso

vs_community.exe --layout C:\vs2017
vs_community.exe --layout C:\vs2017 --lang en-US
vs_community.exe --layout G:\SOFTWARE\VS2017 --lang en-US

File -> New -> Project -> Open C++ Templates node on the left and choose Windows COnsole Application -- {HelloWorld}


################ Installing Scrapy on Windows ##################
https://scraper24x7.wordpress.com/2016/03/19/how-to-install-scrapy-in-windows/


##################### Web Scraping with Python ###################
https://www.youtube.com/watch?v=zXif_9RVadI&index=2&list=PL5-da3qGB5IDbOi0g5WFh1YPDNzXw4LNL

http://www.dataschool.io/python-web-scraping-of-president-trumps-lies/

https://www.nytimes.com/interactive/2017/06/23/opinion/trumps-lies.html



################# [Windows 10 Tip] Restore “Open Command Window Here” Option in SHIFT+Right-Click Menu #############
http://www.askvg.com/windows-10-tip-restore-open-command-window-here-option-in-shiftright-click-menu/

HKEY_CLASSES_ROOT\Directory\Background\shell\cmd
HKEY_CLASSES_ROOT\Directory\shell\cmd
HKEY_CLASSES_ROOT\Drive\shell\cmd

HideBasedOnVelocityId  -- 639bc8
ShowBasedOnVelocityId

HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell
HKEY_CLASSES_ROOT\Directory\shell\Powershell
HKEY_CLASSES_ROOT\Drive\shell\Powershell

############### Basic IPTables ##################################
https://www.cyberciti.biz/tips/linux-iptables-examples.html

# iptables -L INPUT -n -v
# iptables -L OUTPUT -n -v --line-numbers

# iptables -D INPUT 4
# iptables -D INPUT -s 202.54.1.1 -j DROP

# iptables -I INPUT 2 -s 202.54.1.2 -j DROP
# service iptables save

For all other distros use the iptables-save command:
# iptables-save > /root/my.active.firewall.rules
# cat /root/my.active.firewall.rules

To restore firewall rules form a file called /root/my.active.firewall.rules, enter:
# iptables-restore < /root/my.active.firewall.rules

To restore firewall rules under CentOS / RHEL / Fedora Linux, enter:
# service iptables restart

#7: Set the Default Firewall Policies
# iptables -P INPUT DROP
# iptables -P OUTPUT DROP
# iptables -P FORWARD DROP

#7.1: Only Block Incoming Traffic
# iptables -P INPUT DROP
# iptables -P FORWARD DROP
# iptables -P OUTPUT ACCEPT
# iptables -A INPUT -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -L -v -n


#8:Drop Private Network Address On Public Interface

IP spoofing is nothing but to stop the following IPv4 address ranges for private networks on your public interfaces. Packets with non-routable source addresses should be rejected using the following syntax:
# iptables -A INPUT -i eth1 -s 192.168.0.0/24 -j DROP
# iptables -A INPUT -i eth1 -s 10.0.0.0/8 -j DROP

#8.1: IPv4 Address Ranges For Private Networks (make sure you block them on public interface)

10.0.0.0/8 -j (A)
172.16.0.0/12 (B)
192.168.0.0/16 (C)
224.0.0.0/4 (MULTICAST D)
240.0.0.0/5 (E)
127.0.0.0/8 (LOOPBACK)


#9: Blocking an IP Address (BLOCK IP)

To block an attackers ip address called 1.2.3.4, enter:
# iptables -A INPUT -s 1.2.3.4 -j DROP
# iptables -A INPUT -s 192.168.0.0/24 -j DROP

#10: Block Incoming Port Requests (BLOCK PORT)

To block all service requests on port 80, enter:
# iptables -A INPUT -p tcp --dport 80 -j DROP
# iptables -A INPUT -i eth1 -p tcp --dport 80 -j DROP

To block port 80 only for an ip address 1.2.3.4, enter:
# iptables -A INPUT -p tcp -s 1.2.3.4 --dport 80 -j DROP
# iptables -A INPUT -i eth1 -p tcp -s 192.168.1.0/24 --dport 80 -j DROP

#11: Block Outgoing IP Address
# host -t a cyberciti.biz
# iptables -A OUTPUT -d 75.126.153.206 -j DROP
# iptables -A OUTPUT -d 192.168.1.0/24 -j DROP
# iptables -A OUTPUT -o eth1 -d 192.168.1.0/24 -j DROP

#11.1: Example - Block Facebook.com Domain
First, find out all ip address of facebook.com, enter:
# host -t a www.facebook.com

Find CIDR for 69.171.228.40, enter:
# whois 69.171.228.40 | grep CIDR
CIDR:           69.171.224.0/19

To prevent outgoing access to www.facebook.com, enter:
# iptables -A OUTPUT -p tcp -d 69.171.224.0/19 -j DROP

You can also use domain name, enter:
# iptables -A OUTPUT -p tcp -d www.facebook.com -j DROP
# iptables -A OUTPUT -p tcp -d facebook.com -j DROP

#12: Log and Drop Packets

Type the following to log and block IP spoofing on public interface called eth1
# iptables -A INPUT -i eth1 -s 10.0.0.0/8 -j LOG --log-prefix "IP_SPOOF A: "
# iptables -A INPUT -i eth1 -s 10.0.0.0/8 -j DROP

By default everything is logged to /var/log/messages file.
# tail -f /var/log/messages
# grep --color 'IP SPOOF' /var/log/messages

#13: Log and Drop Packets with Limited Number of Log Entries

The -m limit module can limit the number of log entries created per time. This is used to prevent flooding your log file. To log and drop spoofing per 5 minutes, in bursts of at most 7 entries .
# iptables -A INPUT -i eth1 -s 10.0.0.0/8 -m limit --limit 5/m --limit-burst 7 -j LOG --log-prefix "IP_SPOOF A: "
# iptables -A INPUT -i eth1 -s 10.0.0.0/8 -j DROP

#15: Block or Allow ICMP Ping Request

Type the following command to block ICMP ping requests:
# iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
# iptables -A INPUT -i eth1 -p icmp --icmp-type echo-request -j DROP

Ping responses can also be limited to certain networks or hosts:
# iptables -A INPUT -s 192.168.1.0/24 -p icmp --icmp-type echo-request -j ACCEPT

#16: Open Range of Ports
Use the following syntax to open a range of ports:
iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 7000:7010 -j ACCEPT

#17: Open Range of IP Addresses

Use the following syntax to open a range of IP address:
## only accept connection to tcp port 80 (Apache) if ip is between 192.168.1.100 and 192.168.1.200 ##
iptables -A INPUT -p tcp --destination-port 80 -m iprange --src-range 192.168.1.100-192.168.1.200 -j ACCEPT

## nat example ##
iptables -t nat -A POSTROUTING -j SNAT --to-source 192.168.1.20-192.168.1.25

#20: Block or Open Common Ports
Replace ACCEPT with DROP to block port:
## open port ssh tcp port 22 ##
iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 22 -j ACCEPT
 
## open cups (printing service) udp/tcp port 631 for LAN users ##
iptables -A INPUT -s 192.168.1.0/24 -p udp -m udp --dport 631 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -p tcp -m tcp --dport 631 -j ACCEPT
 
## allow time sync via NTP for lan users (open udp port 123) ##
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p udp --dport 123 -j ACCEPT
 
## open tcp port 25 (smtp) for all ##
iptables -A INPUT -m state --state NEW -p tcp --dport 25 -j ACCEPT
 
# open dns server ports for all ##
iptables -A INPUT -m state --state NEW -p udp --dport 53 -j ACCEPT
iptables -A INPUT -m state --state NEW -p tcp --dport 53 -j ACCEPT
 
## open http/https (Apache) server port to all ##
iptables -A INPUT -m state --state NEW -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -m state --state NEW -p tcp --dport 443 -j ACCEPT
 
## open tcp port 110 (pop3) for all ##
iptables -A INPUT -m state --state NEW -p tcp --dport 110 -j ACCEPT
 
## open tcp port 143 (imap) for all ##
iptables -A INPUT -m state --state NEW -p tcp --dport 143 -j ACCEPT
 
## open access to Samba file server for lan users only ##
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 137 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 138 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 139 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 445 -j ACCEPT
 
## open access to proxy server for lan users only ##
iptables -A INPUT -s 192.168.1.0/24 -m state --state NEW -p tcp --dport 3128 -j ACCEPT
 
## open access to mysql server for lan users only ##
iptables -I INPUT -p tcp --dport 3306 -j ACCEPT


#21: Restrict the Number of Parallel Connections To a Server Per Client IP
You can use connlimit module to put such restrictions. To allow 3 ssh connections per client host, enter:
# iptables -A INPUT -p tcp --syn --dport 22 -m connlimit --connlimit-above 3 -j REJECT

Set HTTP requests to 20:
# iptables -p tcp --syn --dport 80 -m connlimit --connlimit-above 20 --connlimit-mask 24 -j DROP

#22: List NAT rules
# iptables -t nat -L -n -v

#24: How to redirect port AA to BB
To redirect all incoming traffic on port 80 redirect to port 8080
# iptables -t nat -I PREROUTING --src 0/0 --dst 192.168.1.5 -p tcp --dport 80 -j REDIRECT --to-ports 8080

# iptables -A INPUT -m state --state NEW -p tcp --dport 80 -j ACCEPT
# service iptables save

$ nmap -sS -p 80 www.cyberciti.biz

https://www.cyberciti.biz/tips/linux-security.html

###################### Calendar ###########################
To print the previous month, the current month, and the next month all on one row, enter:
$ cal -3

################### Windows 10 Memory Usage ####################
https://www.youtube.com/watch?v=nQ4zkThSWpM

https://www.youtube.com/watch?v=v30B8oHlMFg (***)

https://4sysops.com/archives/reset-a-windows-10-password/
#################### ------------- Cython ----------------- ####################
def f(n):
    a = 0
    for i in range(n):
        a += i
    return a

%load_ext Cython

%%cython
cpdef g(int n):
    cdef int a = 0, i
    for i in range(n):
        a += i
    return a

%timeit f(1000000)
10 loops, best of 3: 82.4 ms per loop

%timeit g(1000000)
1000 loops, best of 3: 314 µs per loop

# --------------------------- For Loop ----------------------------
%%cyhton --annotate {-a  -- for showing a code anlysis of the compiled code}

cdef int a = 0
for i in range(10):
	a += 1
print(a)
 
# ------------- runit E: Sub-process /usr/bin/dpkg returned an error code (1) ----------------
sudo apt-get remove --purge runit


188.214.128.74
196.43.144.60

# ----------------- Claculating Previous and Future Dates ---------------------
-------- Tomorrow's' Date ------------
date --date="-1 days ago"
date --date="next day"
date --date='tomorrow'
date --date='1 day'
date --date='10 day'
date --date='10 week'
date --date='10 month'
date --date='10 year'
date -d tomorrow

----------------- GETTING DATE IN THE PAST ---------------
date --date='yesterday'
date --date='1 day ago'
date --date='10 day ago'
date --date='10 week ago'
date --date='10 month ago'
date --date='10 year ago'
date -d yesterday

date -d "1987-10-29" +"%A"      
Thursday

upload_max_filesize = 10M
post_max_size = 10M

php.ini 
memory_limit = 32M
upload_max_filesize = 10M
post_max_size = 20M

php_value upload_max_filesize 10M
php_value post_max_size 10M

#-------- Configuring nway calls in Asterisk -----------------
https://www.voip-info.org/wiki/view/Asterisk+n-way+call+HOWTO
https://www.voip-info.org/wiki/view/Asterisk+n-way+call+HOWTO?comment_page=3&page_id=3372&comments_page=1&page=2
http://blogs.digium.com/2011/10/03/top-10-tricks-you-didnt-know-asterisk-could-do/

# ---------------- Setting Up Dspace on Ubuntu Linux 16.04 -------------------
############ --------------- Partitioning Ubuntu 16.04 using LVM ---------------
http://landoflinux.com/linux_install_ubuntu_server_1604.html
https://xen-orchestra.com/blog/install-xenserver-tools-in-your-vm/
http://thegeekdiary.com/centos-rhel-7-how-to-rename-the-volume-group-for-root-and-swap/


https://askubuntu.com/questions/765058/how-do-you-rename-the-volume-group-that-contains-the-root-volume-in-lvm
update-initramfs -c -k all
http://wiki.networksecuritytoolkit.org/index.php/HowTo_Change_The_LVM_Volume_Group_Name_That_Includes_The_Root_Partition
http://houseofbrick.com/rename-root-volume-group/
https://oraganism.wordpress.com/2013/03/09/rename-lvm-vg-for-root-fs-lv/

https://tecadmin.net/install-postgresql-server-on-ubuntu/#

#----------- Installing Apache Maven on Ubuntu 16.04 ----------
mv apache-maven-3.3.9 maven
M2_HOME/Build, M2, MAVEN_OPTS and PATH
/etc/profile.d/mavenenv.sh 
export M2_HOME/Build=/usr/local/apache-maven
export PATH=${M2_HOME/Build}/bin:$PATH 

chmod +x /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh

mvn --version

sudo ln -s apache-maven-3.5.0 apache-maven
sudo vi /etc/profile.d/apache-maven.sh

export JAVA_HOME/Build=/usr/lib/jvm/java-8-oracle
export M2_HOME/Build=/usr/local/apache-maven
export MAVEN_HOME/Build=/usr/local/apache-maven
export PATH=${M2_HOME/Build}/bin:${PATH}

Java HOME/Build: /usr/lib/jvm/java-8-openjdk-amd64/jre

export ANT_HOME/Build=/usr/local/apache-ant
export PATH=${ANT_HOME/Build}/bin:${PATH}

tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1

root@dspace:/opt/tomcat# groupadd tomcat
root@dspace:/opt/tomcat# useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
root@dspace:/opt/tomcat# chgrp -R tomcat /opt/tomcat

sudo chmod -R g+r conf
sudo chmod g+x conf

sudo chown -R tomcat webapps/ work/ temp/ logs/

sudo chgrp -R tomcat /opt/tomcat
sudo chown -R tomcat /opt/tomcat
sudo chmod -R 755 /opt/tomcat

ufw allow 8080

https://gist.github.com/Clivern/b7ecd618969c06e31d5792b8868a2bce
https://devops.profitbricks.com/tutorials/how-to-install-and-configure-tomcat-8-on-ubuntu-1604/
https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04

sudo apt-get install python-software-properties python g++ make

https://tecadmin.net/setup-nginx-as-frontend-server-for-nodejs/

# ---------- Flusing The IP Address ----------------
ip addr flush eth0 
systemctl restart networking 
systemctl restart ifup@eth0

https://github.com/DSpace/DSpace/tree/dspace-6_x/dspace-xmlui-mirage2

http://cdimage.kali.org/kali-2017.2/kali-linux-2017.2-amd64.iso

------------------ Python Must Have Libraries --------
Twisted
pyglet
pyQT
pyGtk
Scapy
pywin32
nltk
nose
sympy


# ------------------------- XenServer XenCenter --------------------------
xe vm-list params=name-label,networks   --- show ip addresses of different vms
xe vm-list
xed sr-list
xe vm-copy
xe vm-list params
xe vm-list params=name-label,networks,other-config

xe vm-export filename=/var/run/sr-mount/b69c7164-4ae6-2962-c63b-747c5d12e6f8/zeepay_global.xva vm=zeepayglobal1
xe vm-export vm=dbserver2 filename=/var/run/sr-mount/8719a8eb-0d4f-9696-a5ab-846b2fc90074/dbserver_global.xva
https://techblog.jeppson.org/2016/06/quickly-transfer-vms-xenserver-pools/

# ------------------ Installing xen tools --------------------
https://xen-orchestra.com/blog/install-xenserver-tools-in-your-vm/

xs-tools.iso for XenServer 6 and older
guest-tools.iso for XenServer 7 and high

mount /dev/cdrom /mnt
bash /mnt/Linux/install.sh
umount /dev/cdrom


# ----------------- How to Setup XenServer 6.x to Auto-Start Virtual Machines --------------
https://support.citrix.com/article/CTX133910
xe vm-list params=name-label,networks,other-config
xe pool-list
xe vm-list 
xe vm-param-set uuid=UUID other-config:auto_poweron=true
xe vm-param-set uuid=f01fca3a-5868-0c1e-7e17-84148de85604 other-config:auto_poweron=true   -- {AsteriskPBX}
xe vm-param-set uuid=c2b55872-4fe5-357a-9be1-a12a58b48924 other-config:auto_poweron=true   -- {Dspace}

f7182f32-57dc-4fae-b4e7-bac84e72987d

xe pool-param-set uuid=<Pool_UUID> other-config:auto_poweron=true
xe pool-param-set uuid=1f9e73e3-b5ba-2280-c37b-1327755757d6 other-config:auto_poweron=true
xe vm-param-set uuid=<VM_UUID> other-config:auto_poweron=true
https://xen-orchestra.com/blog/auto-start-vm-on-xenserver-boot/

https://discussions.citrix.com/topic/388404-xenserver-72-autostart-vms-does-not-work-as-described/?_ga=2.215588119.1433947239.1509371527-54069417.1506072369
http://burm.net/2012/01/28/xenserver-tips-and-tricks-auto-start-your-vm/
http://lzone.de/cheat-sheet/Xen
https://sysadmin.compxtreme.ro/autostart-vm-in-free-version-of-xenserver-6-x/
http://sysadminnotebook.blogspot.ug/2011/05/xe-command-list.html
http://www.virtues.it/references/xenserver-cli-reference/
https://www.solaris-cookbook.eu/virtualisation/xenserver/xenserver6-x-set-a-guest-vm-to-autostart-on-boot/
https://www.punyal.com/2016/08/11/auto-start-a-virtual-machine-at-xenserver-7-x/
--------- Reboot is not mandatory --------------
walas775
walherb@gmail.com

# ----------------- Yum Repositories for RHEL Based Systems ------------
https://www.2daygeek.com/install-enable-ius-community-repository-on-rhel-centos/#

yum repolist
yum --enablerepo=ius list php70u-*
yum --enablerepo=ius install php70u-common php70u-fpm php70u-gd php70u-mbstring php70u-pdo
yum info php70u-common
yum install yum-plugin-replace
yum replace php --replace-with php70u-*
dnf --allowerasing install php70u-*
yum --disablerepo="*" --enablerepo="ius" list available | more

# -------------- Iptables -----------
https://www.thegeekdiary.com/centos-rhel-6-how-to-save-iptables-rules/

service iptables save
chkconfig --list | grep iptables 
chkconfig iptables --list
chkconfig iptables on

# ---------- Saving Iptables Firewall Rules Permamnently -----------
https://www.thomas-krenn.com/en/wiki/Saving_Iptables_Firewall_Rules_Permanently

apt-get install iptables-persistent

systemctl daemon-reload
systemctl enable fail2ban

# ---------------- PostgreSQL Database Backup -------------------------
pg_dump -U username -W -F t dbname > C:\backup_file.tar
pg_dumpall -U postgres > c:\pgbackup\all.sql
pg_dump -d mydb -n public -f mydb.sql
psql -d mydb_new < mydb.sql
pg_restore -d mydb_new -v -1 mydb.pgdmp
sudo pg_dump -U user_name database_name > backup_file

sudo su - postgres
pg_dump postgres > postgres.bak
pg_dump -U user_name -h remote_ip_address -p remote_port database_name > backup_file

Backup:  $ pg_dump -U {user-name} {source_db} -f {dumpfilename.sql}
Restore: $ psql -U {user-name} -d {desintation_db}-f {dumpfilename.sql}

pg_dump dbname | psql -h hostname dbname
psql -f alldb.sql -- restore
pg_dumpall > outfile
psql -f infile postgres

pg_dump dbname | gzip > filename.gz
gunzip -c filename.gz | psql dbname

pg_dump -h remote_host -p remote_port name_of_database > name_of_backup_file
pg_dump -U user_name -h remote_host -p remote_port name_of_database > name_of_backup_file
pg_dump -U dspace -h 10.80.0.30 -p 5432 dspace > dspace_repo.sql
pg_dump -U dspace dspace > dspace_repo.sql

 pg_dump dbname -h localhost -U postgres -t tablename > outfile 
 pg_dump dspace --no-owner > dspace_reponoown.sql

# ------------------ Enable root Login Ubuntu ----------------
sudo passwd root -- issue password
sudo passwd -l root


sudo passwd root 
sudo sh -c 'echo "greeter-show-manual-login=true" >> /etc/lightdm/lightdm.conf'
sudo passwd -dl root  -- disbale root Login

------- Ubuntu Desktop Root Account Enable --------
/etc/lightdm/lightdm.conf
[SeatDefaults]
greeter-session=unity-greeter
user-session=ubuntu
greeter-show-manual-login=true

# --------------------- How to make a File Undeletable ---------------
sudo chattr +i /backups/passwd
lsattr /backups/passwd 
sudo chattr +i -RV /backups/ 
sudo chattr -i /backups/ passwd



# ----------------- Whatsapp Number Blocked because of using Yowsup ----------
support@whatsapp.com
https://github.com/tgalal/yowsup/issues/1516
I've' talked with Whatsapp support team asking for unblock my number and I just want to share the official response aboult this issue:

"##- WhatsApp Support -##"

Hi,

Thanks for your message.

It appears that you are using an unauthorized application of WhatsApp. Unauthorized applications are not supported; they contain source code which WhatsApp can not guarantee as safe. Your private information is potentially being passed to 3rd parties. In addition, these may not function correctly and may cease to work at any given time.

Please uninstall your application and install an authorized version from:

www.whatsapp.com/download

After installing the authorized version, please reply to this email with a screenshot or an image of your screen from inside the app.

You can refer to your phone's' user manual for detail steps of taking screenshots on your device.

Please note WhatsApp only works on smartphones, non-telephony devices including tablets are not supported.

Best Regards,

WhatsApp Support Team""

I have to agree that it's' a matter of time to wa16 protocol being blocked as well.
:(

thread.start_new_thread(mediaUploader.start())

INFO:yowsup.common.http.warequest:{"status":"ok","login":"256700454900","type":"existing","pw":"ymBibhIoZywmj8eDVN7q4FoDLV0=","expiration":4444444444.0,"kind":"free","price":"$0.99","cost":"0.99","currency":"USD","price_expiration":1510924522}

status: ok
kind: free
pw: ymBibhIoZywmj8eDVN7q4FoDLV0=
price: $0.99
price_expiration: 1510924522
currency: USD
cost: 0.99
login: 256700454900
type: existing
expiration: 4444444444.0

./yowsup-cli registration --requestcode sms --phone 256700454900 --cc 256 --mcc 641 --mnc 01 -E android

./yowsup-cli registration --register 263-541 --phone xxxxxxxxxxxxxxx --cc 49

./yowsup-cli demos -s 256775454900 "Hello Herbert" -c yowsup-cli.conf

./yowsup-cli registration --register 317-621 --phone 256700454900 -cc 256
./yowsup-cli registration --register 317-621 --phone 256700454900 --cc 256

https://www.official-plus.com/download-gbwhatsapp

# https://www.openscg.com/2017/10/setting-up-plr-with-postgres-on-windows/
https://www.openscg.com/bigsql/package-manager/   -- Portable PostgreSQL by BigSQL

p>copy plr.dll %PGDIR%\lib\postgresql\
copy plr.sql %PGDIR%\share\postgresql\extension\
copy plr.control %PGDIR%\share\postgresql\extension\
copy plr–8.3.0.17.sql %PGDIR%\share\postgresql\extension\
copy plr–unpackaged–8.3.0.17.sql %PGDIR%\share\postgresql\extension\ 

./pgc restart pg96
postgres=# create extension plr;
\dx
postgres=# SELECT * FROM plr_environ();
postgres=# select plr_version ();

# https://www.bostongis.com/PrinterFriendly.aspx?content_name=postgresql_plr_tut01
If you are installing on PostgreSQL 9.1+, make share to copy the .control, .sql files to share/extension folder.
copy plr.dll to respective PostgreSQL lib folder 
R_HOME/Build system variable
Path system variable and add the R bin folder to the end of it
CREATE EXTENSION plr;

SELECT * FROM plr_environ();
SELECT load_r_typenames();
SELECT * FROM r_typenames();
SELECT plr_array_accum('{23,35}', 42);


CREATE OR REPLACE FUNCTION plr_array (text, text)
RETURNS text[]
AS '$libdir/plr','plr_array'
LANGUAGE 'C' WITH (isstrict);

select plr_array('hello','world');


create or replace function r_median(_float8) 
	returns float as 'median(arg1)' language 'plr';

CREATE AGGREGATE median (
  sfunc = plr_array_accum,
  basetype = float8,
  stype = _float8,
  finalfunc = r_median
);

create table foo(f0 int, f1 text, f2 float8);
insert into foo values(1,'cat1',1.21);
insert into foo values(2,'cat1',1.24);
insert into foo values(3,'cat1',1.18);
insert into foo values(4,'cat1',1.26);
insert into foo values(5,'cat1',1.15);
insert into foo values(6,'cat2',1.15);
insert into foo values(7,'cat2',1.26);
insert into foo values(8,'cat2',1.32);
insert into foo values(9,'cat2',1.30);

select f1, median(f2) from foo group by f1 order by f1;


# https://www.r-bloggers.com/using-plr-and-plpython-in-postgres/
# PostgreSQL Data Used to Test PL/R and PL/Python
https://redirect.viglink.com/?format=go&jsonp=vglnk_151483969803715&key=949efb41171ac6ec1bf7f206d57e90b8&libId=jbwhkpf401021u9s000DLatfsv56h&loc=https%3A%2F%2Fwww.r-bloggers.com%2Fusing-plr-and-plpython-in-postgres%2F&v=1&out=http%3A%2F%2Fwww.seanlahman.com%2Fbaseball-archive%2Fstatistics%2F&ref=https%3A%2F%2Fwww.google.com%2F&title=Using%20PL%2FR%20and%20PL%2FPython%20in%20Postgres%20%7C%20R-bloggers&txt=baseball%20database
# PL/R
CREATE OR REPLACE FUNCTION r_quartile(ANYARRAY) RETURNS ANYARRAY AS $$
quantile(arg1, probs = seq(0, 1, 0.25), names = FALSE)
$$ LANGUAGE 'plr';

CREATE AGGREGATE quartile (ANYELEMENT) (
sfunc = array_append,
stype = ANYARRAY,
finalfunc = r_quartile,
initcond = '{}');

# PL/Python
CREATE TYPE boxplot_values AS (
  min       numeric,
  q1        numeric,
  median    numeric,
  q3        numeric,
  max       numeric
);

CREATE OR REPLACE FUNCTION public._final_boxplot(strarr numeric[])
  RETURNS boxplot_values AS
$BODY$
    x = strarr
    a.sort()
    i = len(a)
    return ( a[0], a[i//4], a[i//2], a[i*3//4], a[-1] )
$BODY$
  LANGUAGE plpythonu IMMUTABLE
  COST 100;
 
CREATE AGGREGATE boxplot(numeric) (
  SFUNC=array_append,
  STYPE=numeric[],
  FINALFUNC=_final_boxplot,
  INITCOND='{}'
);


Win32 - adjust paths according to your own setup, and be sure to restart the PostgreSQL service after changing:

    In Windows environment:
    R_HOME/Build=C:\Progra~1\R\R-2.5.0
    Path=%PATH%;C:\Progra~1\R\R-2.5.0\bin

    In MSYS:
    export R_HOME/Build=/c/progra~1/R/R-2.5.0
    export PATH=$PATH:/c/progra~1/PostgreSQL/8.2/bin
    USE_PGXS=1 make
    USE_PGXS=1 make install
   
You can use plr.sql (which is created in contrib/plr) to create the language and support functions in your database of choice:

    psql mydatabase < plr.sql
   
Alternatively you can create the language manually using SQL commands:

CREATE FUNCTION plr_call_handler()
RETURNS LANGUAGE_HANDLER
AS '$libdir/plr' LANGUAGE C;

CREATE LANGUAGE plr HANDLER plr_call_handler;
   
As of PostgreSQL 9.1 you can use the new CREATE EXTENSION command:

    CREATE EXTENSION plr;
   
This is not only simple, it has the added advantage of tracking all PL/R installed objects as dependent on the extension, and therefore they can be removed just as easily if desired:

    DROP EXTENSION plr;

PL/Python -- CREATE EXTENSION plpythonu
CREATE EXTENSION plpython3u;
SELECT * FROM pg_language;
pip install ipython-sql
CREATE EXTENSION plr;
\dx  -- List Installed Extensions
C:\Program Files\PostgreSQL\10\lib\plpython3.dll

create table handler(
    path varchar(255),
    code text,
    template text);
	
create table todo(
    item varchar(255));

	
CREATE OR REPLACE FUNCTION handle_request(IN path text) RETURNS text AS
$$
import urlparse
 
url=urlparse.urlparse(path)
params=urlparse.parse_qs(url.query)
 
stm = plpy.prepare("SELECT code, template FROM handler WHERE path = $1", [ "text" ])
rv = plpy.execute(stm, [ url.path ])
 
if(len(rv) == 0):
  return "not found"
}
else:
  code = rv[0]['code']
  template = rv[0]['template']
  locals = {'path': url.path, 'params': params, 'ctx': {}}
  exec(code, globals(), locals)    
  ctx = locals['ctx']
  return template.format(**ctx)
 
$$
LANGUAGE 'plpythonu' VOLATILE;

The procedure parses URL parameters. Then it reads the Python code and the HTML template from the database. Finally, it runs the Python code and renders the result.
And here is a sample request handler for / page.
insert into handler values('/', '# put you python code here',  '<h1>Hello world</h1>');
select handle_request('/');

Handling User Input
Let’s do something more dynamic. The user can provide a message to display in the “message” parameter. The code displays the value in the template.

insert into handler values('/dynamic', 
'
message=""
if params.has_key("message"):
   message = params["message"][0]
 
ctx["message"] = message
'
,  '<h2>Dynamic</h2> message: <b>{message}</b>');

test=> select handle_request('/dynamic?message=foo');
            handle_request            
--------------------------------------
 <h2>Dynamic</h2> message: <b>foo</b>
(1 row)


Reading Content From the Database
Or even more dynamic. The code inserts new items into the todo table.
create table todo (
        item varchar(255)
);

insert into handler values('/todo', 
''
if params.has_key("item"):
   item = params["item"][0]
   stm = plpy.prepare("insert into todo values($1)", [ "text" ])
   plpy.execute(stm, [item])}
 
stm = plpy.prepare("select item from todo", [])
rv = plpy.execute(stm,[])
list=""
 
for r in rv:
   list =  list + "<li>%s</li>" % (r["item"])
 
ctx["list"] = list;
'
,  
 
'<h2>TODO</h2>
<ol>
{list}
</ol>
<hr>
<form><input type="text" name="item"><button>add</button></form>
<hr>
');'

HTTP Server
I was thinking about how to handle an HTTP request in the PostgreSQL. I’ve decided to write a simple HTTP connector instead of embedding HTTP server in the PostgreSQL itself. Here is the code:
#  http.py
import SimpleHTTPServer
import SocketServer
import psycopg2 as dbapi2
 
PORT = 8000
 
class Handler(SimpleHTTPServer.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
 
        db = dbapi2.connect (database="test", user="test", 
            password="test", host="localhost", port=5433)
        try:
            cur = db.cursor()
            try:
                cur.execute("select handle_request(%(path)s);",
                    {'path': self.path})
                rows = cur.fetchall()
                result=rows[0][0]
                self.wfile.write(result)
            finally:
                cur.close()
        finally:
            db.commit()
            db.close()
 
httpd = SocketServer.TCPServer(("", PORT), Handler)
 
print "serving at port", PORT
httpd.serve_forever()

http://localhost:8000/dynamic?message=foo


# enable python in that database
CREATE PROCEDURAL LANGUAGE 'plpythonu' HANDLER plpython_call_handler;
 
# enable python for test user
UPDATE pg_language SET lanpltrusted = true WHERE lanname LIKE 'plpythonu';

The best way to debug a module that fails to register is by opening REGSVR32.EXE in Dependency Walker rather than your DLL. Then choose to start profiling (F7). In the profiling dialog, enter the full path to your DLL in the "Program arguments" field. For "Starting directory", you may wish to enter the directory that the DLL resides in. Check the options you wish to use and press Ok. This will run REGSVR32.EXE and attempt to register your DLL. By actually running REGSVR32.EXE, you can see more types of runtime errors.


How to use Dependency Walker
To use Dependency Walker to investigate errors, you can follow these steps:
Start Dependency Walker
Click Open on the File menu to load the problem file
In the View menu, click Start profiling. The Profile Module dialogue box appears
Type any switches, program arguments, other options you want and then click OK.
Dependency Walker will inject dwinject.dll before the error occurs and will log the events taking place at the time of the error.

https://www.python.org/download/releases/3.3.0/
https://www.python.org/downloads/windows/

could not load library "C:/Program Files/PostgreSQL/9.6/lib/plpython3.dll": The specified module could not be found.
C:\Program Files\PostgreSQL\9.6\share\extension there are plpython3u files
could not open extension control file "C:/Program Files/PostgreSQL/9.6/share/extension/plr.control": No such file or directory


root@KOHAILS:~#
[root@ekampus-xen5 ~]#

sudo chmod a+w /tmp 
sudo chown 0:0 /tmp
sudo chmod 1777 /tmp

# https://docs.microsoft.com/en-us/windows/wsl/install-win10
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont

https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6

sudo apt-cache search word
sudo apt-get upgrade

lxrun /setdefaultuser walherb -- Uninstall Ubuntu Environment on Windows 10
lxrun /uninstall /full -- Uninstall Ubuntu Environment on Windows 10

[root@anagios ~]# cal 9 1752
   September 1752   
Su Mo Tu We Th Fr Sa
       1  2 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30

Windows + I -- Settings -> Personalization -> Taskbar -> Replace Command Prompt with Windows PowerShell
Open Command Prompt Here -> HKEY_CLASSES_ROOT\Directory\shell\cmd -> _HideBasedOnVelocityId
ShowBasedOnVelocityId  --> {value: 639bc8}

HKEY_CLASSES_ROOT\Directory\Background\shell\cmd
HKEY_CLASSES_ROOT\Directory\shell\cmd
HKEY_CLASSES_ROOT\Drive\shell\cmd

HKEY_CLASSES_ROOT\Directory\Background\shell\Powershell
HKEY_CLASSES_ROOT\Directory\shell\Powershell
HKEY_CLASSES_ROOT\Drive\shell\Powershell


https://www.assistanz.com/get-server-notification-telegram-app/
http://www.techinformant.in/get-server-notification-mobile/
https://smeretech.com/en/to-use-telegram-with-nagios/  (*****)
https://pommi.nethuis.nl/nagios-notifications-via-telegram/
https://www.tutonaut.de/anleitung-einfuehrung-in-telegram-bots-nachrichten-und-dateien-aus-dem-terminal-senden/

BotName: HerbNagiosAlerts
username: HerbNagiosAlertsBot

curl -X POST https://api.telegram.org/bot502024348:AAEWN3pfgRlKt8lsSKTueAIAwcWA7ZpFt1s/getUpdates

/usr/bin/curl -X  POST --data chat_id=-300492719 --data text="Hello From Linux CLI" https://api.telegram.org/bot502024348:AAEWN3pfgRlKt8lsSKTueAIAwcWA7ZpFt1s/sendMessage

Use this token to access the HTTP API:
502024348:AAEWN3pfgRlKt8lsSKTueAIAwcWA7ZpFt1s
chat_id: 480865501
https://api.telegram.org/bot502024348:AAEWN3pfgRlKt8lsSKTueAIAwcWA7ZpFt1s/getupdates

{"ok":true,"result":[{"update_id":240485309,
"message":{"message_id":2,"from":{"id":480865501,"is_bot":false,"first_name":"Herbert","last_name":"Walusimbi","language_code":"en-US"},"chat":{"id":480865501,"first_name":"Herbert","last_name":"Walusimbi","type":"private"},"date":1511357365,"text":"/start","entities":[{"offset":0,"length":6,"type":"bot_command"}]}}]}

https://api.telegram.org/bot502024348:AAEWN3pfgRlKt8lsSKTueAIAwcWA7ZpFt1s/sendMessage?chat_id=480865501&text=Hello+World

{"ok":true,"result":{"message_id":3,"from":{"id":502024348,"is_bot":true,"first_name":"HerbNagiosAlerts","username":"HerbNagiosAlertsBot"},"chat":{"id":480865501,"first_name":"Herbert","last_name":"Walusimbi","type":"private"},"date":1511357593,"text":"Hello World"}}

{"ok":true,"result":[{"update_id":240485309,
"message":{"message_id":2,"from":{"id":480865501,"is_bot":false,"first_name":"Herbert","last_name":"Walusimbi","language_code":"en-US"},"chat":{"id":480865501,"first_name":"Herbert","last_name":"Walusimbi","type":"private"},"date":1511357365,"text":"/start","entities":[{"offset":0,"length":6,"type":"bot_command"}]}},{"update_id":240485310,
"message":{"message_id":4,"from":{"id":480865501,"is_bot":false,"first_name":"Herbert","last_name":"Walusimbi","language_code":"en-US"},"chat":{"id":-300492719,"title":"HerbNagiosAlertsG","type":"group","all_members_are_administrators":true},"date":1511359886,"group_chat_created":true}}]}

http://ejie.me/  -- Clover -- {Windows Advanced File Explorer}
I don't' mind the installation in chinese and I figured out how to get to the english version of the program. The wrench on the upper left, the third entry (with an S after it) is settings. Open that, and at the bottom is a drop down menu. Select English, close the requestor, and then close and restart Clover. Tada!

15 Student Websites That Will Help You in School! 2017
https://www.youtube.com/watch?v=PO5ak0Ymyds
Alison: https://alison.com/
Unigo: https://www.unigo.com/
Cheatography: https://www.cheatography.com/
The Book Pond: http://www.thebookpond.com/
PlagTracker: http://www.plagtracker.com/
Rate My Professors: http://www.ratemyprofessors.com/
Quizlet: https://quizlet.com/
WolframAlpha: https://www.wolframalpha.com/
Tomato Timer: https://tomato-timer.com/
Stack Exchange: https://stackexchange.com/
TedEd: https://ed.ted.com/
Google Scholar: https://scholar.google.com/
Student Rate: http://www.studentrate.com/
Khan Academy: https://www.khanacademy.org/
Chegg: https://www.chegg.com/

https://www.youtube.com/watch?v=M5PbrjU7wGg
Course Hero: https://www.coursehero.com/
Ucampus: http://ucampus.co/HOME/Build
Spark Notes: http://www.sparknotes.com/
Booksprice: http://www.booksprice.com/
Mathway: https://www.mathway.com
Ureddit: http://ureddit.com/
Written Kitten: http://writtenkitten.net/
StudyBlue: https://www.studyblue.com/
edX: https://www.edx.org/
CodeCademy: https://www.codecademy.com/
TheNewBoston: https://thenewboston.com/
Flashcard Machine: https://www.flashcardmachine.com/
RoomSurf: https://www.roomsurf.com/
CourseNotes: http://www.course-notes.org
Sympy Gamma: http://gamma.sympy.org/
TheNewBoston: https://thenewboston.com/
Koofers: https://www.koofers.com/


12 Amazing Websites You Didn't' Know Existed! Ultimate Edition
https://www.youtube.com/watch?v=FX6QqbpJVhM
Madeon’s Adventure Machine 
http://www.madeon.fr/adventuremachine/
Let Me Google That For You
https://lmgtfy.com/
Hacker Typer
http://hackertyper.net/
Radio Garden
http://radio.garden/
SuperCook
www.supercook.com
Faces of Facebook
http://app.thefacesoffacebook.com/
Playback.FM
http://playback.fm/birthday-song
Geek Typer
http://geektyper.com/
Account Killer
http://www.accountkiller.com/en/#
Sanger
http://www.sanger.dk/
Fake Name Generator
http://www.fakenamegenerator.com/
The Useless Web
http://www.theuselessweb.com/


25 Extremely Useful Educational Websites for College Students (Best educational websites)
https://www.youtube.com/watch?v=JB5tZGdI6J4


# ------------------------------- UIPE --------------------------
# https://www.erb.go.ug/
Direct Applicants 
All candidates who attained 'Member' of UIPE before the commencement of the UIPE/ERB Joint Assessment Committee (JAC) are required to submit a Technical Report and Career Report plus attending a Board Interview. In addition they apply for registration by filling ERB Form ERA 1, and attaching copies of certificates for the Board's' processing of the documentation.


xe vm-export filename=/var/run/sr-mount/3422ff6d-0e3b-a735-da5d-6c04a945683d/intranet_global.xva vm=INTRANET_1
xe vm-export vm=RABBITMQ_1 filename=/var/run/sr-mount/3422ff6d-0e3b-a735-da5d-6c04a945683d/rabbitmq_muk.xva
xe vm-import filename=/var/run/sr-mount/3422ff6d-0e3b-a735-da5d-6c04a945683d/admission-1.xva


xe vm-export vm=(name or uuid) outputfile.xva

xe vm-export filename=dspace.xva vm=Dspace-Repository &
xe vm-import filename=dspace.xva on 68


---------------------- KOHA ACCESS KYU 10.1.1.44@library-koha:KYU@lib561# -> #:KYU@571#
Admin GUI/UI Accesss @ 10.1.1.44:8080 username:dicts@kyu.ac.ug pswd:123456
root:x:0:0:root:/root:/bin/bash
jose:x:1000:1000:jose katongole:/HOME/Build/jose:/bin/bash
library-koha:x:1001:1001:Koha instance library-koha,,,:/var/lib/koha/library:/bin/bash
/etc/koha/sites/library/koha-conf.xml
ss -tunlp     -> 	Checking Open ports in Ubuntu 18.04   -> MySQL:3306
<db_scheme>mysql</db_scheme>
<database>koha_library</database>
<hostname>localhost</hostname>
<port>3306</port>
<user>koha_library</user>
<pass>eKampus@2010@11</pass>

SELECT surname,firstname,userid FROM borrowers;

SELECT surname,firstname,userid FROM borrowers
INTO OUTFILE '/var/lib/mysql-files/borrowers.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

https://computingforgeeks.com/how-to-solve-mysql-server-is-running-with-the-secure-file-priv-error/
mysqladmin -ukoha_library -peKampus@2010@11 variables
SHOW VARIABLES;
SHOW VARIABLES LIKE "secure_file_priv";
/var/lib/mysql-files/
sudo vim /etc/my.cnf

------------- CentOS 7 End-of-life 30 June 2024  -> CentOS-7-x86_64-DVD-1708.iso -> CentOS 7 64 bit VM:asterisk2010
7.9.2009		-		{18-Jan-2021 17:12  Latest CentOS 7 Version & Build}
https://www.redhat.com/en/services/training/ex300-retired-red-hat-certified-engineer-rhce-exam-red-hat-enterprise-linux-7
http://vault.centos.org/
CentSO 8.3.2011 -> Activate the web console with: systemctl enable --now cockpit.socket
Web console: https://RHEL8:9090/ or https://192.168.64.132:9090/
C:\Users\walas\AppData\Local\Downloaded Installations

EX300 Retired - Red Hat Certified Engineer (RHCE) exam for Red Hat Enterprise Linux 7
Red Hat Certified System Administrator (RHCSA®) certification is required to earn RHCE® certification.

Audience for this exam
Experienced Linux IT professionals who currently have RHCSA certification and are interested in earning an RHCE certification
Experienced Red Hat Enterprise Linux system administrators seeking validation of their skills
Students who have attended the Red Hat System Administration I, II, and III courses or the RHCE Certification lab
Experienced Linux system administrators who require a certification either by their organization or based on a mandate (DOD 8570 directive)
An RHCE who is noncurrent and has passed the RHCSA exam

Recommended training
Training courses for Windows system administrators (with minimal Linux experience)

Red Hat System Administration I (RH124)
Red Hat System Administration II with RHCSA exam (RH135)
Red Hat System Administration II (RH134)
Red Hat System Administration III (RH254)
Training courses for Linux or UNIX administrators with 1-3 years of experience

RHCSA Rapid Track Course with exam (RH200)
RHCSA Rapid Track Course (RH199)
Training courses recommended for senior Linux administrators

RHCE Rapid Track Course (RH299)
Training courses recommended for Solaris administrators

https://rhtapps.redhat.com/assessment/session/
RHCE Rapid Track Course (RH299)

RECOMMENDATIONS
The assessment recommendation considers that:
You want to become a senior Linux system administrator, ultimately earning a Red Hat Certified Engineer (RHCE) certification.
Based upon your assessment, we recommend you take the following courses:

RHCSA Rapid Track course with RHCSA exam
The RHCSA Rapid Track course (RH200) relates to Red Hat® Enterprise Linux® and is designed for students who already have significant experience with Linux administration. The course reviews the tasks covered in Red Hat System Administration I (RH124) and II (RH134) at an accelerated pace. If you have a Red Hat Learning Subscription or if you decide to delay taking the RHCSA exam, enroll in RHCSA Rapid Track (RH199).

Red Hat System Administration III with RHCE exam
Red Hat® System Administration III (RH295), related to Red Hat Enterprise Linux,®, is designed for experienced Linux system administrators who hold a Red Hat Certified System Administrator (RHCSA®) certification or equivalent skills and who want to learn to automate tasks, integrate Red Hat emerging technologies, and apply automation for efficiency and innovation. If you have a Red Hat Learning Subscription or if you decide to delay taking the RHCE exam, enroll in Red Hat System Administration III (RH294).


https://www.globalknowledge.com/us-en/
Red Hat System Administration III with RHCSA and RHCE Exams (RH255) - Comprised of RH254, EX200, and EX300
RHCSA Rapid Track Course (RH199) * -> Red Hat® System Administration I (RH124) and Red Hat® System Administration II (RH134) at an accelerated pace 
RHCSA Rapid Track course with RHCSA Exam (RH200) - comprised of RH199 and EX200.
Red Hat System Administration I (RH124)
RHCE Certification Lab (RH299)
RHCE Certification Lab with RHCSA and RHCE Exams (RH300)
Red Hat Certified System Administrator (RHCSA) exam (EX200, EX200K) **
Red Hat System Administration III (RH254)
Red Hat System Administration III with RHCSA and RHCE Exams (RH255)
RHCE Certification Lab with RHCSA and RHCE Exams (RH300)
RHCE Certification Lab (RH299)
Red Hat Enterprise Performance Tuning (RH442)
Red Hat System Administration III: Linux Automation with Ansible (RH294)
Red Hat Enterprise Linux Automation with Ansible and exam (RH295)
Red Hat Certified Engineer exam (EX300) - Linux 7
RHCE exam (EX294) as a current RHCSA - Linux 8
Red Hat Certified Architect (RHCA)
RHCSA® -> RHCE® -> RHCA
Red Hat System Administration III: Linux Automation (RH294) and Red Hat Certified Engineer exam (EX294)
Red Hat Enterprise Linux 8 New Features for Experienced Administrators (RH354)

- Path From RHCSA® to RHCE®
Red Hat System Administration I (RH124)
Red Hat System Administration II (RH134)
Red Hat Certified System Administrator (RHCSA) exam (EX200)
Red Hat System Administration III (RH254)
Red Hat Certified Engineer (RHCE) exam (EX300)


Based on Email From Red Hat Enterprise Linux Self Assessment 
- You want to become a senior Linux system administrator, ultimately earning a Red Hat Certified Engineer (RHCE) certification.
Based upon your assessment, we recommend you take the following courses:
RHCSA Rapid Track course with RHCSA exam (RHEL8-RH200)
 * Red Hat System Administration I (RH124)
 * Red Hat System Administration II (RH134)
 * Reviewing the tasks at an accelerated pace. 
 * The Red Hat Certified System Administrator (RHCSA) exam (EX200) 
Red Hat System Administration III with RHCE exam (RHEL8-RH295)
 * Red Hat Enterprise Linux Automation with Ansible and exam (RH295)
 * Red Hat Enterprise Linux 8 - Red Hat Certified Engineer (RHCE) exam (EX294)
 * Based on Red Hat® Enterprise Linux 8 and Red Hat Ansible Engine 2.8
Red Hat Learning Subscription (LS120-LS220)
Based on Red Hat® Enterprise Linux® 8.2

- Offering content summary
Package management with new repository structure and appstream modules
Create storage devices, volumes, and file systems, including Stratis storage management
Configure network services and security
Manage processes, scheduling, and tuning
Manage users, groups, and authentication
Perform server management with the Cockpit web management utility
Troubleshoot and obtain support
Run containers

- Red Hat System Administration III with RHCE exam (RHEL8-RH295)
Install and configure Ansible or Red Hat Ansible Engine on a control node.
Create and manage inventories of managed hosts, as well as prepare them for Ansible automation.
Run individual ad hoc automation tasks from the command line.
Write Ansible Playbooks to consistently automate multiple tasks and apply them to managed hosts.
Parameterize playbooks using variables and facts, and protect sensitive data with Ansible Vault.
Write and reuse existing Ansible roles to simplify playbook creation and reuse code.
Automate common Red Hat Enterprise Linux system administration tasks using Ansible.

sha256sum CentOS-8-x86_64-dvd.iso

Email  Received from Red Hat Enterprise Linux to Gmail on 15/04/2021 20:17 (Subject: RHLS Free Notification)

sudo dnf update  -> CentOS 8 checking network


https://www.redhat.com/en/services/training/ex294-red-hat-certified-engineer-rhce-exam-red-hat-enterprise-linux-8

cat /etc/redhat-release
cat /etc/centos-release
cat /etc/*-release
cat /etc/issue
cat /etc/issue.net
cat /etc/issue*
rpm -q centos-release
uname -r -> Kernel Version 
uname -m
arch
cat /proc/version

/etc/yum.repos.d
yum repolist 
yum repolist all
yum list installed
yum repo-pkgs epel list
yum clean all
yum makecache
yum update —disablerepo=epel
yum update --disablerepo "*" --enablerepo=mariadb
yum -y install yum-utils
yum-config-manager --disable remi
yum-config-manager --enable repository <repository name>
yum-config-manager --disable repository <repository name>
yum check-update --disablerepo "*" --enablerepo=mariadb

yum provides */lsb_release
yum install redhat-lsb
yum install redhat-lsb-core
lsb_release -a

DVD Everything Minimal 
sha256sum <name>.iso
Compare Output with sha256sum.txt.asc
e33d7b1ea7a9e2f38c8f693215dd85254c3a4fe446f93f563279715b68d07987  CentOS-7-x86_64-DVD-2009.iso
07b94e6b1a0b0260b94c83d6bb76b26bf7a310dc78d7a9c7432809fb9bc6194a  CentOS-7-x86_64-Minimal-2009.iso

yum clean all
yum update
yum install yum-utils
yum --enablerepo=epel list | less

[root@PBX_Tes yum.repos.d]# lsb_release -a
LSB Version:    :core-4.1-amd64:core-4.1-noarch
Distributor ID: CentOS
Description:    CentOS Linux release 7.4.1708 (Core) 
Release:        7.4.1708
Codename:       Core

nmcli d
systemctl restart network
vi /etc/sysconf ig/network-scripts/ifcfg-ens33
ip a show ens33
Failed to start LSB: Bring up/down networking.
HWADDR:00:0c:29:d4:2d:4e
nmtui

cat /etc/centos-release
cat /etc/redhat-release
sudo yum check-update
sudo yum clean all
sudo yum update
reboot

- How to Upgrade the Linux Kernel on CentOS 7
yum -y update
yum -y install yum-plugin-fastestmirror (not necessary already in new versions of CentOS )
cat /etc/redhat-release
lsb_release -a
uname -smr 
yum info kernel -q  -> Not showing correct results
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
yum repolist
yum repolist all
yum list available --disablerepo='*' --enablerepo=elrepo-kernel
yum --enablerepo=elrepo-kernel install kernel-ml
yum --enablerepo=elrepo-kernel install kernel-lt  -> LTS
sudo awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg
sudo grub2-set-default 0  / vi /etc/default/grub set GRUB_DEFAULT=0
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo reboot
yum install yum-utils
package-cleanup --oldkernel
package-cleanup --oldkernels --count=1   -> Remove all except the one most recently installed 
sudo yum remove kernel-3.10.0-957.el7.x86_64

- Configuring Asterisk on Startup 
sestatus 
getenforce
setenforce 0 -> To disable SELinux on CentOS 7 temporarily 
vi /etc/selinux/config   - set SELINUX to disabled 
sudo setenforce Enforcing
sudo setenforce Permissive/sudo setenforce 0/echo 0 > /selinux/enforce
sudo shutdown -r now

- How to enable text colour in vi similar to vim in CentOS/RHEL
yum -y install vim-enhanced
vi /etc/profile
alias vi=vim
source /etc/profile

rpm -qa
rpm -q --scripts pkgname

------------- Linux Automation with Ansible on Red Hat Enterprise Linux 8.3 Ootpa---------------
https://docs.ansible.com/ansible_community.html
Invoke-Expression "& { $(Invoke-Restmethod https://aka.ms/install-powershell.ps1) } -UseMSI -Preview"
Get-ChildItem -Path 'C:\Program Files\PowerShell\'
Ansible introduction for RHEL8_CentOS8_ Ansible Primer for Linux Administrators
https://foxgreat.com/ansible-introduction-for-rhel8-centos8-ansible-primer-for-linux-administrators/
https://www.letmeread.net
https://developers.redhat.com/rhel8
https://developers.redhat.com/products/rhel/download
https://filestream.me/ walherb@gmail.com: asterisk2010 Sign In with Facebook to get Unlimited Access
https://zbigz.com/ walherb@gmail: Asterisk@2010

https://www.itechtics.com/powershell-7/
subscription-manager list --installed
subscription-manager repos --enable ansible-2-for-rhel-8-x86_64-rpms
subscription-manager repos --enable ansible-2.8-for-rhel-8-x86_64-rpms
subscription-manager repos | grep 'ansible.*rpms$'
dnf -y install python3
python -V
dnf -y install ansible
ansible --version  {v2.8.18}
config file = /etc/ansible/ansible.cfg
systemctl status sshd
which ansible 									-> {/usr/bin/ansible}
host google.com									-> {/etc/hosts, /etc/nsswitch.conf} - Config Files  
												-> Add Search Domain in File of DNS doesn't' work { /etc/resolv.conf}
hostnamectl        								-> Used to Add Entry
hostnamectl set-hostname sole.fatrain.com		-> This will of course set the hostname FQHN, but it will also
add the search entry in /etc/resolv.conf
getent hosts bullseye.fatrain.com				-> To test name resolution from all known sources, as
specified in /etc/nsswitch.conf, use getent:
id -un
ssh-keygen -t rsa
ssh-copy-id guest@vespa.fatrain.com
ssh guest@vespa.fatrain.com
/etc/sudoers entry:			%wheel ALL=(ALL) ALL
%wheel ALL=(ALL) ALL	
grep wheel /etc/group
vim hosts
mkdir /etc/ansible && cd /etc/ansible		->		touch hosts
ansible -i /etc/ansible/hosts web -m ping

[web]
vespa.fatrain.com
pike.fatrain.com
ansible -i ~/hosts web -m ping
ansible -i ~/hosts all -m ping
ansible -a "df -h" web -i hosts  /	ansible -m command -a "df -h" web -i hosts 
ansible -a "df -h" web -i ~/hosts
ansible -a "df -h" all -i ~/hosts
ansible -i hosts all --list-hosts
vim ansible.cfg
[defaults]
inventory=$HOME/Build/hosts
ansible -a "df -h" all

@ Testing on RHEL-8: root@192.168.64.133
id		-	{uid=0(root) gid=0(root) groups=0(root) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023}
[root@rhel-8 ~]# ansible localhost -m ping
ssh-keygen -t rsa     -  {/root/.ssh/id_rsa)}
ssh-copy-id walas@192.168.64.1
ssh walas@192.168.64.1

@ on walas@192.168.64.1: Windows Host 
In PowerShell 7 with Admin Privileges 
PS C:\Users\walas>id				->		{uid=0(walas) gid=0}

PS C:\Users\walas\.ssh> Get-ChildItem -Name
config
id_rsa
id_rsa.pub
known_hosts

--------------------------- Red Hat Insights ---------------------------------------------
subscription-manager register --username walherb --password Asterisk@2010
subscription-manager attach --auto
sudo dnf update
To register this system, run: insights-client --register
subscription-manager register --auto-attach

***** @$#Failed to connect to the RHEL Insights before Installing Ansible and Python 3 but worked after setting up Ansible
registered to Insights server from websocket @192.168.64.133:9090/
https://cloud.redhat.com/insights#SIDs=&tags=
Insights: Connected to Insights
View your Insights results -> {http://cloud.redhat.com/insights}
https://cloud.redhat.com/insights/registration

https://access.redhat.com/articles/3050101
# subscription-manager refresh
# subscription-manager  repos  --list  | grep ansible
# subscription-manager repos --enable ansible-2-for-rhel-8-x86_64-rpms
# yum -y install rhel-system-roles  ansible
Documentation		-		{/usr/share/doc/rhel-system-roles-<version>/SUBSYSTEM/}
Ansible				-		{/usr/share/ansible/roles/rhel-system-roles.SUBSYSTEM/}

subscription-manager register --auto-attach

username: walherb
Account Number: 7104826

[root@rhel-8 ~]# subscription-manager register --auto-attach
This system is already registered. Use --force to override

RHEL 8 platform-python path: /usr/libexec/platform-python

https://github.com/RedHatInsights/insights-client-role
$ ansible-galaxy install RedHatInsights.insights-client

[root@rhel-8 ~]# ansible-galaxy install RedHatInsights.insights-client
- downloading role 'insights-client', owned by RedHatInsights
- downloading role from https://github.com/RedHatInsights/insights-client-role/archive/v1.7.2.tar.gz
- extracting RedHatInsights.insights-client to /root/.ansible/roles/RedHatInsights.insights-client
- RedHatInsights.insights-client (v1.7.2) was installed successfully

$ ansible-playbook --limit=myhost.example.com install-insights.yml --extra-vars @insights-client-config.yml

https://galaxy.ansible.com/
Check for insights from Red Hat Cloud Services
/usr/lib/systemd/system/insights-client-results.service - Failed to start Check for insights from Red Hat Cloud Services.

​​[root@server ~]# insights-client --register				- 		{Register the system to Red Hat Insights.}
https://cloud.redhat.com/insights				-		Insights Dashboard


Insights roles and playbooks
- debug: var=ansible_local.insights.system_id
ansible_python_interpreter			-		RHEL 8 platform-python path: /usr/libexec/platform-python 


[root@rhel-8 ~]# insights-client --register
Successfully uploaded report from rhel-8 to account 7104826.
View the Red Hat Insights console at https://cloud.redhat.com/insights/

Install the Openscap-scanner and the SCAP security guide
yum install openscap-scanner -y
yum install scap-security-guide -y

Once you have policies created within Compliance, for each system, run the following command each time you wish to run a scan:
​​insights-client --compliance

https://cloud.redhat.com/cost-management
Now copy the contents of the id_rsa.pub file you just created to C:\Users\username\.ssh\authorized_keys on your Windows machine. Where username is the user you want to use for Remoting.

You’ll want to make sure you copy the same public key to all the hosts you’d like to authenticate with from this private key. In our case, the two Linux machines and the Windows machine have the same public key in the authorized_keys file on each server, inside user accounts with the same name.

Confirm you have Authorized Keys configured on your Windows SSH server
Now on the Windows machine in C:\Program Files\OpenSSH\sshd_config verify that this line is uncommented, which it should be by default. If not, uncomment it and restart the ssh service. This is the place SSH will look for keys when a user logs into the system via…SSH.
AuthorizedKeysFile .ssh/authorized_keys

Demo-MacBook-Pro:~ demo$ ssh demo@172.16.94.9
PS /Users/demo> Enter-PSSession-HostName 172.16.94.9 -UserName demo 

- SSH Login Without a Password
https://howchoo.com/linux/ssh-login-without-password
Linux + macOS -> Variables
USER=remoteuser
PASSWORD=remotepassword
REMOTE=192.168.1.34
ssh-keygen -t rsa

Windows 
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
ssh-keygen
The keys will be generated in the specified directory, usually C:\Users\Your_Username/.ssh. You will be prompted to create a passphrase, but it isn't' required.
ssh $USER@$REMOTE

To add the keys to the local Windows 10 keystore, run the following:
Start-Service ssh-agent
ssh-add .\.ssh\id_rsa

Copy the public key to the remote server
Linux + macOS
scp ~/.ssh/id_rsa.pub $USER@$REMOTE:

SSH to the remote server and configure your key
Now we'll' need to move the contents of our public key to a new location, and delete the original key file.
cat id_rsa.pub >> .ssh/authorized_keys
rm id_rsa.pub

Permissions 
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

Test your work
ssh $USER@$REMOTE


- http://vcloud-lab.com/entries/devops/How-to-Setup-Passwordless-SSH-Login-on-Windows
$id_rsa_Location = "$env:USERPROFILE/.ssh/id_rsa" 
$remoteSSHServerLogin = "$User@$Computer"

Write-Host "INFO: Copying /.ssh/id_rsa.pub to $Computer, Type password`n" -ForegroundColor Cyan
scp.exe -o 'StrictHostKeyChecking no' "$id_rsa_Location.pub" "${remoteSSHServerLogin}:~/tmp.pub"
Write-Host "INFO: Updating authorized_keys on $Computer, Type password`n" -ForegroundColor Cyan
ssh.exe "$remoteSSHServerLogin" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat ~/tmp.pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && rm -f ~/tmp.pub"

Set-Location -Path $oldLocation
Write-Host "nINFO: Try SSH to $Computer Now it will not prompt for password" -ForegroundColor Green

ansible localhost -m ping

https://github.com/PowerShell/PowerShell#get-powershell
netsh advfirewall firewall add rule name=sshd dir=in action=allow protocol=TCP localport=22
Start sshd (this will automatically generate host keys under %programdata%\ssh if they don't' already exist)

net start sshd
Optional

To configure a default shell, see here
To setup sshd service to auto-start
Set-Service sshd -StartupType Automatic
To migrate sshd configuration from older versions (0.0.X.X)

Follow these PowerShell steps to retrieve links to the latest Win32-OpenSSH packages:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = 'https://github.com/PowerShell/Win32-OpenSSH/releases/latest/'
$request = [System.Net.WebRequest]::Create($url)
$request.AllowAutoRedirect=$false
$response=$request.GetResponse()
$([String]$response.GetResponseHeader("Location")).Replace('tag','download') + '/OpenSSH-Win64.zip'  
$([String]$response.GetResponseHeader("Location")).Replace('tag','download') + '/OpenSSH-Win32.zip'

--------------------------- Windows 10 System Administration: {Installed OS is 20H2 Build 19042.928} ------------------
https://windowsloop.com/
How to Add Application Shortcut to Start Menu Windows 10
C:\Users\walas\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
%appdata%\Microsoft\Windows\Start Menu\Programs shell:start menu
Add Portable Apps to Windows Startup 
 * Press “Windows Key + R“
 * Type shell:startup
 * Copy Shortcut
Enable Enhanced Mode for Search in Windows 10 
 * "Windows Key + I"
 * Go To “Search → Searching Windows” 
 * Select the “Enhanced Mode” option under “Find my Files”
How to Create Desktop Shortcut for Any Windows 10 Store App
 * Press “Windows Key + R“.
 * Type “shell:AppsFolder” and click “Ok“
 * Right-click on the app icon.
 * Select the “Create shortcut” option.
 * In the warning prompt, click “Yes“

------------------------ PowerShell 7: Download, Install, Update And Usage Guide -----------------
$PSVersionTable 							-> 	Check PowerShell Version 
[Environment]::Is64BitProcess 				->  Check whether PowerShell is 32-bit or 64-bit
$env:ProgramFiles\PowerShell\<version>		->	Default Destination for the Install 
https://www.itechtics.com/powershell-7/
https://aka.ms/powershell-release?tag=stable
To run PowerShell 5, go to Run –> powershell
To run PowerShell 7, go to Run –> pwsh

- Installing PowerShell 7 using command-line
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI -Quiet"

- Installing PowerShell 7 over the network

- Using PowerShell 7
Run PowerShell as an administrator. 
Run the following commands.
Get-ExecutionPolicy
Set-Executionpolicy Unrestricted
Enter Y in the prompt
Get-ExecutionPolicy 

Import-Module -Name posh-git

- How to Enable the New File Explorer App in Windows 10
https://www.itechtics.com/file-explorer-uwp/
It is Universal Windows Platform (UWP) for Win 10 v1703 and later 
1. Right-click on a blank space on the desktop, expand New and then click Shortcut.
2. A shortcut creation wizard will now appear. Enter the following text under Type the location of the item. Click on Next when done. {explorer shell:AppsFolder\c5e2524a-ea46-4f67-841f-6a9465d9d515_cw5n1h2txyewy!App}
3. On the next screen, name the new shortcut anything you’re comfortable with, and click Finish

- 4 Ways To Open Command Prompt Window in a Folder In Windows 10
https://www.itechtics.com/open-command-window-folder/
Pro Tip: If you are using Windows 10, just open the folder and go to File menu –> Open Windows PowerShell. You also have the option to open Windows PowerShell as Administrator.

- Add Open Command Window Here to the context menu using Registry Editor
Click Windows + R then type regedit. This will open Windows Registry editor.
Registry editor window will open. After that go to HKEY_CLASSES_ROOT. Further go into Directory\shell\cmd
and right click Permissions. The following window will appear
Then click on the Advanced option
After that, click on change at the top of the window
Type your username in “Enter the object name to select” and then click on the check name to validate that name.
Press Apply and then OK. When you are done with those Administrative modes in Group or user names of permissions for cmd window and tick Allow on Full control. Click Apply and then OK
Once you are done with it, click on HideBasedonVelocityID and rename it ShowBasedonVelocityId
Now when you click the Shift key and right click you will see the option “Open Command Window here“

- Open Command Prompt In A Folder Using Keyboard Shortcut?
The press Shift + Right Click mouse button anywhere in the folder window.

- Using CMD command in File Explorer to open Command Prompt Window
Go to your desired folder and click on the location bar of Windows Explorer.
Then type cmd and press Enter key.
Click Ctrl+Shift+Enter instead of just hitting enter to open the Command Prompt in administrative mode.
You can also open PowerShell window using the same technique. Just go to the folder and then type powershell in the File Explorer address bar. This will open PowerShell in the same folder location or path

- Add “Open Command Window Here” with Administrative privileges in the context menu
Use Reg File 

- How to get back Command Prompt in Win+X menu?
In order to change the Windows Powershell options with Command Prompt go to Settings –> Personalization –> Taskbar.  After that turn off the option of “Replace Command Prompt with Windows Powershell Option in the menu when i right click the start button or press Windows key +X”.

- Install Telnet in Windows 10
Open Command Prompt Run –> cmd
Run the following command:
pkgmgr /iu:”TelnetClient”
Go to Run –> telnet
open google.com 80

- Check open port using PowerShell
Run the following command		tnc google.com -port 80		tns is short for Test-NetworkConnection
TcpTestSucceeded will give you True if the port is open and false if the port is closed.

- Add custom message while restarting computer
shutdown /r /c "Put custom message here"

- Shutdown computer
shutdown /s /t 00

- Restart remote computer
shutdown /r /m \\RemotePCName

shutdown /r /m \\RemotePCName /t 60 /c "Your computer is being restarted by your IT Admin"

- Find Wifi password using command line tools {Getting all saved Wifi passwords in Windows 10}
(netsh wlan show profiles) | Select-String “\:(.+)$” | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name=”$name” key=clear)} | Select-String “Key Content\W+\:(.+)$” | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ PROFILE_NAME=$name;PASSWORD=$pass }} | Format-Table -AutoSize

- Get Wifi password of a specific network
Open Command Prompt in administrative mode
netsh wlan show profiles
netsh wlan show profile name=”network-profile-name” key=clear

- How to set static IP address and DNS Server using Command Line in Windows 10
Get-NetIPInterface
Note down the associated Interface Indexes as they will be required when assigning static IPs through PowerShell.
netsh interface ipv4 set address name=”Ethernet” static 192.168.10.22 255.255.255.0 192.168.10.1 - {CMD Admin}
netsh interface ipv4 set dns name=”Ethernet” static 8.8.8.8
netsh interface ipv4 set dns name=”Ethernet” static 8.8.4.4 index=2
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.1 -AddressFamily ipv4 -PrefixLength 24 -DefaultGateway 192.168.0.5 -AsJob  -- {PowerShell Admin}
Set-DnsClientServerAddress -InterfaceIndex 6 -ServerAddresses ("12.12.12.12","13.13.13.13")  -- {Set DNS}

- How to Check Public IP Address Using Command Line In Windows 10
Run {ipconfig /all} 		- {Local/ Private IP Address}
nslookup myip.opendns.com resolver1.opendns.com 		- {Public IP Address}
(Invoke-WebRequest ifconfig.me/ip).Content.Trim()

- How to Reset TCP/IP Stack in Windows 10		{CMD Admin}
ipconfig /release
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
ipconfig /renew 
Reboot PC

- PageFile Recommendations 8 GB System {Min 8449 MB: 8+257, Max 3 Times RAM or 4 GB: }

- 4 Ways To Change Computer Name In Windows 10 (Local and Remote)
Start Menu -> Settings -> System -> About
WMIC computersystem where caption='CurrentName' rename NewName		-		{CMD Admin}
Rename-Computer -NewName PCName -LocalCredential LocalUsername -PassThru		-		{PowerShell Admin}


- How To Optimize resolution, scaling, and layout in Windows 10
Start Menu -> Settings -> System -> Display

- How to clean up WinSxS folder to save Space In Windows 10		{C:\Windows\WinSxS}
Dism.exe /Online /Cleanup-Image /AnalyzeComponentStore

- How To Change Account Name, Username And Profile Name In Windows 10
https://www.itechtics.com/change-account-name-windows/


- How to enable and change Screensavers in Windows 10
https://www.itechtics.com/screensavers/
Open Windows Settings (Windows key + I)
Go to Personalization –> Lock Screen
From the right-hand pane, click on Screen saver settings link.

Go to Run –> control desk.cpl,,@screensaver

- Calibrating monitor display in Windows 10
https://www.itechtics.com/windows-10-color-calibration/		-		{Go to Run –> dccw.exe}

--- How to Get 5TB of OneDrive Cloud Storage Space For Free 		- {From Office 365 Education} 
https://www.itechtics.com/onedrive-5tb/		- 		{Doesn't' Work}
https://xkx.me/    ->		{https://xkx.me/mailbox/domfac@xkx.me}
https://www.microsoft.com/en-us/education/students
https://www.office.com/?from=signup		- 		{hwalusimbi@kyu.ac.ug: }  -> Agent or Neccesity
https://www.office.com/?auth=1

https://www.howtogeek.com/663684/how-to-install-powershell-7-on-windows-10/
https://adamtheautomator.com/powershell-7-upgrade/
http://woshub.com/install-update-powershell-windows/
 
audiogd.exe -> Over Consumes CPU Usage
https://1337x.to/search/RHEL+8/1/
https://1337x.to/search/Ansible/1/
https://www.tecmint.com/download-rhel-8-for-free/  - {How to Download and Install RHEL 8 for Free}
https://www.golinuxcloud.com/configure-rhel-centos-8-install-ansible-linux/
https://linuxconfig.org/install-ansible-on-redhat-8
https://www.redaix.com/2020/04/how-to-install-ansible-on-rhel8-centos8.html
https://www.itzgeek.com/how-tos/linux/centos-how-tos/how-to-install-configure-ansible-on-centos-8-rhel-8.html
https://www.tecmint.com/install-ansible-on-centos-rhel-8/
https://www.linuxtechi.com/install-ansible-centos-8-rhel-8/
https://computingforgeeks.com/how-to-install-and-configure-ansible-on-rhel-8-centos-8/
https://foxgreat.com/linux-linux-security-and-administration/
https://tecmint.tradepub.com/?do=login
https://www.itechtics.com/powershell-7/
 

- https://stackexchange.com/ 		@StackExchange		{signed in with Gmail Personal/Private Account walherb@gmail.com}
- MobaXterm HOME/Build Directory Equivalent in Windows 10 on MobaXterm Professional Edition v21.0 Build 4592 OS 20H2 Build 19042.928
  * Go to Settings->Configuration->General and set the Persistent HOME/Build directory {C:\Users\walas\Documents\MobaXterm\HOME/Build}
  * open ~
  * open "$HOME/Build"
  * open `pwd`
  
---------------- Work Problem on Koha Reported by Tembo Jimmy from Library --------------------  
- Koha Problem reported by Tembo Jimmy - AutoIncrement Issue 10.1.1.44:8080 About Koha -> Sytstem Information 
- {Fimished by 16/04/2021 @ 14:00}
- https://wiki.koha-community.org/wiki/DBMS_auto_increment_fix

MariaDB:
Versions prior to MariaDB 10.2.4 are affected. See the MariaDB 10.2.4 {https://mariadb.com/kb/en/mariadb-1024-release-notes/}
Persistent AUTO_INCREMENT for InnoDB {https://jira.mariadb.org/browse/MDEV-6076}

MySQL:
Versions prior to MySQL 8.0 are affected. See the MySQL 8.0  
{https://dev.mysql.com/doc/refman/8.0/en/innodb-auto-increment-handling.html#innodb-auto-increment-initialization}


https://phoenixnap.com/kb/how-to-check-mysql-version
Server version: 5.7.33-0ubuntu0.18.04.1 (Ubuntu)
mysql -V   -> mysql  Ver 14.14 Distrib 5.7.33, for Linux (x86_64) using  EditLine wrapper {:5.7.33}

mysql> SHOW VARIABLES LIKE '%version%';
+-------------------------+-------------------------+
| Variable_name           | Value                   |
+-------------------------+-------------------------+
| innodb_version          | 5.7.33                  |
| protocol_version        | 10                      |
| slave_type_conversions  |                         |
| tls_version             | TLSv1,TLSv1.1,TLSv1.2   |
| version                 | 5.7.33-0ubuntu0.18.04.1 |
| version_comment         | (Ubuntu)                |
| version_compile_machine | x86_64                  |
| version_compile_os      | Linux                   |
+-------------------------+-------------------------+

mysql> SELECT VERSION();
+-------------------------+
| VERSION()               |
+-------------------------+
| 5.7.33-0ubuntu0.18.04.1 |
+-------------------------+

mysql> STATUS;
--------------
mysql  Ver 14.14 Distrib 5.7.33, for Linux (x86_64) using  EditLine wrapper

Connection id:          938
Current database:
Current user:           koha_library@localhost
SSL:                    Not in use
Current pager:          stdout
Using outfile:          ''
Using delimiter:        ;
Server version:         5.7.33-0ubuntu0.18.04.1 (Ubuntu)
Protocol version:       10
Connection:             Localhost via UNIX socket
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    utf8
Conn.  characterset:    utf8
UNIX socket:            /var/run/mysqld/mysqld.sock
Uptime:                 48 min 34 sec

Threads: 2  Questions: 210912  Slow queries: 0  Opens: 1298  Flush tables: 1  Open tables: 1260  Queries per second avg: 72.378

mysql> use koha_library;
mysql> SELECT b.borrowernumber FROM borrowers b JOIN deletedborrowers db ON b.borrowernumber=db.borrowernumber;
mysql> SELECT b.biblionumber   FROM biblio b    JOIN deletedbiblio db    ON b.biblionumber=db.biblionumber;
mysql> SELECT i.itemnumber     FROM items i     JOIN deleteditems di     ON i.itemnumber=di.itemnumber;
mysql> SELECT i.issue_id       FROM issues i    JOIN old_issues oi       ON i.issue_id=oi.issue_id;
mysql> SELECT r.reserve_id     FROM reserves r  JOIN old_reserves o      ON r.reserve_id=o.reserve_id;

Dealing with corrupted data
Until the script is ready for use to clean up the data, one possible fix is to delete the entries in the deleted* and old* tables matching the IDs listed on the about page.

Solutions
Edit /etc/mysql/my.cnf
Locate the [mysqld] section and add: {init-file=/var/lib/mysql/init-file_koha_fix.sql}
Create a file /var/lib/mysql/init-file_koha_fix.sql
Edit it with the following contents, make sure to change the database name koha_kohadev in the first line to your database name
Repeat all statements for every database running on this DBMS server.
Restart MySQL {sudo service mysql restart}
% sudo tail -f /var/log/mysql/error.log

SELECT borrowernumber from deletedborrowers;
DELETE from deletedborrowers WHERE ID > 2;
https://www.mysqltutorial.org/mysql-delete-statement.aspx
DELETE FROM employees WHERE officeCode=4;
https://www.w3schools.com/sql/sql_delete.asp
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DELETE FROM employees;                                        -> Delete All rows 
DELETE FROM table_name ORDER BY c1, c2, ... LIMIT row_count;
DELETE FROM customers ORDER BY customerName LIMIT 10;
DELETE FROM customers WHERE country = 'France' ORDER BY creditLimit LIMIT 5;

Patrons
SELECT b.borrowernumber FROM borrowers b JOIN deletedborrowers db ON b.borrowernumber=db.borrowernumber;
delete from deletedborrowers where borrowernumber between 55 and 58; (1: * Deleted borrowernumber 55 56 57 & 58 )
DELETE FROM deletedborrowers WHERE borrowernumber between 55 and 58; 

https://www.guru99.com/delete-and-update.html

Items
SELECT i.itemnumber     FROM items i     JOIN deleteditems di     ON i.itemnumber=di.itemnumber;
SELECT itemnumber FROM deleteditems;
SELECT itemnumber FROM deleteditems WHERE itemnumber IN (47209,47210,47211,47212,47213,48166,220092,215106,290307);
DELETE FROM deleteditems WHERE itemnumber IN (47209,47210,47211,47212,47213,48166,220092,215106,290307);
DELETE FROM ----------- WHERE ------------ IN (20,21);

Checkouts
SELECT i.issue_id       FROM issues i    JOIN old_issues oi       ON i.issue_id=oi.issue_id;
SELECT issue_id FROM old_issues WHERE issue_id IN (230,535,1176,1170,758,1171,1168,536,590,1165,1129,1077,1175,1166,1169,1174,1167,1172,1173);
DELETE FROM old_issues WHERE issue_id IN (230,535,1176,1170,758,1171,1168,536,590,1165,1129,1077,1175,1166,1169,1174,1167,1172,1173);


https://www.unixmen.com/executing-mysql-queries-directly-command-line/
mysql -u root -p -e "USE unixmen; SHOW TABLES;"
mysql -u root -p -e "USE unixmen; SELECT * FROM staff;" | tee output.txt
mysql -u root -p -e "USE employees; SELECT DISTINCT A.first_name, A.last_name FROM employees A JOIN salaries B ON A.emp_no = B.emp_no WHERE hire_date < '1985-01-31';" | tee queryresults.txt
https://www.tutorialspoint.com/unix_commands/mysql.htm

https://www.cyberciti.biz/faq/run-sql-query-directly-on-the-command-line/


------------- Ubuntu Server 18.04.5 LTS --------------------
sudo apt update 
sudo apt upgrade 
sudo apt dist-upgrade

- Configuring Timezone in Ubuntu from Terminal 
timedatectl
/etc/localtime  -> /usr/share/zoneinfo
ls -l /etc/localtime
cat /etc/timezone
/usr/share/zoneinfo
timedatectl list-timezones
sudo timedatectl set-timezone Africa/Kampala
timedatectl

------------- Upgrade Kernel on Ubuntu 18.04 ------------
uname -r 
lsb_release -a
sudo add-apt-repository ppa:teejee2008/ppa (No longer works Ukuu is now licensed)
sudo apt-get install ukuu (No longer works Ukuu is now licensed)
sudo apt-get install libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac git - Alternative method
git clone https://github.com/teejee2008/ukuu.git
cd ukuu
make all
sudo make install

sudo apt-get update 
apt-cache search linux-image
sudo apt-get install linux-image-5.4.0-1009-aws

Version:  10.1.3.37598 Foxit
Glary Utilities Pro 5.164.0.190
MobaXterm 21.0.0.4592

- Linux Foundation Certified IT Associate (LFCA) 

------------ RHEL 8 https://www.tecmint.com/download-rhel-8-for-free/  - {How to Download and Install RHEL 8 for Free} -----
subscription-manager register --username walherb --password Asterisk@2010
subscription-manager attach --auto
sudo dnf update
To register this system, run: insights-client --register
subscription-manager register --auto-attach

192.168.64.133/24:  				ens160
TeamViewer 
Sat 17 Apr 2021 3:31 AM UTC
TeamViewer-ID: Management Console
IP Address: 41.210.143.56
Kampala, UG

GitHup Sign In Location on MTN UG Data
Kampala 41.210.143.56 Your current session

------------------ Forex Trading --------------------------
https://www.jumia.ug/sp-faq/
https://blog.blufx.co.uk/the-12-types-of-technical-analysis
https://blog.blufx.co.uk/day-trading-vs-forex-whats-the-difference
https://blog.blufx.co.uk/5-best-currencies-to-trade-and-heres-why
https://blog.blufx.co.uk/9-myths-about-forex-debunked
https://blog.blufx.co.uk/what-time-does-the-forex-market-open
https://blog.blufx.co.uk/6-best-forex-trading-books
https://blog.blufx.co.uk/heres-why-stop-loss-is-important
https://blog.blufx.co.uk/work-from-HOME/Build-online-trading
https://blog.blufx.co.uk/the-best-computer-set-up-for-forex-trading
https://finance-notes.com/2020/03/01/lesson-7/


- Red Hat Insights
https://cloud.redhat.com/security/insights
Software-as-a-Service (SaaS) 
http://cloud.redhat.com/insights

---------------------------------------- Electronic Plans: {e-plans} -----------------------------------
https://www.pinoyhouseplans.com/lovely-split-level-house-with-four-bedrooms/?fbclid=IwAR0qH10BD_0Y1Ne-g4IRVXgmCQRMxv1huRgEZSr-La8stSgGnvRIyF0bo-o
https://www.pinoyeplans.com
https://coolhouseconcepts.com/
https://www.houseanddecors.com/
https://ulricHOME/Build.com/

- How to Add or Remove a User from a Group in Linux
groups tecmint:		To check a yser group 
group:				To check ur own groups 
usermod -aG postgres tecmint:			tecmint is the username and postgres is the group name
gpasswd -d tecmint postgres				To remove a user from a group, use the gpasswd command with the -d option as follows.
sudo deluser tecmint postgres:	
w: 										Monitor Linux Activity i Real-Time 
install sisdig, then run # sysdig -c spy_users
sysdig -c spy_users
whowatch:				sudo (apt, yum, dnf) install whowatch -y, Ubuntu/Debian /CentOS/RHEl Fedora 22+
hwclock --systohc 
echo $(( ( $(date -d "2020-11-10" "+%s") - $(date -d "2020-11-01" "+%s") ) / 86400))		-> calculate the number of days 
between 2 given dates.
for y in {2000..2020}; do date -d $y-02-29 &>/dev/null && echo $y is leap year; done		-> Find the given year is leap year or not.
CUSTOM_FORMAT=$(date --date "Yesterday" "+%d-%y-%H:%M")
alias 
ls -la ~ | grep -i .bash_aliases 
source ~/.bash_aliases
echo $(( ( $(date -d "2021-04-12" "+%s") - $(date -d "2021-04-24" "+%s") ) / 86400))

https://www.tecmint.com/free-linux-shell-scripting-books/

***** ICT Qoute: {A Programmer is known when he/she do something good while an Administrator is known if he/she does something bad}
There are three rules that every System Administrator must follow and should never break.
Rule 1 : Backup Everything
Rule 2 : Master Command Line
Rule 3 : Automate task probably using any Scripting Language or Shell Script
https://www.tecmint.com/category/bash-shell/

1. Bash Guide for Beginners
2. Advanced Bash-Scripting Guide
3. Shell Scripting: Expert Recipes for Linux
4. Linux Shell Scripting Cookbook, Second Edition

chmod +x sys_info.sh
sudo bash -n sys_info.sh    :		We can perform syntax checking to only display the syntax errors as follows:
sudo ./sys_info.sh
bash -v script.sh
bash -n script.sh 					The syntax for activating syntax checking is as follows:

In keeping, with IEEE's' mission to "Advance Technology for Humanity," IEEE offers a special electronic-only membership option, at a reduced dues rate, for individuals who reside in developing countries. By choosing the e-Membership option at a reduced dues rate, you will receive electronic versions of your membership card, 'IEEE Spectrum' and 'The Institute' publications. Reduced fees such as unemployed, retired or minimum income are not available for e-Membership but may be applied to Society memberships.

Annual base dues for e-Membership are US$79.00. Traditional membership base dues are US$151. IEEE traditional and e-Membership both carry a region-specific activity assessment that varies depending on where you live. This will be included in the total amount due at checkout.
 
Traditional membership is automatically selected for new members. Renewing members who previously had e-Membership will have the option already selected. If you wish to select the e-Membership option or change it to.


------------------------------------- 316 EDU Channel ------------------------------
- Salvation story on TV (DSTV: John 3:16)26/04/2021 on MCF 98.7 FM - Mark 1: {THE 700 CLUB}
- 

adduser walusih 
useradd walusih
passwd walusih 
usermod -aG wheel walusih 
userdel -r walusih

