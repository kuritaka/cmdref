#!/bin/bash


#=====================================
#AWS Configuration
#=====================================

$ aws configure
AWS Access Key ID [None]:  xxxxxxxxxxxxx
AWS Secret Access Key [None]:  xxxxxxxxxxxxx
Default region name [None]: ap-northeast-1
Default output format [None]: json

$ aws configure --profile xxxxx


## Check
$ aws configure list
$ cat ~/.aws/credentials
$ cat ~/.aws/config


## temporarily without aws configure
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXX
export AWS_DEFUAULT_REGION=ap-northeast-1

