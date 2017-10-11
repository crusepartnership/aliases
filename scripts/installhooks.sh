#!/bin/bash
workspace=$1
cwd=$(pwd)

workingDirs="$workspace/integral
$workspace/cruse-library
$workspace/lucidity
$workspace/lucidity-library"

for dir in $workingDirs;
do
    echo $dir
    cd $dir
    ./install_hooks
done
cd $cwd
