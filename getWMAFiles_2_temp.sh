#!/bin/sh

cd ~/bjradio/

#体坛夜话
wget -qc http://res.audio.rbc.cn/tygb/ttyh/ttyh2015113021106366.wma
#广播剧场
wget -qc http://res.audio.rbc.cn/wenyi/gbjc/gbjc2015113022306510.wma
#午夜拍案惊奇
wget -qc http://res.audio.rbc.cn/mp3/wenyi/wypajq/wypajq2015113023006806.mp3

echo "Files Fetcheds 3 @ "`date`
