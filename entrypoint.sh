#!/bin/bash
set -e

#use regex to look out for sql files with names that we can't handle 
#at the commandline (with parens, spaces, etc)
regex="( \(|\()"

find . -type f -name '*.sql*' -print0 | 
while IFS= read -r -d '' file; do
     if [[ $file =~ $regex ]]; then
        echo "invalid filename: " $file
    else
        printf '%s\n' "$file"
        snowsql-formatter $file -o  $file
    fi
done