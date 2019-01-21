#! /bin/bash

# 安装cgroup程序
yum install -y libcgroup-tools.x86_64 libcgroup

# 安装测试程序
yum install -y stress

# cpu 100%打满
stress -c 1 -t 600

#使用cgroup来限制资源

# 创建cgroup的测试组
cgcreate -g cpu,cpuset,memory:my1
## 设置cgroup基本属性
cgset -r cpuset.cpus=0 my1
cgset -r cpuset.mems=0 my1

#限制cpu为50%
cgset -r cpu.cfs_period_us=100000  my1
cgset -r cpu.cfs_quota_us=50000  my1

cgexec  -g cpuset,memory,cpu:my1 stress -c 1 -t 600

