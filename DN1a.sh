#!/bin/bash

echo "datoteke: $(expr $(find $1 -type f | wc -l) - $(find $1 -name ".*" | wc -l))"
echo "skrite: $(find $1 -name ".*" | wc -l)"
echo "mehke povezave: $(find $1 -type l | wc -l)"
echo "trde povezave: $(expr $(find $1 -links +1 | wc -l) - 1)"
echo "cevovodi: $(find $1 -type p | wc -l)"
echo "imeniki: $(expr $(find $1 -type d | wc -l) - 1)"
