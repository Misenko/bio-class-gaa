#!/bin/bash

source $(dirname $0)/../common/variables.sh
source $(dirname $0)/password.sh
source $(dirname $0)/rstudio.sh

${BASE_BIN_DIR}/background.sh

run_rstudio
