@echo off

::获取gateway
for /f "tokens=15" %%g in ('ipconfig ^|findstr 默认网关') do set gate=%%g

::获取IP
for /f "tokens=16" %%i in ('ipconfig ^|findstr IPv4') do set ip=%%i
	
::这里填学号
set id=

::这里填密码
set password=

::这里填运营商(移动: yidong  联通: unicom 电信: telecom)
set isp=

::参数中带有DOS认定为参数的字符, 使用此条命令规避,勿修改
set trans=%%2C1%%
set trans2=%%40%

::校园区登陆
if "%gate%"=="172.18.0.1" (curl -d "DDDDD=%trans%2C%id%%isp%&upass=%password%&R1=0&R2=0&R3=0&R6=1&para=00&0MKKey=123456&buttonClicked=&redirect_url=&err_flag=&username=&password=&user=&cmd=&Login=" "http://172.168.254.4:801/eportal/?c=ACSetting&a=Login&protocol=http:&hostname=172.168.254.4&iTermType=2&wlanuserip=%ip%&wlanacip=172.168.254.99&mac=00-00-00-00-00-00&ip=%ip%&enAdvert=0&queryACIP=0&loginMethod=1";) else (echo 非校园区)

::宿舍区登陆
if "%gate%"=="172.19.0.1" (curl -d "DDDDD=%trans%2C%id%%trans2%%isp%&upass=%password%&R1=0&R2=0&R3=0&R6=1&para=00&0MKKey=123456&buttonClicked=&redirect_url=&err_flag=&username=&password=&user=&cmd=&Login=" "http://172.168.254.6:801/eportal/?c=ACSetting&a=Login&protocol=http:&hostname=172.168.254.6&iTermType=2&wlanuserip=%ip%&wlanacip=172.168.254.100&mac=00-00-00-00-00-00&ip=%ip%&enAdvert=0&queryACIP=0&loginMethod=1";) else (echo 非宿舍区)

pause


