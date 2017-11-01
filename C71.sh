#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

yum install -y http://mirror.rc.usf.edu/compute_lock/elrepo/kernel/el7/x86_64/RPMS/kernel-ml-4.11.8-1.el7.elrepo.x86_64.rpm
grub2-set-default 0

sed -i '/\[main]/a\exclude=kernel*' /etc/yum.conf # ��ֹ�ں�����update�����䶯

echo
read -p "Info: The system needs to be restart. Do you want to reboot? [y/n]" is_reboot
if [[ ${is_reboot} == "y" || ${is_reboot} == "Y" ]]; then
    reboot
else
    exit
fi