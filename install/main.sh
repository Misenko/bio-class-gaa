#!/bin/bash

source $(dirname $0)/../common/variables.sh

for script in $(dirname $0)/software/*.sh; do
  source ${script}
done

make_tmp_dir

update_sources
install_utils
add_rstudio_sources
update_sources

install_rstudio
configure_rstudio

install_blast
install_bowtie
install_bwa
install_canu
install_cutadapt_dependencies
install_cutadapt
install_fastqc
install_fastx_dependencies
install_fastx
install_miniasm
install_minimap2
install_mira
install_racon_dependencies
install_racon
install_samtools_dependencies
install_samtools
install_soapdenovo2
install_trimmomatic

clean_tmp_dir
