#!/bin/bash  

echo ""
echo "#######################################################################"
echo "#                        INSTALL SOFTWARE                             #"
echo "#######################################################################"
echo ""


installPwd=/opt/
downloadFolder=~/Downloads
mkdir ${downloadFolder}
cd ${downloadFolder}

#add ppa
sudo apt install -y wget curl git wine64 wine32

#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2B80AC38
sleep 1
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# sleep 1
#sudo dpkg --add-architecture i386 
# sleep 1
# wget -nc https://dl.winehq.org/wine-builds/winehq.key
# sleep 1
# sudo apt-key add winehq.key
# sleep 1
# sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' -y
# sleep 1
sudo add-apt-repository 'deb http://typora.io linux/' -y
sleep 1
sudo add-apt-repository ppa:teejee2008/ppa -y
sleep 1
sudo add-apt-repository ppa:linrunner/tlp -y
sleep 1
sudo add-apt-repository ppa:peek-developers/stable -y
sleep 1
sudo apt-get update -y

sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sleep 1
sudo add-apt-repository ppa:webupd8team/atom  -y
sleep 1
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine -y
sleep 1
sudo add-apt-repository ppa:noobslab/icons -y
sleep 1
sudo add-apt-repository ppa:noobslab/themes -y
sleep 1
sudo apt-get update -y
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sleep 1
sudo add-apt-repository ppa:snwh/ppa -y
sleep 1
sudo add-apt-repository ppa:xenatt/xenlism -y 
sleep 1
sudo apt-get update -y
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sleep 1
sudo add-apt-repository ppa:kritalime/ppa -y
sleep 1
sudo add-apt-repository ppa:linuxuprising/java -y
sleep 1
sudo apt-get update -y


echo "install mysql"
cd ${downloadFolder}
wget https://repo.mysql.com//mysql-apt-config_0.8.13-1_all.deb -O mysql-apt-config.deb
sudo dpkg -i mysql-apt-config.deb
rm mysql-apt-config.deb9
sudo apt install -y mysql-server

# install oracle jdk
echo "install jdk12,如果使用jdk11，请自己安装"
#参考：https://hanyunpeng0521.github.io/2019/04/02/Java-基础-0/
#https://www.cjavapy.com/article/124/
sudo apt install oracle-java12-set-default -y
java --version
sudo echo  "export JAVA_HOME=/usr/lib/jvm/java-12-oracle" >> /etc/profile

cd ${downloadFolder}
git clone "https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git"
cd deepin-wine-\for-ubuntu
sudo ./install.sh -y
sudo apt --fix-missing install -y
cd ..
rm -rf deepin-wine-\for-ubuntu

echo "python...."
cd ${downloadFolder}
wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh -O Anaconda.sh
sudo chmod a+x Anaconda.sh
sudo ./Anaconda.sh
rm ./Anaconda.sh

#install gnome desktop
echo "install gnome shell and tweak tool，（向下滚动以选择Ubuntu desktop）"
cd ${downloadFolder}
# sudo apt-get install tasksel -y
# sudo tasksel

# update system
echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt dist-upgrade -y #系统更新


# sudo apt-get install gnome gnome-session gnome-shell  gnome-menus gnome-calendar gnome-control-center gnome-disk-utility  gnome-getting-started-docs gnome-online-accounts gnome-power-manager gnome-screenshot gnome-shell-extension-appindicator gnome-software gnome-themes-extra  gnome-software-plugin-snap gnome-user-docs-zh-hans  -y
sudo apt-get install gnome-tweak-tool nautilus gnome-terminal gnome-software-plugin-flatpak -y
sudo apt-get install gnome-shell-extensions  chrome-gnome-shell gnome-shell-extension-dashtodock -y

#美化参考:https://www.jianshu.com/p/6ef16e3b0a3e
#http://pingxin0521.coding.me/2019/04/20/Linux-Ubuntu%E9%85%8D%E7%BD%AE-1/
echo "美化参考:https://www.jianshu.com/p/6ef16e3b0a3e"

# install gnome flat remix icon

echo "install gnome flat remix icon"
sudo apt-get install flat-remix-icons flat-remix-gnome -y
sudo apt install libglib2.0-dev-bin imagemagick -y


#  Capitaine cursors
sudo apt install la-capitaine-cursor-theme -y
sudo apt-get install paper-icon-theme chrome-gnome-shell-y
sudo apt-get install xenlism-wildfire-icon-theme -y


sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf -y
wget https://github.com/vinceliuice/vimix-gtk-themes/archive/2019-05-03.tar.gz -O vimix-gtk-themes.tar.gz
tar zxf vimix-gtk-themes.tar.gz
rm vimix-gtk-themes.tar.gz
cd vimix-gtk-themes*
sudo ./Install
cd ..
rm -rf vimix-gtk-themes*

