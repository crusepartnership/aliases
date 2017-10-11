#!/bin/bash
workspace=$1
branch=$2
cwd=$(pwd)
fetch="git fetch origin"

workingDirs="$workspace/integral
$workspace/cruse-library
$workspace/lucidity
$workspace/lucidity-library"

for dir in $workingDirs;
do
    git --git-dir=$dir/.git --work-tree=$dir fetch origin
    git --git-dir=$dir/.git --work-tree=$dir checkout $branch
    rc=$?
    if [[ $rc != 0 ]]
    then
        echo "Couldn't find $branch in $dir"
        git --git-dir=$dir/.git --work-tree=$dir checkout master
    fi
done
cd $cwd
