# cmdrefnet


## About cmdrefnet
This is my command cheat sheet.
See cmdref.net for more information on the command.

https://cmdref.net/


## How to use cmdrefnet

```
~]$ cd
~]$ git clone https://github.com/kuritaka/cmdrefnet
~]$ ls cmdrefnet
~]$ grep -r <KEYWORD> cmdrefnet
```

### Example
```
~]$ grep -r chrony cmdrefnet
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


