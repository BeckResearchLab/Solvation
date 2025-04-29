#!/bin/bash

mkdir -p patches/smi patches/gnn patches/mdm patches/data

for file in `find ./src \( -name '*.py' -o -name '*.ipynb' \) -not -path "*/.ipynb_checkpoints/*"`
do
	outfile=`echo $file | sed "s/src/pnnlsolpaper/g"`
	infile=$file
	patchfile=`echo $file |sed "s/src/patches/g"`
	diff -u -N $outfile $infile > $patchfile.patchfile
done
