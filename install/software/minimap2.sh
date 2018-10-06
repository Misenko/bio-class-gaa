#!/bin/bash

MINIMAP2_VERSION="2.12"

function install_minimap2 {
  wget --no-verbose https://github.com/lh3/minimap2/releases/download/v${MINIMAP2_VERSION}/minimap2-${MINIMAP2_VERSION}_x64-linux.tar.bz2 -P "${TMP_DIR}"
  tar -jxf "${TMP_DIR}/minimap2-${MINIMAP2_VERSION}_x64-linux.tar.bz2" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/minimap2-${MINIMAP2_VERSION}_x64-linux" >> "$PATH_FILE"
}
