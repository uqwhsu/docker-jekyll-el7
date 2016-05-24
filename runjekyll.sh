#!/usr/bin/env bash

set -e

INPUTDIR=${INPUTDIR:-/opt}

# Serve jekyll site from /var/gopher
cd /var/gopher
jekyll serve -H 0.0.0.0 -P 80 -w &

# Build jekyll site from $INPUTDIR
if [[ -d $INPUTDIR ]]
then
   cd $INPUTDIR
   jekyll build -w --destination /var/gopher
else
   echo "Invalid input directory"
fi
