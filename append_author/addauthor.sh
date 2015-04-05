#!/bin/bash

for i in `find . -name '*.c'` # or whatever other pattern...
do
    cat author.info $i >$i.new && mv $i.new $i
done
