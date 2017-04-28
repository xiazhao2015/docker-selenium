# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM baozhida/selenium-base:3.3.1
MAINTAINER baozihda <baozihda88@126.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

#==============
# VNC and Xvfb
#==============
RUN apt-get update -qqy \
  && apt-get -qqy install \
    xvfb \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#==============================
# Scripts to run Selenium Node
#==============================
RUN mkdir -p /opt/bin
COPY \
  entry_point.sh \
  functions.sh \
    /opt/bin/
RUN chmod +x /opt/bin/entry_point.sh

#============================
# Some configuration options
#============================
ENV SCREEN_WIDTH 1360
ENV SCREEN_HEIGHT 1020
ENV SCREEN_DEPTH 24
ENV DISPLAY :99.0


#ARG CHROME_VERSION="57.0.2987.133"
RUN wget --no-verbose -O hosts https://raw.githubusercontent.com/baozhida/docker-selenium/master/NodeChrome/hosts \
  && cp ./hosts /etc/hosts
RUN cd && wget -q http://www.slimjetbrowser.com/chrome/lnx/chrome64_57.0.2987.133.deb


USER uiauto

CMD ["/opt/bin/entry_point.sh"]
#CMD ["/bin/bash"]
