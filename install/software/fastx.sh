#!/bin/bash

FASTX_VERSION="0.0.14"

function install_fastx_dependencies {
  apt-get install -y pkg-config libgtextutils-dev
}

function install_fastx {
  wget --no-verbose https://github.com/agordon/fastx_toolkit/releases/download/${FASTX_VERSION}/fastx_toolkit-${FASTX_VERSION}.tar.bz2 -P "${TMP_DIR}"
  tar -jxf "${TMP_DIR}/fastx_toolkit-${FASTX_VERSION}.tar.bz2" -C "${TMP_DIR}"
  cd "${TMP_DIR}/fastx_toolkit-${FASTX_VERSION}"
  ./configure --prefix "${INSTALL_DIR}/fastx_toolkit-${FASTX_VERSION}"
  make -j $(nproc)
  make install
  echo "export PATH=\$PATH:${INSTALL_DIR}/fastx_toolkit-${FASTX_VERSION}/bin" >> "$PATH_FILE"
}
