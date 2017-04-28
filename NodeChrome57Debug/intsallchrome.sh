#!/bin/bash

CHROME_VERSION=57.0.2987.133

#============================================                                                                                                     
# 下载 安装 Google Chrome                                                                                                                           
#============================================                                                                                                     
wget -q http://www.slimjetbrowser.com/chrome/lnx/chrome64_${CHROME_VERSION}.deb

dpkg -i chrome64_${CHROME_VERSION}.deb  >/dev/null  2>&1

apt-get -f install -y

dpkg -i chrome64_${CHROME_VERSION}.deb
