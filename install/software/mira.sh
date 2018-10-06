#!/bin/bash

MIRA_VERSION="4.0.2"

function install_mira {
  wget --no-verbose https://kent.dl.sourceforge.net/project/mira-assembler/MIRA/stable/mira_${MIRA_VERSION}_linux-gnu_x86_64_static.tar.bz2 -P "${TMP_DIR}"
  tar -jxf "${TMP_DIR}/mira_${MIRA_VERSION}_linux-gnu_x86_64_static.tar.bz2" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/mira_${MIRA_VERSION}_linux-gnu_x86_64_static/bin" >> "$PATH_FILE"
}
