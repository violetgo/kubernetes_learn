#! /bin/bash

# 安装 lxc 组件
yum -y install lxc lxc-templates lxc-extra bridge-utils lxc-libs libcgroup libvirt

# 启动lxc服务
systemctl start lxc

# 检查服务状态
systemctl status lxc

# 启动虚拟网卡服务
systemctl start libvirtd

# 检查环境是否安装ok
lxc-checkconfig

# 检查桥接网卡是否正常
brctl show

# 以centos为模板创建明教vm01的lxc容器
lxc-create -n vm01 -t centos

# 查看默认的密码
cat /var/lib/lxc/vm01/tmp_root_pass

lxc-start -n vm01
