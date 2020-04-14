#!/bin/bash

# Copy data from init folder to package folder
if [ ! -f "/usr/local/MONyog/README" ]; then cp -R /usr-start/MONyog/* /usr/local/MONyog; fi

# Execute MONyog binary
/usr/local/MONyog/bin/MONyog-bin
