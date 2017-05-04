#!/bin/bash

CHROME_VERSION=48.0.2564.109
#CHROME_VERSION=49.0.2623.75
#CHROME_VERSION=50.0.2661.75
#CHROME_VERSION=51.0.2704.84
#CHROME_VERSION=52.0.2743.116
#CHROME_VERSION=53.0.2785.116
#CHROME_VERSION=54.0.2840.71
#CHROME_VERSION=55.0.2883.75
#CHROME_VERSION=56.0.2924.87
#CHROME_VERSION=57.0.2987.133

#============================================                                                                                                     
# 下载 安装 Google Chrome                                                                                                                           
#============================================                                                                                                     
sudo wget -q http://www.slimjetbrowser.com/chrome/lnx/chrome64_${CHROME_VERSION}.deb

sudo apt-get update -y
sudo dpkg -i chrome64_${CHROME_VERSION}.deb  >/dev/null  2>&1
sudo apt-get -f install -qqy
sudo dpkg -i chrome64_${CHROME_VERSION}.deb
