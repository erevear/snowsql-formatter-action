#!/bin/sh
set -e
echo "whyyyy"
sh -c "hello test.sql -o test.sql"
# for file in `find . -name '*.sql'`; do
#     echo 'running'
#     hello $file -o $file
# done