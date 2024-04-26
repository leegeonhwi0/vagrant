#!/bin/bash
sudo su -
systemctl stop firewalld
systemctl disable firewalld
setenforce 0

dnf install tftp-server syslinux vsftpd -y
# tftp 설정
cp /usr/lib/systemd/system/tftp.service /etc/systemd/system/tftp-server.service
cp /usr/lib/systemd/system/tftp.socket /etc/systemd/system/tftp-server.socket
