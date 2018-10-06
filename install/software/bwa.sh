#!/bin/bash

BWA_VERSION="0.7.17"

function install_bwa {
  wget --no-verbose https://netix.dl.sourceforge.net/project/bio-bwa/bwa-${BWA_VERSION}.tar.bz2 -P "${TMP_DIR}"
  mkdir -p "${INSTALL_DIR}/bwa-${BWA_VERSION}"
  tar -jxf "${TMP_DIR}/bwa-${BWA_VERSION}.tar.bz2" -C "${TMP_DIR}"
  cd "${TMP_DIR}/bwa-${BWA_VERSION}"
  make -j $(nproc)
  cp bwa "${INSTALL_DIR}/bwa-${BWA_VERSION}/"
  echo "export PATH=\$PATH:${INSTALL_DIR}/bwa-${BWA_VERSION}/" >> "${PATH_FILE}"
}
