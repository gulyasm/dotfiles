#!/bin/bash

mkdir -p ~/oldfiles
for f in `find . -maxdepth 1 -type f -name '.*'`;
do
    [[ -e ${f} ]] && mv ~/${f} ~/oldfiles;
    ln --symbolic `pwd`/${f} ~/${f}
done
