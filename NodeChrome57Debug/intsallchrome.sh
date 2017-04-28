#!/bin/bash

CHROME_VERSION=57.0.2987.133
sudo dpkg -i chrome64_${CHROME_VERSION}.deb  >/dev/null  2>&1

sudo apt-get -f install -y

sudo dpkg -i chrome64_${CHROME_VERSION}.deb
