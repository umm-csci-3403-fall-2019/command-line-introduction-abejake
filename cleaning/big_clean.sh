#!/usr/bin/env bash

tar=$1
#the name of compressed tar

scratch=$2 
#name of scratch directory

currentDir=$(pwd)

mkdir $scratch


tar -zxf $tar -C $scratch

cd $scratch
grep -rl "DELETE ME!" | xargs rm

#tar -czf "cleaned_$tar" ${1%.*}

clean_tar="cleaned_$tar"
clean_scratch=${1%.*}

tar -czf $clean_tar $clean_scratch

mv $clean_tar $currentDir


