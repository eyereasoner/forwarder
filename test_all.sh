#!/bin/bash

for f in examples/*.n3 ; do
   echo "$f ..."
   ./test.sh $f > $f.answer
done
