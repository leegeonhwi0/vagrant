# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # dev-server 정의
  config.vm.define "dev-server" do |dev|
    dev.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    dev.vm.hostname = "dev-server"
    dev.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    dev.vm.synced_folder ".vagrant", "~/.vagrant", disabled: true
    dev.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "2"
    end
    # 자동 프로비저닝 설정
    dev.vm.provision "shell", path: "default.sh"
    dev.vm.provision "shell", path: "provision_dev.sh"
  end

  # 마스터 서버 정의
  config.vm.define "db-master" do |master|
    master.vm.box = "generic/rocky9"
    master.vm.hostname = "db-master"
    master.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "2"
    end
    # 마스터 서버용 스크립트 실행
    master.vm.provision "shell", path: "default.sh"
    master.vm.provision "shell", run: "always", inline: "echo \"10.0.0.0/16 via 192.168.0.7\" > sudo tee /etc/sysconfig/network-scripts/route-eth1"
  end

  # 슬레이브 서버 정의
  config.vm.define "db-slave" do |slave|
    slave.vm.box = "generic/rocky9"
    slave.vm.hostname = "db-slave"
    slave.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    slave.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
      vb.cpus = "2"
    end 
    # 슬레이브 서버용 스크립트 실행
    slave.vm.provision "shell", path: "default.sh"
  end
  # 쿠버네티스 컨트롤러
  config.vm.define "k8s-C1" do |k8sC1|
    k8sC1.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    k8sC1.vm.hostname = "k8sC1"
    k8sC1.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    k8sC1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "2"
    end
    # 자동 프로비저닝 설정
    k8sC1.vm.provision "shell", path: "default.sh"
  end

  config.vm.define "k8s-C2" do |k8sC2|
    k8sC2.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    k8sC2.vm.hostname = "k8sC2"
    k8sC2.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    k8sC2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "2"
    end
    # 자동 프로비저닝 설정
    k8sC2.vm.provision "shell", path: "default.sh"
  end
  
  config.vm.define "k8s-W" do |k8sW|
    k8sW.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    k8sW.vm.hostname = "k8sW"
    k8sW.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    k8sW.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "2"
    end
    # 자동 프로비저닝 설정
    k8sW.vm.provision "shell", path: "default.sh"
  end

  config.vm.define "haproxy1" do |ha1|
    ha1.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    ha1.vm.hostname = "ha1"
    ha1.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    ha1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    # 자동 프로비저닝 설정
    ha1.vm.provision "shell", path: "default.sh"
  end

  config.vm.define "haproxy2" do |ha2|
    ha2.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    ha2.vm.hostname = "ha2"
    ha2.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    ha2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    # 자동 프로비저닝 설정
    ha2.vm.provision "shell", path: "default.sh"
  end

  config.vm.define "pxe-server" do |pxe|
    pxe.vm.box = "file://C:/Users/admin/Downloads/box/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
    pxe.vm.hostname = "pxe"
    pxe.vm.network "public_network", type: "dhcp", :bridge => 'Realtek 8812BU Wireless LAN 802.11ac USB NIC'
    pxe.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    # 자동 프로비저닝 설정
    pxe.vm.provision "shell", path: "default.sh"
  end
end
