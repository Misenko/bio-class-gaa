#!/bin/bash

FASTA_VERSION="36.3.8g"

function install_fastqc {
  wget --no-verbose https://github.com/wrpearson/fasta36/releases/download/fasta-v${FASTA_VERSION}/fasta-${FASTA_VERSION}-linux64.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/fasta-${FASTA_VERSION}-linux64.tar.gz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/fasta-v${FASTA_VERSION}/bin" >> "$PATH_FILE"
}
