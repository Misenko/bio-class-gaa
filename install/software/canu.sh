#!/bin/bash

CANU_VERSION="1.7.1"

function install_canu {
  wget --no-verbose https://github.com/marbl/canu/releases/download/v${CANU_VERSION}/canu-${CANU_VERSION}.Linux-amd64.tar.xz -P "${TMP_DIR}"
  tar -xf "${TMP_DIR}/canu-${CANU_VERSION}.Linux-amd64.tar.xz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/canu-${CANU_VERSION}/Linux-amd64/bin" >> "$PATH_FILE"
}
