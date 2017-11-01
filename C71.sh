#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

yum install -y https://github.com/rereborn/CENTOS6-7-bbr-/blob/master/kernel7/kernel-ml-4.11.8-1.el7.elrepo.x86_64.rpm
grub2-set-default 0

sed -i '/\[main]/a\exclude=kernel*' /etc/yum.conf 

echo
read -p "Info: The system needs to be restart. Do you want to reboot? [y/n]" is_reboot
if [[ ${is_reboot} == "y" || ${is_reboot} == "Y" ]]; then
    reboot
else
    exit
fi
