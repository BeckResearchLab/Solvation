#!/bin/bash

# this file needs better instructions
# e.g.
# git clone https://github.com/pnnl/solubility-prediction-paper
# mv solubility-prediction-paper/smi smi
# mv solubility-prediction-paper/gnn gnn
# mv solubility-prediction-paper/mdm mdm
# 

mkdir -p patches/smi patches/gnn patches/mdm

for file in `find ./pnnlsolpaper -name '*.py'`
do
	infile=`echo $file | sed "s/pnnlsolpaper//g"`
	outfile=$file
	patchfile=`echo $file |sed "s/pnnlsolpaper/patches/g"`
	diff -u $outfile $infile > $patchfile.patchfile
done
