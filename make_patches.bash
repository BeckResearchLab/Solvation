#!/bin/bash

# this file needs better instructions
# e.g.
# git clone https://github.com/pnnl/solubility-prediction-paper
# mv solubility-prediction-paper/smi smi
# mv solubility-prediction-paper/gnn gnn
# mv solubility-prediction-paper/mdm mdm
# 

# the modified files should be in the directories
# pnnlsolpaper/smi
# pnnlsolpaper/gnn
# pnnlsolpaper/mdm
# pnnlsolpaper/data
# the original files should be in the directory solubility-prediction-paper
# this can be obtained by 
# git clone https://github.com/pnnl/solubility-prediction-paper

mkdir -p patches/smi patches/gnn patches/mdm patches/data patches/sch

for file in `find ./pnnlsolpaper -name '*.py'`
do
	modfile=$file
	origfile=`echo $file | sed "s/pnnlsolpaper/solubility-prediction-paper/g"`
	patchfile=`echo $file |sed "s/pnnlsolpaper/patches/g"`
	#echo $origfile $modfile $patchfile.patchfile
	diff -u $origfile $modfile > $patchfile.patchfile
done
