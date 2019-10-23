#! /bin/bash

echo ""
echo "#######################################################################"
echo "#                          Start to configurate!                      #"
echo "#                                 V 1.0.0                             #"
echo "#######################################################################"
echo ""

p=${PWD}

# 转换为root用户
if [ ${UID} -eq 0 ]
then
	echo -e "修改系统配置"
	cd ${p}/system
	source changeSystem.sh
	cd ..

	echo -e "更新镜像源"
	cd ${p}/sources
	source getfastmirror.sh
	cd ..


	echo -e "安装软件"
	cd  ${p}/software
	source setup.sh
	cd ..
else
echo "must is root"
fi


