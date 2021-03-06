#!/bin/sh

BIN_DIR=`dirname $0`
PROJECT_HOME=$BIN_DIR/..
OUT_DIR="$PROJECT_HOME/out"
DITAMAP="$PROJECT_HOME/ja/learn/admin/Admin.ditamap"

if [ -d $OUT_DIR ]
then
  echo "deleting old contents from $OUT_DIR."
  rm -rf $OUT_DIR/*
fi

echo "generating contents using $DITAMAP..."
dita -f html5 -i $DITAMAP -o $OUT_DIR

