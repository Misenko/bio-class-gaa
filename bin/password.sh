#!/bin/bash

if [ "${PASSWORD}x" == "x" ]; then
  echo "Warning: user password is not set!"
else
  echo "student:${PASSWORD}" | chpasswd
fi
