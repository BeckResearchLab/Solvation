#!/bin/bash

mkdir -p patches/smi patches/gnn patches/mdm

for file in `find ./pnnlsolpaper -name '*.py'`
do
	infile=`echo $file | sed "s/pnnlsolpaper//g"`
	outfile=$file
	patchfile=`echo $file |sed "s/pnnlsolpaper/patches/g"`
	diff -u $infile $outfile > $patchfile.patchfile
done
