#!/bin/bash

#--------------------------------------------------------------
#下面是需要修改的参数
#
#这里填学号
id="17116210131"

#这里填密码
password="888888"

#这里填运营商(移动: yidong  联通: unicom 电信: telecom)	
isp="yidong"

#--------------------------------------------------------------
#此参数在校园网无大规模改动时,无需修改
nasip="172.168.254.100"

while true
do
    ip=$(ifconfig eth2.2 | grep "inet addr" | awk '{print $2}'|cut -c 6-);
	curl -d "DDDDD=%2C0%2C${id}%40${isp}&upass=${password}&R1=0&R2=0&R6=0&para=00&0MKKey=123456&buttonClicked=&redirect_url=&err_flag=&username=&password=&user=&cmd=&Login=" "http://172.168.254.6:801/eportal/?c=ACSetting&a=Login&protocol=http:&hostname=172.168.254.6&iTermType=2&wlanuserip=${ip}&wlanacip=${nasip}&mac=000000000000&ip=${ip}&enAdvert=0&loginMethod=1";
sleep 5;
done
