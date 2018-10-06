#!/bin/bash

SAMTOOLS_VERSION="1.6"
SAMTOOLS_SOFTWARE="htslib samtools bcftools"

function install_samtools_dependencies {
  apt-get install -y bzip2 libbz2-dev liblzma-dev libcurl4-openssl-dev libncurses-dev
}

function install_samtools {
  for software in ${SAMTOOLS_SOFTWARE}; do
    wget --no-verbose https://github.com/samtools/${software}/releases/download/${SAMTOOLS_VERSION}/${software}-${SAMTOOLS_VERSION}.tar.bz2 -P "${TMP_DIR}"
    tar -jxf "${TMP_DIR}/${software}-${SAMTOOLS_VERSION}.tar.bz2" -C "${TMP_DIR}"
    cd "${TMP_DIR}/${software}-${SAMTOOLS_VERSION}"
    ./configure --prefix "${INSTALL_DIR}/${software}-${SAMTOOLS_VERSION}"
    make -j $(nproc)
    make install
    echo "export PATH=\$PATH:${INSTALL_DIR}/${software}-${SAMTOOLS_VERSION}/bin" >> "$PATH_FILE"
  done
}
