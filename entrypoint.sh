#!/bin/bash
set -e
echo "whyyyy"

# bash -c "sql-formatter -h"
# bash -c "hello test.sql"
# for file in `find . -name '*.sql'`; do
for file in find ./ -iname '*.sql' -type f; do
    echo "running"
    hello $file
    # hello $file -o $file
done