#!/bin/bash

for i in `find . -name '*.c' -o -name '*.cpp' -o -name '*.h'`
do
  if ! grep -q "Author:" $i
  then
    cat author.info $i > $i.new && mv $i.new $i
  fi
done
