#!/bin/bash
read -p "enter a number: " number   #提示用户输入数字
if [ -z $number ];then                         #判断用户是否输入，如果为输入则打印error
   echo "Error"
   exit
else
   jieguo=`echo "$number*1" | bc `    #把用户的输入值和1相乘，交给bc做运算
   if [ $jieguo -eq 0 ];then                   #判断计算结果是否为0，为0则说明number非数字(字符串和0相乘结果为0)
      echo "not a number"
      exit 