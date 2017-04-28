#!/bin/bash

CHROME_VERSION=57.0.2987.133

#============================================                                                                                                     
# 下载 安装 Google Chrome                                                                                                                           
#============================================                                                                                                     
sudo wget -q http://www.slimjetbrowser.com/chrome/lnx/chrome64_${CHROME_VERSION}.deb

sudo apt-get update -y
sudo dpkg -i chrome64_${CHROME_VERSION}.deb  >/dev/null  2>&1
sudo apt-get -f install -y
sudo dpkg -i chrome64_${CHROME_VERSION}.deb
