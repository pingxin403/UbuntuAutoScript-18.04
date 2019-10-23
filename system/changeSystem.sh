#! /bin/bash

# 修改root用户密码 
#read -t 300 -e -p "Please input root password:" newPasswd
#(echo $newPasswd ;sleep 1; echo $newPasswd )|passwd 

# 新建用户，用于登陆,PATH问题
read -t 300  -p "Do you want create new user to login?(y/n):" want
if [ $want = "y" ]
then 
  read -t 300 -p "Please input new user name:" userName
  read -t 300 -p "Please input new user password:" userPwd
  read -t 300 -p "Are you sure?(y/n):" userTrue
  if [ $userTrue = "y" ]
  then 
    useradd $userName
    (echo $userPwd ;sleep 1; echo $userPwd )|passwd $userName
    usermod -G adm $userName
    usermod -G cdrom $userName
    usermod -G sudo $userName
    usermod -G dip $userName
    usermod -G plugdev $userName
    usermod -G lpadmin $userName
    sudo echo "alias sudo=\"sudo env PATH=$PATH\"" >> /home/$userName/.bashrc
  fi
fi



#ubuntu 关机时间长，卡logo
mv /etc/systemd/system.conf /etc/systemd/system.conf.backup
cp -f system.conf /etc/systemd/system.conf
systemctl reload

sudo apt install watchdog -y
sudo systemctl enable watchdog.service
sudo systemctl start watchdog.service

# 修改grup 等待时间过长,并且关闭ubuntu开关机动画
mv /etc/default/grub /etc/default/grub.backup
cp -f grub /etc/default/grub

update-grub


#开机启动项不显示问题
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop




