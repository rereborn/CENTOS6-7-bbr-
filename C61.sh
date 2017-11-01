#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

yum install -y https://github.com/rereborn/CENTOS6-7-bbr-/blob/master/kernel6/kernel-ml-4.11.8-1.el6.elrepo.x86_64.rpm
sed -i "s/default=1/default=0/g" /boot/grub/grub.conf
sed -i '/\[main]/a\exclude=kernel*' /etc/yum.conf   # ·ÀÖ¹ÄÚºËÓÉÓÚupdate²úÉú±ä¶¯
echo
read -p "Info: The system needs to be restart. Do you want to reboot? [y/n]" is_reboot
if [[ ${is_reboot} == "y" || ${is_reboot} == "Y" ]]; then
    reboot
else
    exit
fi
