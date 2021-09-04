#!/bin/bash
set -e
echo "whyyyy"

# bash -c "sql-formatter -h"
# bash -c "hello test.sql"
for file in `find . -name '*.sql'`; do
    echo 'running'
    hello $file
    # hello $file -o $file
done