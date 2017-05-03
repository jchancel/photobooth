#!/bin/bash

PHOTOBOOTH_DIR=$(dirname $0)	# Directory of this script

cd "${PHOTOBOOTH_DIR}"

if [[ $1 == "set-time" ]]; then
  sudo python set-time.py
fi

sudo python photobooth.py >>photobooth.log 2>>photobooth.err

cd -

