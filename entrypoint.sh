#!/bin/bash
set -e
echo --recursive $GITHUB_WORKSPACE $*
echo ${INPUT_DIRECTORY:-'.'}
# FILES=$(curl -s -X GET -G $URL | jq -r '.[] | .filename')
# bash -c "sql-formatter -h"
# bash -c "hello test.sql"
for file in `find . -name '*.sql'`; do
    echo "running"
    echo $file
    hello $file
done 

for file in `find ./ -iname '*.sql' -type f`; do
    echo "running"
    echo $file -o $file
    # hello $file -o $file
done

git status