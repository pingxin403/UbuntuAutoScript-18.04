# UbuntuAutoScript-18.04
Linux Auto Configuration Script- Linux 软件自动安装配置脚本 ,系统版本Ubuntu 18.04

受到[UbuntuAutoScript](https://github.com/SickoOrange/UbuntuAutoScript)影响,决定自己写一个Ubuntu的自动配置脚本，避免重复配置。

```bash
$ sudo passwd root
$ su root
$ sudo bash ./run.sh 
$sudo apt install mysql
```

之后美化：http://pingxin0521.coding.me/2019/04/20/Linux-Ubuntu%E9%85%8D%E7%BD%AE-1/

### 它做了什么

#### 配置系统

1. 解决ubuntu 关机时间长，卡logo
2. 修改grup 等待时间过长,并且关闭ubuntu开关机动画
3. 新建用户，用于登陆，root 下PATH问题
4. 添加windows字体
5. 开机启动项不显示问题

#### 配置阿里镜像源

#### 安装软件

1. gnome 桌面以及美化主题：http://pingxin0521.coding.me/2019/04/20/Linux-Ubuntu%E9%85%8D%E7%BD%AE-1/

2. 常用软件

3. wine环境，qq，winrar，百度网盘

4. snap安装微信、chromium、firefox、vlc等

5. 开发环境node、navicat、Anaconda、jdk12、maven、intellij idea、pycharm、WebStorm

   绿化过程：https://hanyunpeng0521.github.io/2019/04/02/Java-基础-0/

6. docker 安装httpd、nginx、tomcat、mysql、redis、mongodb

### 参考

美化参考：http://pingxin0521.coding.me/2019/04/20/Linux-Ubuntu%E9%85%8D%E7%BD%AE-1/

https://www.jianshu.com/p/6ef16e3b0a3e

软件安装和优化参考：http://pingxin0521.coding.me/2019/04/22/Linux-Ubuntu%E9%85%8D%E7%BD%AE-2/





