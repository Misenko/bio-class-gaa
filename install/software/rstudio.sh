#!/bin/bash

RSTUDIO_VERSION="1.1.456"
LOCAL_RSTUDIO_REPO="/var/local-rstudio-repo"

function add_rstudio_sources {
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
  cp ${CONF_DIR}/r.list /etc/apt/sources.list.d/

  echo "deb file:$LOCAL_RSTUDIO_REPO/ ./" > /etc/apt/sources.list.d/rstudio.list
  # Pre-fill the local repository
  wget --no-verbose https://download1.rstudio.org/rstudio-xenial-${RSTUDIO_VERSION}-amd64.deb -P "$LOCAL_RSTUDIO_REPO"
  wget --no-verbose https://download2.rstudio.org/rstudio-server-${RSTUDIO_VERSION}-amd64.deb -P "$LOCAL_RSTUDIO_REPO"
  cd "$LOCAL_RSTUDIO_REPO"
  dpkg-scanpackages . | gzip > ./Packages.gz
}

function install_rstudio {
  # Install dependencies
  apt-get -y install wget curl vim git libc6-dev cpp gcc g++ zlib1g-dev devscripts build-essential \
                         rpm2cpio cpio libgstreamer-plugins-base0.10-0 libgstreamer0.10-0 libjpeg62 \
                         liborc-0.4-0 libxslt1-dev libedit2 libcurl4-openssl-dev libcairo2-dev \
                         mesa-common-dev libxt-dev libglu1-mesa-dev apg expect imagemagick gdebi-core

  # Install R
  apt-get -y install r-base r-base-dev

  # Install RStudio
  apt-get -y --allow-unauthenticated install rstudio rstudio-server
}

function configure_rstudio {
  # Configure RServer to start in an environment without AppArmor
  echo "server-app-armor-enabled=0" >> /etc/rstudio/rserver.conf
}
