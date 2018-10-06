#!/bin/bash

BLAST_VERSION="2.7.1"

function install_blast {
  wget --no-verbose ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/${BLAST_VERSION}/ncbi-blast-${BLAST_VERSION}+-x64-linux.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/ncbi-blast-${BLAST_VERSION}+-x64-linux.tar.gz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/ncbi-blast-${BLAST_VERSION}+/bin" >> "$PATH_FILE"
}
