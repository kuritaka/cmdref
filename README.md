# cmdref


## About cmdref
This is my command cheat sheet.
See cmdref.net for more information on the command.

https://cmdref.net/

### Example

```
~]$ cmdrefgrep useradd
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -u UID -g GROUP -G GROUP1,GROUP2 -s /bin/bash -d HOME_DIR LOGIN
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd to create Adminuser on RHEL
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -G wheel USER1
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd to create Adminiuser on Ubuntu
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -m -s /bin/bash -G sudo USER2
```



## How to use cmdref

### Prepare
```
~]$ cd
~]$ git clone https://github.com/kuritaka/cmdref
~]$ cd cmdref
~]$ chmod 755 *.sh

#Using bash
~]$ alias cmdrefgrep="~/cmdref/cmdrefgrep.sh" >> ~/.bashrc
#Using zsh
~]$ alias cmdrefgrep="~/cmdref/cmdrefgrep.sh" >> ~/.zshrc
```

### Execute
```
~]$ cmdrefgrep <KEYWORD>
```

```
#more detail
~]$ view /xxxx/xxxx/xxxx/file
```


### Example

```
~]$ cmdrefgrep useradd
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -u UID -g GROUP -G GROUP1,GROUP2 -s /bin/bash -d HOME_DIR LOGIN
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd to create Adminuser on RHEL
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -G wheel USER1
/home/taka/cmdref/linux/allcommand_user_group.sh         # useradd to create Adminiuser on Ubuntu
/home/taka/cmdref/linux/allcommand_user_group.sh         useradd -m -s /bin/bash -G sudo USER2
```

```
~]$ grep -r chrony cmdref
cmdrefnet/linux/time_ntp_chrony_ptp/chrony.sh:chronyc sources
cmdrefnet/linux/time_ntp_chrony_ptp/chrony.sh:chronyc sources -v
cmdrefnet/linux/time_ntp_chrony_ptp/chrony.sh:chronyc sourcestats # check offset
cmdrefnet/linux/time_ntp_chrony_ptp/chrony.sh:chrony makestep # Correct the time
```


## My Dotfiles List

```
$ tree -a -I .git
.
├── README.md
├── cloud
│   └── aws
│       └── aws_basic.sh
├── cmdrefgrep.sh
├── cmdrefupdate.sh
├── git.sh
├── linux
│   ├── all_user_group.sh
│   ├── awk.sh
│   ├── cron.sh
│   ├── date.sh
│   ├── dig.sh
│   ├── find.sh
│   ├── network
│   │   ├── how-to-check-publick-ip.sh
│   │   ├── tcpdump.sh
│   │   └── traceroute.sh
│   ├── rsync.sh
│   ├── scp.sh
│   ├── sed.sh
│   ├── sort.sh
│   ├── ssh.sh
│   ├── tar.sh
│   └── time_ntp_chrony_ptp
│       ├── chrony.sh
│       └── ntp.sh
├── middleware
│   ├── docker.sh
│   ├── kvm.sh
│   ├── vagrant.sh
│   └── xen.sh
├── programming
│   └── shellscript.sh
└── software
    └── vim.sh

8 directories, 28 files
```


