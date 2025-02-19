#!/bin/bash

for file in `find ./pnnlsolpaper -name '*.py'`
do
	patchfile=`echo $file |sed "s/pnnlsolpaper/patches/g"`
	patch $file $patchfile.patchfile
done
