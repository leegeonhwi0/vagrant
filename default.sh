#!/bin/bash
sudo su -
systemctl stop firewalld
systemctl disable firewalld
setenforce 0
