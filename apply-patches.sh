#!/usr/bin/env bash

set -eou pipefail
IFS=$'\n\t'

if [[ -e src ]] ; then
    rm -rf src
fi

mkdir src
cp SDK/src/ProvidedTypes.fs{,i} src/

find src -type f -print0 | xargs -0 dos2unix -q

for x in *.patch ; do
    echo
    echo "Applying $x"
    echo
    patch -p1 -i "$x"
done
