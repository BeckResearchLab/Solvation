#!/bin/bash

for file in `find ./pnnlsolpaper -name '*.py'`
do
	infile=`echo $file | sed "s/pnnlsolpaper//g"`
	patchfile=`echo $file |sed "s/pnnlsolpaper/patches/g"`
	patch $file $patchfile.patchfile
done
