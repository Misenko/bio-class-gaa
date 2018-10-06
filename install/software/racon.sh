#!/bin/bash

RACON_VERSION="1.3.1"

function install_racon_dependencies {
  apt-get install -y cmake
}

function install_racon {
  wget --no-verbose https://github.com/isovic/racon/releases/download/${RACON_VERSION}/racon-v${RACON_VERSION}.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/racon-v${RACON_VERSION}.tar.gz" -C "${TMP_DIR}"
  cd "${TMP_DIR}/racon-v${RACON_VERSION}/"
  mkdir build
  cd build
  cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}/racon-v${RACON_VERSION}" ..
  make -j $(nproc)
  make install
  echo "export PATH=\$PATH:${INSTALL_DIR}/racon-v${RACON_VERSION}/bin" >> "$PATH_FILE"
}
