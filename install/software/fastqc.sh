#!/bin/bash

FASTQC_VERSION="0.11.8"

function install_fastqc {
  wget --no-verbose https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v${FASTQC_VERSION}.zip -P "${TMP_DIR}"
  unzip -q "${TMP_DIR}/fastqc_v${FASTQC_VERSION}.zip" -d "${INSTALL_DIR}"
  chmod +x "${INSTALL_DIR}/FastQC/fastqc"
  echo "export PATH=\$PATH:${INSTALL_DIR}/FastQC/" >> "${PATH_FILE}"
}
