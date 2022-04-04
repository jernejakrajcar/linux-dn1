#!/bin/bash

for user in ${@:2}
do
    setfacl -m u:$user:r-x $1
done
