#!/bin/bash

for patchfile in `find ./patches -name '*.patchfile'`
do
	cutname=${patchfile%.*}
	# echo $cutname
	file=`echo $cutname |sed "s/patches/pnnlsolpaper/g"`
	# echo $file
	# if [ ! -f $file ]; then
	# 	echo "" > $file
	# fi
	patch $file $patchfile
done