# 
wget https://github.com/vinceliuice/McMojave-circle/archive/2019_07_12.tar.gz -O McMojave.tar.gz
tar zxf McMojave.tar.gz 
rm McMojave.tar.gz
cd McMojave-circle*
sudo  ./install.sh 
cd ..
rm -rf McMojave-circle*



# install some tools:
echo "install 常用软件"
sudo apt install -y aptitude  git vim unar kolourpaint4 unzip curl gdebi fcitx-bin fcitx-table fcitx timeshift tlp tlp-rdw preload peek thunderbird thunderbird-locale-zh-cn atom  typora stacer baobab synaptic flatpak audacious krita krita-l10n gparted gcc --fix-missing

sudo apt install -y --fix-missing

sudo tlp start

sudo apt-get install -y ttf-wqy-microhei xfonts-wqy ttf-wqy-zenhei --fix-missing #文泉驿-微米黑

echo "wine..."
sudo apt install --install-recommends winehq-stable -y


cd ${downloadFolder}



wget https://download.bleachbit.org/bleachbit_2.2_all_ubuntu1804.deb -O bleachbit.deb

wget  https://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.qq.im/deepin.com.qq.im_8.9.19983deepin23_i386.deb -O qq.deb

wget https://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.cn.com.winrar/deepin.cn.com.winrar_5.3.0deepin2_i386.deb -O winrar.deb

wget https://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.baidu.pan/deepin.com.baidu.pan_5.7.3deepin0_i386.deb -O pan.deb

 

wget http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb -O sogoupinyin.deb

wget http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb -O netease-cloud-music.deb

wget https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/8722/wps-office_11.1.0.8722_amd64.deb -O wps-office.deb

wget https://vscode.cdn.azure.cn/stable/2213894ea0415ee8c85c5eea0d0ff81ecc191529/code_1.36.1-1562627527_amd64.deb -O code.deb

wget https://download.operachina.com/pub/opera/desktop/62.0.3331.99/linux/opera-stable_62.0.3331.99_amd64.deb -O opera.deb

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O teamviewer.deb

wget https://download.anydesk.com/linux/anydesk_5.1.1-1_amd64.deb -O anydesk.deb

 

wget https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-4.0.0.deb -O smartsynchronize.deb

 

sudo dpkg -i *.deb 
sudo apt -f -y install

sudo dpkg -i *.deb 
sudo apt -f -y install

sudo rm -rf *.deb




echo "构建开发环境"

echo "node ...."

sudo apt-get install -y nodejs npm --fix-missing
sudo npm config set registry http://registry.npm.taobao.org/
sudo npm install npm -g -y
sudo npm install -g n -y
sudo n stable
sudo npm install -g cnpm hexo hexo-server hexo-cli express umi create-react-app -y

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt purge cmdtest 
sudo apt-get update && sudo apt-get install yarn

# navicat

echo "navicat..."
cd ${downloadFolder}

wget http://download.navicat.com.cn/download/navicat121_premium_cs_x64.tar.gz -O navicat.tar.gz
wget http://www.navicat.com.cn/images/02.Product_00_AllProducts_Premium_large.png -O navicat.png
tar -zxf  navicat.tar.gz
rm -rf navicat.tar.gz
mv navicat.png navicat1*
mv navicat1* navicat
sudo mv navicat /opt/
sudo echo "[Desktop Entry]">> /usr/share/applications/Navicat.desktop
sudo echo "Type=Application">> /usr/share/applications/Navicat.desktop
sudo echo "Name=Navicat">> /usr/share/applications/Navicat.desktop
sudo echo "GenericName=Navicat pro">> /usr/share/applications/Navicat.desktop
sudo echo "Comment=Navicat:The SQL manager">> /usr/share/applications/Navicat.desktop
sudo echo "Exec=sh /opt/navicat/start_navicat">> /usr/share/applications/Navicat.desktop
sudo echo "Icon=/opt/navicat/navicat.png">> /usr/share/applications/Navicat.desktop
sudo echo "Terminal=navicat">> /usr/share/applications/Navicat.desktop
sudo echo "Categories=Navicat;Development;">> /usr/share/applications/Navicat.desktop




echo "install docker"
cd ${downloadFolder}
#sudo apt install -y apt-transport-https ca-certificates software-properties-common curl 
#curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu $(lsb_release -cs) stable" -y
#sudo apt update -y
#sudo apt-get install -y docker-ce
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
echo "{\"registry-mirrors\": [\"http://hub-mirror.c.163.com\"]}" |sudo tee /etc/docker/daemon.json

