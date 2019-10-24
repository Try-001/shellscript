1、
#!/bin/bash
for ip in `seq $2 $3`
do
ipv4=`ping -c1 ${1}.${ip}|grep "64" | awk '{print $1}'`
if [[ $ipv4 -eq 64 ]]
then
echo "${1}.${ip} is OK!"
else
echo "${1}.${ip} is Down!" 
fi
done                                                             
#######################################################################
#   使用方法：                                                         
# ./pingtest.sh 网络位 主机位起始 主机位结束                            
# For example：                                                       
# ./ping.test.sh 192.168.1 10 20                                      
# 则：会 ping 192.168.1.10 ...到... ping 192.1681.20                   
#######################################################################  
2、
#!/bin/bash
for ip in `seq $2 $3`
do
ping -c1 ${1}.${ip} >/dev/null 2>&1
if [[ $? -eq 0 ]]
  then

echo "${1}.${ip} is OK!"
else
echo "${1}.${ip} is DOWN!"
fi
done
#######################################################################
#   使用方法：                                                      
# ./pingtest.sh 网络位 主机位起始 主机位结束                                       
# For example：                                                      
# ./ping.test.sh 192.168.1 10 20                                       
# 则：会 ping 192.168.1.10 ...到... ping 192.1681.20                   
#######################################################################  
