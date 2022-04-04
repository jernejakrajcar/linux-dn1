#!/bin/bash

sudo du -smh --apparent-size --threshold=1M /home/* | sort -rh | while read line ; do
    line=${line//M/MB}
    echo ${line//\/home\//}
done