curl -L https://github.com/docker/machine/releases/download/v0.16.1/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

sudo apt install docker-compose -y

#sudo groupadd docker
#sudo usermod -aG docker ${username}
#newgrp docker

echo "docker nginx:8088"
sudo docker pull nginx
sudo mkdir /opt/server/nginx/ -p
sudo chmod 777 /opt/server/nginx/
sudo docker run -d --name nginx-test nginx
sudo docker cp nginx-test:/etc/nginx/   /opt/server/nginx/
sudo docker cp nginx-test:/usr/share/nginx/html   /opt/server/nginx/
sudo mv /opt/server/nginx/nginx /opt/server/nginx/conf
sudo mv /opt/server/nginx/html /opt/server/nginx/www
sudo docker rm -f nginx-test
sudo docker run -d -p 8088:80 --name nginx -v /opt/server/nginx/www:/usr/share/nginx/html -v /opt/server/nginx/conf/:/etc/nginx/:ro -v /opt/server/nginx/logs:/var/log/nginx nginx
sudo docker stop nginx

echo "docker tomcat:8098"
sudo docker pull tomcat
sudo mkdir /opt/server/tomcat/  -p
sudo chmod 777 /opt/server/tomcat/
sudo docker run -d --name tomcat-test tomcat
sudo docker cp tomcat-test:/usr/local/tomcat/conf/ /opt/server/tomcat/
sudo docker cp tomcat-test:/usr/local/tomcat/webapps/ /opt/server/tomcat/
sudo docker rm -f tomcat-test
sudo docker run -d -p 8098:8080 --name tomcat -v /opt/server/tomcat/webapps:/usr/local/tomcat/webapps -v /opt/server/tomcat/conf:/usr/local/tomcat/conf:ro -v /opt/server/tomcat/logs:/usr/local/tomcat/logs tomcat
sudo docker stop tomcat


echo "docker httpd:9000"
sudo docker pull httpd
sudo mkdir /opt/server/httpd/ -p
sudo chmod 777 /opt/server/httpd/
sudo docker run -d --name httpd-test httpd
sudo docker cp httpd-test:/usr/local/apache2/conf/ /opt/server/httpd/
sudo docker cp httpd-test:/usr/local/apache2/htdocs/ /opt/server/httpd/
sudo mv /opt/server/httpd/htdocs /opt/server/httpd/www
sudo docker rm -f httpd-test
sudo docker run -d -p 9000:80 --name httpd -v /opt/server/httpd/www:/usr/local/apache2/htdocs/ -v /opt/server/httpd/conf/:/usr/local/apache2/conf/:ro -v /opt/server/httpd/logs:/usr/local/apache2/logs/  httpd
sudo docker stop httpd

#主从：https://www.cnblogs.com/songwenjie/p/9371422.html
#https://blog.csdn.net/lynnyq/article/details/79055000
echo "docker mysql8:3306,Initialize password is 123456"
sudo docker pull mysql
sudo mkdir /opt/db/mysql/ -p
sudo chmod 777 /opt/db/mysql/
sudo docker run -d --name mysql-test -e MYSQL_ROOT_PASSWORD=123456 mysql 
sudo docker cp mysql-test:/etc/mysql/ /opt/db/mysql/
sudo mv /opt/db/mysql/mysql /opt/db/mysql/conf
sudo docker rm -f mysql-test
sudo docker run -p 3306:3306 --name mysql8 -v /opt/db/mysql/conf:/etc/mysql:ro -v /opt/db/mysql/logs:/logs -v /opt/db/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql
sudo docker stop mysql8

#进入容器
#docker exec -it mysql bash
#登录mysql
#mysql -u root -p
#ALTER USER 'root'@'localhost' IDENTIFIED BY '123456';
#添加远程登录用户
#CREATE USER 'hyp'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
#GRANT ALL PRIVILEGES ON *.* TO 'hyp'@'%';

# https://hub.docker.com/_/oracle-database-enterprise-edition
# 需要先注册并且获取此容器的content
# echo "docker oracle 12c "
# #具体的设置参考my content的oracle的setup

# sudo docker pull store/oracle/database-enterprise:12.2.0.1
# sudo mkdir /opt/db/oracle/{data} -p
# sudo chmod 777 /opt/db/oracle/
# sudo docker run --name oracle -d -v /opt/db/oracle/data:/ORCL -p 8080:8080  -p 49160:22 -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true store/oracle/database-enterprise:12.2.0.1
# sudo docker stop  oracle


