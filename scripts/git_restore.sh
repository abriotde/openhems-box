#!/bin/env bash

SCRIPT_PATH=`dirname $0`
ZIP_FOLDER=$SCRIPT_PATH/../OpenHEMS-server
FCSTD_PATH="../OpenHEMS-server.FCStd"
cd $ZIP_FOLDER
ZIP_FOLDER=`pwd`
echo "Path is $ZIP_FOLDER"

cd $ZIP_FOLDER
rm -f $FCSTD_PATH
zip -r $FCSTD_PATH Document.xml
zip -r $FCSTD_PATH PartShape*.brp
zip -r $FCSTD_PATH GuiDocument.xml
zip -r $FCSTD_PATH thumbnails/Thumbnail.png
zip -r $FCSTD_PATH DiffuseColor
zip -r $FCSTD_PATH LineColorArray
zip -r $FCSTD_PATH PointColorArray
nb=`ls PointColorArray*|wc -l`
no=`expr $nb - 1`
for f in `seq 1 $no`; do
	zip -r $FCSTD_PATH LineColorArray$f
	zip -r $FCSTD_PATH PointColorArray$f
done


