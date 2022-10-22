#!/bin/bash

command=""
os=$(cat /etc/os-release | grep -i ^id= | awk -F "=" '{print $2}')  
echo $os
if [ $os == "ubuntu" ] 
then 
    command="apt install -y"
elif [ $os == "alpine" ]
then 
    command="apk add -f"
else
    command="yum install -y"
fi

sudo $command wget net-utils sysstat finger gcc make python3 epel-release git

echo "Installation complete"