echo "docker redis:6379,password 123456"
#集群:https://my.oschina.net/dslcode/blog/1936656
sudo docker pull redis
sudo mkdir /opt/db/redis/{conf,data} -p
sudo chmod 777 /opt/db/redis/
wget https://raw.githubusercontent.com/antirez/redis/4.0/redis.conf -O /opt/db/redis/conf/redis.conf
sed -i 's/logfile ""/logfile "access.log"/' /opt/db/redis/conf/redis.conf
sed -i 's/# requirepass foobared/requirepass 123456/' /opt/db/redis/conf/redis.conf
sed -i 's/appendonly no/appendonly yes/' /opt/db/redis/conf/redis.conf
sudo docker run -p 6379:6379 --name redis -v /opt/db/redis/data:/data -v /opt/db/redis/conf/redis.conf:/etc/redis/redis.conf:ro --privileged=true  -d redis redis-server /etc/redis/redis.conf 
sudo docker stop redis

#集群：https://www.jianshu.com/p/3a8c1904e807
echo "docker MongoDB:27017"
sudo docker pull mongo
sudo mkdir /opt/db/mongo/ -p
sudo chmod 777 /opt/db/mongo/
sudo docker run --name mongodb -p 27017:27017 -v /opt/db/mongo/data:/data/db -d mongo 
sudo docker stop mongodb




# fixed time zone problem
#sudo timedatectl set-local-rtc true
#sudo timedatectl set-ntp true




cd ${downloadFolder}


#maven 
echo "Maven"
cd ${downloadFolder}
sudo mkdir /opt/xauto -p
sudo chmod 777 /opt/xauto
wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz -O maven.tar.gz
tar zxf maven.tar.gz
mv apache-maven* maven
sudo mv maven /opt/xauto
sudo echo "export M2_HOME=/opt/xauto/maven" >> /etc/profile
sudo echo "export PATH=\${PATH}:\${M2_HOME}/bin" >> /etc/profile
source /etc/profile
rm *.tar.gz
mvn --version


#install intellij
#绿化链接：https://pan.baidu.com/s/15ZRaCZdQU_wzobLd5zjirg 密码：5ky3
#下载并移动到/opt/java/
#绿化过程：https://hanyunpeng0521.github.io/2019/04/02/Java-基础-0/

cd ${downloadFolder}
sudo wget -c https://download.jetbrains.com/idea/ideaIU-2018.3.6-no-jdk.tar.gz -O ideaIU.tar.gz
tar -xvzf ideaIU.tar.gz
rm ideaIU.tar.gz
mv idea-IU* idea-IU
sudo mkdir /opt/java/
sudo chmod 777 /opt/java/
sudo mv idea-IU /opt/java/
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/java/idea-IU/bin/idea.vmoptions 
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/java/idea-IU/bin/idea64.vmoptions 


#install pycharm
#绿化方法如上
cd ${downloadFolder}
sudo wget -c https://download.jetbrains.com/python/pycharm-professional-2018.3.7.tar.gz -O pycharm.tar.gz
tar -xvzf pycharm.tar.gz
rm pycharm.tar.gz
mv pycharm* pycharm
sudo mv pycharm /opt/
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/pycharm/bin/pycharm.vmoptions 
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/pycharm/bin/pycharm64.vmoptions 

#install WebStorm
#绿化方法如上
cd ${downloadFolder}
sudo wget -c https://download.jetbrains.com/webstorm/WebStorm-2018.3.6.tar.gz -O WebStorm.tar.gz
tar -xzf WebStorm.tar.gz
rm WebStorm.tar.gz
mv WebStorm* WebStorm
sudo mv WebStorm /opt/
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/WebStorm/bin/webstorm.vmoptions 
sudo echo "-javaagent:/opt/java/JetbrainsldesCrack-4.2.jar" >> /opt/WebStorm/bin/webstorm64.vmoptions 



sudo apt-get autoclean -y
sudo apt-get clean -y
sudo apt-get autoremove -y

#ubuntu开发环境一步构建
sudo apt install -y ubuntu-make

sudo apt install chromium-browser chromium-browser-l10n -y
#wechat
sudo snap install electronic-wechat
sudo apt install firefox firefox-locale-zh-hans firefox-dev -y
#视频播放器
sudo apt install vlc vlc-l10n -y
#接口测试
sudo snap install postman
#图像
sudo apt install -y gimp libreoffice -f
#音乐
#sudo snap install spotify 

#sudo snap install ao
#sudo snap install wonderwall
sudo snap install redis-desktop-manager
#snap制作
sudo apt install -y snapcraft lxd -f



sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y
sudo flatpak install flathub org.remmina.Remmina -y
#sudo flatpak install flathub com.github.calo001.fondo -y 
sudo flatpak install flathub org.gnome.Boxes -y

echo ""
echo "#######################################################################"
echo "#                          FINISH!!!!!!!!!                            #"
echo "#######################################################################"
echo ""




