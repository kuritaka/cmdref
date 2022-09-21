# cmdref


## About cmdref
This is my command cheat sheet.
See cmdref.net for more information on the command.

https://cmdref.net/

### Example

```
~]$ cmdref-grep useradd
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
~]$ alias cmdref-grep="~/cmdref/cmdref-grep.sh" >> ~/.bashrc
#Using zsh
~]$ alias cmdref-grep="~/cmdref/cmdref-grep.sh" >> ~/.zshrc
```

### Execute
```
~]$ grep_cmdref <KEYWORD>
```

```
#more detail
~]$ view /xxxx/xxxx/xxxx/file
```


## How to use cmdref temporarily

### Prepare
```
~]$ cd
~]$ git clone https://github.com/kuritaka/cmdref
~]$ cd cmdref
~]$ chmod 755 *.sh
```

### Execute
```
~]$ ./grep_cmdref.sh <KEYWORD>
```

more detail
```
~]$ view /xxxx/xxxx/xxxx/file
```


### Example

```
~]$ cmdref-grep useradd
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
├── cd.sh
├── cmdrefnet_update.sh
├── git.sh
├── linux
│   ├── allcommand_user_group.sh
│   ├── date.sh
│   ├── dig.sh
│   ├── network
│   │   └── tcpdump.sh
│   └── time_ntp_chrony_ptp
│       ├── chrony.sh
│       └── ntp.sh
├── programming
│   └── shellscript.sh
├── ssh.sh
├── vagrant.sh
└── vim.sh

4 directories, 14 files
```


