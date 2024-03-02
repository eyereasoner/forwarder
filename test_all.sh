#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
NORMAL="\033[0;39m"

for f in examples/*.n3 ; do
   echo -n "$f ..."
   ./test.sh $f > $f.answer

   if [[ $(grep '.*:test.*is.*true' $f.answer) ]]; then
      echo -e "${GREEN}OK${NORMAL}"
   else
      echo -e "${RED}FAILED${NORMAL}"
   fi
done
