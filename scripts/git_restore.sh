#!/bin/env bash
cd ../OpenHEMS-server
rm -f ../OpenHEMS-server.FCStd
zip -r ../OpenHEMS-server.FCStd Document.xml
zip -r ../OpenHEMS-server.FCStd PartShape*.brp
zip -r ../OpenHEMS-server.FCStd GuiDocument.xml
zip -r ../OpenHEMS-server.FCStd thumbnails/Thumbnail.png
zip -r ../OpenHEMS-server.FCStd DiffuseColor
zip -r ../OpenHEMS-server.FCStd LineColorArray
zip -r ../OpenHEMS-server.FCStd PointColorArray
nb=`ls PointColorArray*|wc -l`
no=`expr $nb - 1`
for f in `seq 1 $no`; do
	zip -r ../OpenHEMS-server.FCStd LineColorArray$f
	zip -r ../OpenHEMS-server.FCStd PointColorArray$f
done


