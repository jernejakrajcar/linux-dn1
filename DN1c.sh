#!/bin/bash

grep -nr "$3" $1 --include *.$2 | while read line ; do
    echo ${line//:/ : }
done
