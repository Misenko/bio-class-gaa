#!/bin/bash

function install_utils {
  apt-get install -y dpkg-dev
}

function make_tmp_dir {
  mkdir -p ${TMP_DIR}
}

function clean_tmp_dir {
  rm -rf ${TMP_DIR}
}
