#!/bin/bash

BOWTIE_VERSION="1.2.2"

function install_bowtie {
  wget --no-verbose https://netix.dl.sourceforge.net/project/bowtie-bio/bowtie/${BOWTIE_VERSION}/bowtie-${BOWTIE_VERSION}-linux-x86_64.zip -P "${TMP_DIR}"
  unzip -q "${TMP_DIR}/bowtie-${BOWTIE_VERSION}-linux-x86_64.zip" -d "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/bowtie-${BOWTIE_VERSION}-linux-x86_64/" >> "${PATH_FILE}"
}
