#!/bin/bash
set -e
echo --recursive $GITHUB_WORKSPACE $*
echo ${INPUT_DIRECTORY:-'.'}
# FILES=$(curl -s -X GET -G $URL | jq -r '.[] | .filename')
# bash -c "sql-formatter -h"
# bash -c "hello test.sql"
for file in `find . -name '*.sql'`; do
    echo "running first"
    echo $file
    hello $file -o $file
done 

for file in `find ./ -iname '*.sql' -type f`; do
    echo "running"
    echo $file -o $file
    # hello $file -o $file
done

cd ${INPUT_DIRECTORY}

# remote_repo="https://${GITHUB_ACTOR}:${INPUT_GITHUB_TOKEN}@github.com/${REPOSITORY}.git"

# git push "${remote_repo}" HEAD:${INPUT_BRANCH} --follow-tags $_FORCE_OPTION $_TAGS;