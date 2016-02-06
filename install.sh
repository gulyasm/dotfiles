#!/bin/bash

mkdir -p ~/oldfiles
for f in `find . -maxdepth 1 -type f -name '.*'`;
do
    mv ~/${f} ~/oldfiles
    ln `pwd`/${f} ~/${f}
done
