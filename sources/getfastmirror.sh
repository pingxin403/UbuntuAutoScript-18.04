#!/bin/bash

#Program:
#    This program gets the fastest ubuntu software sources from SOURCES_MIRRORS_FILE
#    and backup && update /etc/apt/sources.list



VERSION="Bionic" #18.04 LTS,please change to your system version
TEST_NETCONNECT_HOST="www.baidu.com"

function get_ping_speed()    #return average ping $1 time
{
    local speed=`ping -W1 -c1 $1 2> /dev/null | grep "^rtt" |  cut -d '/' -f5`
    echo $speed
}


function backup_sources()
{
    echo -e "Backup your sources.list.n"
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.`date +%F`
}

function update_sources()
{
    
    local mirror="$1"
    local tmp=sources.list


    sudo cp -f "$tmp" /etc/apt/sources.list
    echo -e "Your sources has been updated, and maybe you want to run "sudo apt-get update" now.";
    sleep 3
    echo "update sources"
    sudo apt-get update -y 
}


echo -e "nTesting the network connection.nPlease wait... "

if [ "$(get_ping_speed $TEST_NETCONNECT_HOST)" == "" ]; then
    echo -e "Network is bad.Please check your network."; exit 1
else
    echo -e "Network is good."

        backup_sources
        update_sources $fast_mirror

fi

