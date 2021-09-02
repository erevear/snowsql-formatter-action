#!/bin/bash
for file in `find . -name '*.sql'`; do
    hello $file -o $file
done