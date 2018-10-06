#!/bin/bash

function install_cutadapt_dependencies {
  apt-get install -y python{,3}-pip
}

function install_cutadapt {
  pip install --upgrade cutadapt
  pip3 install --upgrade cutadapt
}
