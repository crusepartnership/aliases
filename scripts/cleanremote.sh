#!/bin/bash

echo "The following branches can safely (in theory) be deleted:\n\n"
for branch in `git branch -r | grep -v HEAD | grep -v origin/master`;
do
    originlessBranch=$(echo $branch | sed 's/origin\///')
    if git diff origin/master..$branch -s --exit-code; then
        echo "git push origin --delete $originlessBranch";
    fi
done

