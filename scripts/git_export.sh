#!/bin/env bash

SCRIPT_PATH=`dirname $0`
ZIP_FOLDER=$SCRIPT_PATH/../OpenHEMS-server
FCSTD_PATH="../OpenHEMS-server.FCStd"
cd $ZIP_FOLDER
ZIP_FOLDER=`pwd`
echo "Path is $ZIP_FOLDER"
unzip $FCSTD_PATH

