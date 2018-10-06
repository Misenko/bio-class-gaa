#!/bin/bash

function run_rstudio {
  # Start RStudio server
  echo " * Starting RStudio-server service"
  /usr/lib/rstudio-server/bin/rserver --server-daemonize 0
}
