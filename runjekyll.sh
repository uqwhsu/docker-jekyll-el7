#!/usr/bin/env bash

set -e

INPUTDIR=${INPUTDIR:-/opt}

# Build jekyll site from $INPUTDIR 
# Serve jekyll site from /var/gopher
if [[ -d $INPUTDIR ]]
then
   cd /var/gopher
   jekyll serve -H 0.0.0.0 -P 80 --force_polling --incremental \
   build -w --force_polling --incremental --source $INPUTDIR \
   --destination /var/gopher
else
   echo "Invalid input directory"
fi
